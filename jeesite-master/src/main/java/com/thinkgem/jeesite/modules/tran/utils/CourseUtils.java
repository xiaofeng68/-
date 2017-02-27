package com.thinkgem.jeesite.modules.tran.utils;

import java.util.List;

import com.thinkgem.jeesite.common.utils.CacheUtils;
import com.thinkgem.jeesite.common.utils.SpringContextHolder;
import com.thinkgem.jeesite.modules.tran.dao.CourseDao;
import com.thinkgem.jeesite.modules.tran.dao.TeacherDao;
import com.thinkgem.jeesite.modules.tran.entity.Course;
import com.thinkgem.jeesite.modules.tran.entity.CourseType;
import com.thinkgem.jeesite.modules.tran.entity.Teacher;

/**
 * 课程获取工具类
 * @author ThinkGem
 * @version 2013-5-29
 */
public class CourseUtils {
	
	private static CourseDao courseDao = SpringContextHolder.getBean(CourseDao.class);
	private static TeacherDao teacherDao = SpringContextHolder.getBean(TeacherDao.class);

	public static final String CACHE_TRAIN_MAP = "courseMap";
	
	@SuppressWarnings("unchecked")
    public static List<Course> getCourses(String id,String contype){
	    List<Course> list = (List<Course>) CacheUtils.get(CACHE_TRAIN_MAP+":"+id+":"+contype);
	    if(list==null){
    	    Course course = new Course();
    	    CourseType courseType = new CourseType();
    	    courseType.setId(id);
    	    course.setCourseType(courseType);
    	    course.setContype(contype);
    		list = courseDao.findList(course);
    		CacheUtils.put(CACHE_TRAIN_MAP+":"+id+":"+contype, list);
	    }
	    return list;
	}
	@SuppressWarnings("unchecked")
    public static List<Course> getAllCourses(){
        List<Course> list = (List<Course>) CacheUtils.get(CACHE_TRAIN_MAP);
        if(list==null){
            Course course = new Course();
            list = courseDao.findList(course);
            CacheUtils.put(CACHE_TRAIN_MAP, list);
        }
        return list;
    }
	public static Course getCourseById(String id){
	    Course course = (Course) CacheUtils.get(CACHE_TRAIN_MAP+":"+id);
	    if(course==null){
	        course = courseDao.get(id);
	        CacheUtils.put(CACHE_TRAIN_MAP+":"+id, course);
	    }
	    return course;
	}
	@SuppressWarnings("unchecked")
    public static List<Teacher> getTeacherByCourse(String id){
        List<Teacher> list = (List<Teacher>)CacheUtils.get(CACHE_TRAIN_MAP+":teacher:"+id);
        if(list==null){
            list = teacherDao.findTeacherByCourse(id);
            CacheUtils.put(CACHE_TRAIN_MAP+":teacher:"+id, list);
        }
        return list;
    }
	public static void clearCache(Course course){
	    CacheUtils.remove(CACHE_TRAIN_MAP+":teacher:"+course.getId());
	    CacheUtils.remove(CACHE_TRAIN_MAP+":"+course.getId());
	    CacheUtils.remove(CACHE_TRAIN_MAP+":"+course.getCourseType().getId()+":"+course.getContype());
	    CacheUtils.remove(CACHE_TRAIN_MAP);
	}
}
