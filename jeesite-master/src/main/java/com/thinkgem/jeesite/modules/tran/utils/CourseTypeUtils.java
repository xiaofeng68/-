package com.thinkgem.jeesite.modules.tran.utils;

import java.util.List;

import com.thinkgem.jeesite.common.utils.CacheUtils;
import com.thinkgem.jeesite.common.utils.SpringContextHolder;
import com.thinkgem.jeesite.modules.tran.dao.CourseTypeDao;
import com.thinkgem.jeesite.modules.tran.dao.TeacherDao;
import com.thinkgem.jeesite.modules.tran.entity.CourseType;
import com.thinkgem.jeesite.modules.tran.entity.Teacher;

/**
 * 课程类型获取工具类
 * @author ThinkGem
 * @version 2013-5-29
 */
public class CourseTypeUtils {
	
	private static CourseTypeDao courseTypeDao = SpringContextHolder.getBean(CourseTypeDao.class);
	private static TeacherDao teacherDao = SpringContextHolder.getBean(TeacherDao.class);

	public static final String CACHE_TRAIN_MAP = "courseTypeMap";
	
	@SuppressWarnings("unchecked")
    public static List<CourseType> getCourseTypes(String id){
	    List<CourseType> list = (List<CourseType>) CacheUtils.get(CACHE_TRAIN_MAP+":p:"+id);
	    if(list==null){
    	    CourseType courseType = new CourseType();
    	    CourseType parent = new CourseType();
    	    parent.setId(id);
    	    courseType.setParent(parent);
    		list = courseTypeDao.findList(courseType);
    		CacheUtils.put(CACHE_TRAIN_MAP+":p:"+id, list);
	    }
	    return list;
	}
    public static CourseType getCourseTypeById(String id){
        CourseType courseType = (CourseType) CacheUtils.get(CACHE_TRAIN_MAP+":"+id);
        if(courseType==null){
            courseType = courseTypeDao.get(id);
            CacheUtils.put(CACHE_TRAIN_MAP+":"+id, courseType);
        }
        return courseType;
    }
    @SuppressWarnings("unchecked")
    public static List<Teacher> getTeacherByCourseType(String courseTypeId){
        List<Teacher> list = (List<Teacher>) CacheUtils.get(CACHE_TRAIN_MAP+":type:"+courseTypeId);
        if(list==null){
            Teacher teacher = new Teacher();
            list = teacherDao.findList(teacher);
            CacheUtils.put(CACHE_TRAIN_MAP+":type:"+courseTypeId, list);
        }
        return list;
    }
	public static void clearCache(CourseType courseType){
	    CacheUtils.remove(CACHE_TRAIN_MAP+":"+courseType.getId());
	    CacheUtils.remove(CACHE_TRAIN_MAP+":p:"+courseType.getParentId());
	    CacheUtils.remove(CACHE_TRAIN_MAP+":type:"+courseType.getId());
	}
}
