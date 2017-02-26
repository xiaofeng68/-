package com.thinkgem.jeesite.modules.tran.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.service.CrudService;
import com.thinkgem.jeesite.modules.tran.entity.CourseVideo;
import com.thinkgem.jeesite.modules.tran.dao.CourseVideoDao;

/**
 * 视频管理Service
 * @author 小风
 * @version 2017-02-25
 */
@Service
@Transactional(readOnly = true)
public class CourseVideoService extends CrudService<CourseVideoDao, CourseVideo> {

	public CourseVideo get(String id) {
		return super.get(id);
	}
	
	public List<CourseVideo> findList(CourseVideo courseVideo) {
		return super.findList(courseVideo);
	}
	
	public Page<CourseVideo> findPage(Page<CourseVideo> page, CourseVideo courseVideo) {
		return super.findPage(page, courseVideo);
	}
	
	@Transactional(readOnly = false)
	public void save(CourseVideo courseVideo) {
		super.save(courseVideo);
	}
	
	@Transactional(readOnly = false)
	public void delete(CourseVideo courseVideo) {
		super.delete(courseVideo);
	}
	
}