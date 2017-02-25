/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.tran.web;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import com.thinkgem.jeesite.common.config.Global;
import com.thinkgem.jeesite.common.web.BaseController;
import com.thinkgem.jeesite.common.utils.StringUtils;
import com.thinkgem.jeesite.modules.tran.entity.CourseType;
import com.thinkgem.jeesite.modules.tran.service.CourseTypeService;

/**
 * 课程类型管理Controller
 * @author 小风
 * @version 2017-02-24
 */
@Controller
@RequestMapping(value = "${adminPath}/tran/courseType")
public class CourseTypeController extends BaseController {

	@Autowired
	private CourseTypeService courseTypeService;
	
	@ModelAttribute
	public CourseType get(@RequestParam(required=false) String id) {
		CourseType entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = courseTypeService.get(id);
		}
		if (entity == null){
			entity = new CourseType();
		}
		return entity;
	}
	
	@RequiresPermissions("tran:courseType:view")
	@RequestMapping(value = {"list", ""})
	public String list(CourseType courseType, HttpServletRequest request, HttpServletResponse response, Model model) {
		List<CourseType> list = courseTypeService.findList(courseType); 
		model.addAttribute("list", list);
		return "modules/tran/courseTypeList";
	}

	@RequiresPermissions("tran:courseType:view")
	@RequestMapping(value = "form")
	public String form(CourseType courseType, Model model) {
		if (courseType.getParent()!=null && StringUtils.isNotBlank(courseType.getParent().getId())){
			courseType.setParent(courseTypeService.get(courseType.getParent().getId()));
			// 获取排序号，最末节点排序号+30
			if (StringUtils.isBlank(courseType.getId())){
				CourseType courseTypeChild = new CourseType();
				courseTypeChild.setParent(new CourseType(courseType.getParent().getId()));
				List<CourseType> list = courseTypeService.findList(courseType); 
				if (list.size() > 0){
					courseType.setSort(list.get(list.size()-1).getSort());
					if (courseType.getSort() != null){
						courseType.setSort(courseType.getSort() + 30);
					}
				}
			}
		}
		if (courseType.getSort() == null){
			courseType.setSort(30);
		}
		model.addAttribute("courseType", courseType);
		return "modules/tran/courseTypeForm";
	}

	@RequiresPermissions("tran:courseType:edit")
	@RequestMapping(value = "save")
	public String save(CourseType courseType, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, courseType)){
			return form(courseType, model);
		}
		courseTypeService.save(courseType);
		addMessage(redirectAttributes, "保存课程类型成功");
		return "redirect:"+Global.getAdminPath()+"/tran/courseType/?repage";
	}
	
	@RequiresPermissions("tran:courseType:edit")
	@RequestMapping(value = "delete")
	public String delete(CourseType courseType, RedirectAttributes redirectAttributes) {
		courseTypeService.delete(courseType);
		addMessage(redirectAttributes, "删除课程类型成功");
		return "redirect:"+Global.getAdminPath()+"/tran/courseType/?repage";
	}

	@ResponseBody
	@RequestMapping(value = "treeData")
	public List<Map<String, Object>> treeData(HttpServletResponse response) {
		List<Map<String, Object>> mapList = Lists.newArrayList();
		List<CourseType> list = courseTypeService.findList(new CourseType());
		for (int i=0; i<list.size(); i++){
			CourseType e = list.get(i);
			Map<String, Object> map = Maps.newHashMap();
			map.put("id", e.getId());
			map.put("pId", e.getParentId());
			map.put("name", e.getName());
			mapList.add(map);
		}
		return mapList;
	}
	
}