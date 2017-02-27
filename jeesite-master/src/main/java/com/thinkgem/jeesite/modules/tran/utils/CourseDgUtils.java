package com.thinkgem.jeesite.modules.tran.utils;

import java.util.List;

import com.thinkgem.jeesite.common.utils.CacheUtils;
import com.thinkgem.jeesite.common.utils.SpringContextHolder;
import com.thinkgem.jeesite.modules.tran.dao.CourseDgDao;
import com.thinkgem.jeesite.modules.tran.entity.Course;
import com.thinkgem.jeesite.modules.tran.entity.CourseDg;

public class CourseDgUtils {
    private static CourseDgDao courseDgDao = SpringContextHolder.getBean(CourseDgDao.class);

    public static final String CACHE_TRAIN_MAP = "courseDgMap";
    
    
    @SuppressWarnings("unchecked")
    public static List<CourseDg> getCourseDgs(String courseId,String type,String level){
        List<CourseDg> list = (List<CourseDg>) CacheUtils.get(CACHE_TRAIN_MAP+":"+courseId+":"+type+":"+level);
        if(list==null){
            CourseDg courseDg = new CourseDg();
            Course course = new Course();
            course.setId(courseId);
            courseDg.setCourse(course);
            courseDg.setContype(type);
            courseDg.setLevel(level);
            list = courseDgDao.findList(courseDg);
            CacheUtils.put(CACHE_TRAIN_MAP+":"+courseId+":"+type+":"+level, list);
        }
        return list;
    }
    @SuppressWarnings("unchecked")
    public static List<CourseDg> getCourseDgsByParent(String parentId){
        List<CourseDg> list = (List<CourseDg>) CacheUtils.get(CACHE_TRAIN_MAP+":parent:"+parentId);
        if(list==null){
            CourseDg courseDg = new CourseDg();
            CourseDg parent = new CourseDg();
            parent.setId(parentId);
            courseDg.setParent(parent);
            list = courseDgDao.findList(courseDg);
            CacheUtils.put(CACHE_TRAIN_MAP+":parent:"+parentId, list);
        }
        return list;
    }
    public static void clearCache(CourseDg courseDg){
        CacheUtils.remove(CACHE_TRAIN_MAP+":"+courseDg.getCourse().getId()+":"+courseDg.getContype()+":"+courseDg.getLevel());
        CacheUtils.remove(CACHE_TRAIN_MAP+":parent:"+courseDg.getParentId());
    }
}
