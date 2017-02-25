package com.thinkgem.jeesite.modules.tran.utils;

import java.util.List;

import com.thinkgem.jeesite.common.utils.CacheUtils;
import com.thinkgem.jeesite.common.utils.SpringContextHolder;
import com.thinkgem.jeesite.modules.tran.dao.TeacherDao;
import com.thinkgem.jeesite.modules.tran.entity.Teacher;

public class TeacherUtils {
    private static TeacherDao teacherDao = SpringContextHolder.getBean(TeacherDao.class);

    public static final String CACHE_TRAIN_MAP = "teacherMap";
    
    
    public static Teacher getTeacher(String id){
        Teacher teacher =  (Teacher) CacheUtils.get(CACHE_TRAIN_MAP+":"+id);
        if(teacher==null){
            teacher = teacherDao.get(id);
            CacheUtils.put(CACHE_TRAIN_MAP+":"+id, teacher);
        }
        return teacher;
    }
    @SuppressWarnings("unchecked")
    public static List<Teacher> getTeacherList(String type){
        List<Teacher> list = (List<Teacher>) CacheUtils.get(CACHE_TRAIN_MAP+":code:"+type);
        if(list==null){
            Teacher teacher = new Teacher();
            list = teacherDao.findList(teacher);
            CacheUtils.put(CACHE_TRAIN_MAP+":code:"+type, list);
        }
        return list;
    }
    public static void clearCache(Teacher teacher){
        CacheUtils.remove(CACHE_TRAIN_MAP+":"+teacher.getId());
        CacheUtils.remove(CACHE_TRAIN_MAP+":code:");
    }
}
