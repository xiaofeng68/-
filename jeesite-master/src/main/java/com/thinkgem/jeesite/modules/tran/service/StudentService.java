package com.thinkgem.jeesite.modules.tran.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.service.CrudService;
import com.thinkgem.jeesite.modules.tran.entity.Student;
import com.thinkgem.jeesite.modules.tran.dao.StudentDao;

/**
 * 学员信息Service
 * @author 小风
 * @version 2017-03-04
 */
@Service
@Transactional(readOnly = true)
public class StudentService extends CrudService<StudentDao, Student> {

	public Student get(String id) {
		return super.get(id);
	}
	
	public List<Student> findList(Student student) {
		return super.findList(student);
	}
	
	public Page<Student> findPage(Page<Student> page, Student student) {
		return super.findPage(page, student);
	}
	
	@Transactional(readOnly = false)
	public void save(Student student) {
		super.save(student);
	}
	
	@Transactional(readOnly = false)
	public void delete(Student student) {
		super.delete(student);
	}
	public int hasPhone(String phone){
	    return dao.hasPhone(phone);
	}
	public Student getPhone(String phone){
	    return dao.getByPhone(phone);
	}
}