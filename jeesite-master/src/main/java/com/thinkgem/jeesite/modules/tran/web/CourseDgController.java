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
import com.thinkgem.jeesite.modules.tran.entity.CourseDg;
import com.thinkgem.jeesite.modules.tran.service.CourseDgService;

/**
 * 课程大纲Controller
 * @author 小风
 * @version 2017-02-25
 */
@Controller
@RequestMapping(value = "${adminPath}/tran/courseDg")
public class CourseDgController extends BaseController {

	@Autowired
	private CourseDgService courseDgService;
	
	@ModelAttribute
	public CourseDg get(@RequestParam(required=false) String id) {
		CourseDg entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = courseDgService.get(id);
		}
		if (entity == null){
			entity = new CourseDg();
		}
		return entity;
	}
	
	@RequiresPermissions("tran:courseDg:view")
	@RequestMapping(value = {"list", ""})
	public String list(CourseDg courseDg, HttpServletRequest request, HttpServletResponse response, Model model) {
		List<CourseDg> list = courseDgService.findList(courseDg); 
		model.addAttribute("list", list);
		return "modules/tran/courseDgList";
	}

	@RequiresPermissions("tran:courseDg:view")
	@RequestMapping(value = "form")
	public String form(CourseDg courseDg, Model model) {
		if (courseDg.getParent()!=null && StringUtils.isNotBlank(courseDg.getParent().getId())){
			courseDg.setParent(courseDgService.get(courseDg.getParent().getId()));
			// 获取排序号，最末节点排序号+30
			if (StringUtils.isBlank(courseDg.getId())){
				CourseDg courseDgChild = new CourseDg();
				courseDgChild.setParent(new CourseDg(courseDg.getParent().getId()));
				List<CourseDg> list = courseDgService.findList(courseDg); 
				if (list.size() > 0){
					courseDg.setSort(list.get(list.size()-1).getSort());
					if (courseDg.getSort() != null){
						courseDg.setSort(courseDg.getSort() + 30);
					}
				}
			}
		}
		if (courseDg.getSort() == null){
			courseDg.setSort(30);
		}
		model.addAttribute("courseDg", courseDg);
		return "modules/tran/courseDgForm";
	}

	@RequiresPermissions("tran:courseDg:edit")
	@RequestMapping(value = "save")
	public String save(CourseDg courseDg, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, courseDg)){
			return form(courseDg, model);
		}
		courseDgService.save(courseDg);
		addMessage(redirectAttributes, "保存课程大纲成功");
		return "redirect:"+Global.getAdminPath()+"/tran/courseDg/?repage";
	}
	
	@RequiresPermissions("tran:courseDg:edit")
	@RequestMapping(value = "delete")
	public String delete(CourseDg courseDg, RedirectAttributes redirectAttributes) {
		courseDgService.delete(courseDg);
		addMessage(redirectAttributes, "删除课程大纲成功");
		return "redirect:"+Global.getAdminPath()+"/tran/courseDg/?repage";
	}

	@RequiresPermissions("user")
	@ResponseBody
	@RequestMapping(value = "treeData")
	public List<Map<String, Object>> treeData(@RequestParam(required=false) String extId, HttpServletResponse response) {
		List<Map<String, Object>> mapList = Lists.newArrayList();
		List<CourseDg> list = courseDgService.findList(new CourseDg());
		for (int i=0; i<list.size(); i++){
			CourseDg e = list.get(i);
			if (StringUtils.isBlank(extId) || (extId!=null && !extId.equals(e.getId()) && e.getParentIds().indexOf(","+extId+",")==-1)){
				Map<String, Object> map = Maps.newHashMap();
				map.put("id", e.getId());
				map.put("pId", e.getParentId());
				map.put("name", e.getName());
				mapList.add(map);
			}
		}
		return mapList;
	}
	
}