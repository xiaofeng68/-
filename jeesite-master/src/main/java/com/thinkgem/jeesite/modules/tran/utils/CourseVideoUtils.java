package com.thinkgem.jeesite.modules.tran.utils;

import java.util.List;

import com.thinkgem.jeesite.common.utils.CacheUtils;
import com.thinkgem.jeesite.common.utils.SpringContextHolder;
import com.thinkgem.jeesite.modules.tran.dao.CourseVideoDao;
import com.thinkgem.jeesite.modules.tran.entity.Course;
import com.thinkgem.jeesite.modules.tran.entity.CourseVideo;

/**
 * 视频获取工具类
 * @author ThinkGem
 * @version 2013-5-29
 */
public class CourseVideoUtils {
	
	private static CourseVideoDao courseVideoDao = SpringContextHolder.getBean(CourseVideoDao.class);

	public static final String CACHE_TRAIN_MAP = "courseVideoMap";
	
	@SuppressWarnings("unchecked")
    public static List<CourseVideo> getCourseVideos(String courseid){
	    List<CourseVideo> list = (List<CourseVideo>) CacheUtils.get(CACHE_TRAIN_MAP+":course:"+courseid);
	    if(list==null){
    	    CourseVideo courseVideo = new CourseVideo();
    	    Course course = new Course();
    	    course.setId(courseid);
    	    courseVideo.setCourse(course);
    		list = courseVideoDao.findList(courseVideo);
    		CacheUtils.put(CACHE_TRAIN_MAP+":course:"+courseid, list);
	    }
	    return list;
	}
	public static void clearCache(CourseVideo courseVideo){
	    CacheUtils.remove(CACHE_TRAIN_MAP+":course:"+courseVideo.getCourse().getId());
	}
}
