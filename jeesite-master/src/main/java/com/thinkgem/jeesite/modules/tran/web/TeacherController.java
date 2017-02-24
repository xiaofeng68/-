/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.tran.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.thinkgem.jeesite.common.config.Global;
import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.utils.StringUtils;
import com.thinkgem.jeesite.common.web.BaseController;
import com.thinkgem.jeesite.modules.tran.entity.Teacher;
import com.thinkgem.jeesite.modules.tran.service.TeacherService;

/**
 * 讲师管理Controller
 * @author 小风
 * @version 2017-02-24
 */
@Controller
@RequestMapping(value = "${adminPath}/tran/teacher")
public class TeacherController extends BaseController {

	@Autowired
	private TeacherService teacherService;
	
	@ModelAttribute
	public Teacher get(@RequestParam(required=false) String id) {
		Teacher entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = teacherService.get(id);
		}
		if (entity == null){
			entity = new Teacher();
		}
		return entity;
	}
	
	@RequiresPermissions("tran:teacher:view")
	@RequestMapping(value = {"list", ""})
	public String list(Teacher teacher, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<Teacher> page = teacherService.findPage(new Page<Teacher>(request, response), teacher); 
		model.addAttribute("page", page);
		return "modules/tran/teacherList";
	}

	@RequiresPermissions("tran:teacher:view")
	@RequestMapping(value = "form")
	public String form(Teacher teacher, Model model) {
		model.addAttribute("teacher", teacher);
		return "modules/tran/teacherForm";
	}

	@RequiresPermissions("tran:teacher:edit")
	@RequestMapping(value = "save")
	public String save(Teacher teacher, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, teacher)){
			return form(teacher, model);
		}
		teacherService.save(teacher);
		addMessage(redirectAttributes, "保存讲师成功");
		return "redirect:"+Global.getAdminPath()+"/tran/teacher/?repage";
	}
	
	@RequiresPermissions("tran:teacher:edit")
	@RequestMapping(value = "delete")
	public String delete(Teacher teacher, RedirectAttributes redirectAttributes) {
		teacherService.delete(teacher);
		addMessage(redirectAttributes, "删除讲师成功");
		return "redirect:"+Global.getAdminPath()+"/tran/teacher/?repage";
	}
	/**
     * 批量修改讲师排序
     */
    @RequiresPermissions("tran:teacher:edit")
    @RequestMapping(value = "updateSort")
    public String updateSort(String[] ids, Integer[] sorts, RedirectAttributes redirectAttributes) {
        int len = ids.length;
        Teacher[] entitys = new Teacher[len];
        for (int i = 0; i < len; i++) {
            entitys[i] = teacherService.get(ids[i]);
            entitys[i].setSort(sorts[i]);
            teacherService.save(entitys[i]);
        }
        addMessage(redirectAttributes, "保存讲师排序成功!");
        return "redirect:"+Global.getAdminPath()+"/tran/teacher/?repage";
    }
}