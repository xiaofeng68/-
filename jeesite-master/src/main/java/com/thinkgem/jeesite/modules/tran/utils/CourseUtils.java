package com.thinkgem.jeesite.modules.tran.utils;

import java.util.List;

import com.thinkgem.jeesite.common.utils.CacheUtils;
import com.thinkgem.jeesite.common.utils.SpringContextHolder;
import com.thinkgem.jeesite.modules.tran.dao.CourseDao;
import com.thinkgem.jeesite.modules.tran.entity.Course;
import com.thinkgem.jeesite.modules.tran.entity.CourseType;

/**
 * 课程获取工具类
 * @author ThinkGem
 * @version 2013-5-29
 */
public class CourseUtils {
	
	private static CourseDao courseDao = SpringContextHolder.getBean(CourseDao.class);

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
	public static void clearCache(Course course){
	    CacheUtils.remove(CACHE_TRAIN_MAP+":"+course.getCourseType().getId()+":"+course.getContype());
	}
}
