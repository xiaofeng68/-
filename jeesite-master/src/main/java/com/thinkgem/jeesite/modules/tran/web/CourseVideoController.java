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
import com.thinkgem.jeesite.common.web.BaseController;
import com.thinkgem.jeesite.common.utils.StringUtils;
import com.thinkgem.jeesite.modules.tran.entity.CourseVideo;
import com.thinkgem.jeesite.modules.tran.service.CourseVideoService;

/**
 * 视频管理Controller
 * @author 小风
 * @version 2017-02-25
 */
@Controller
@RequestMapping(value = "${adminPath}/tran/courseVideo")
public class CourseVideoController extends BaseController {

	@Autowired
	private CourseVideoService courseVideoService;
	
	@ModelAttribute
	public CourseVideo get(@RequestParam(required=false) String id) {
		CourseVideo entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = courseVideoService.get(id);
		}
		if (entity == null){
			entity = new CourseVideo();
		}
		return entity;
	}
	
	@RequiresPermissions("tran:courseVideo:view")
	@RequestMapping(value = {"list", ""})
	public String list(CourseVideo courseVideo, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<CourseVideo> page = courseVideoService.findPage(new Page<CourseVideo>(request, response), courseVideo); 
		model.addAttribute("page", page);
		return "modules/tran/courseVideoList";
	}

	@RequiresPermissions("tran:courseVideo:view")
	@RequestMapping(value = "form")
	public String form(CourseVideo courseVideo, Model model) {
		model.addAttribute("courseVideo", courseVideo);
		return "modules/tran/courseVideoForm";
	}

	@RequiresPermissions("tran:courseVideo:edit")
	@RequestMapping(value = "save")
	public String save(CourseVideo courseVideo, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, courseVideo)){
			return form(courseVideo, model);
		}
		courseVideoService.save(courseVideo);
		addMessage(redirectAttributes, "保存视频成功");
		return "redirect:"+Global.getAdminPath()+"/tran/courseVideo/?repage";
	}
	
	@RequiresPermissions("tran:courseVideo:edit")
	@RequestMapping(value = "delete")
	public String delete(CourseVideo courseVideo, RedirectAttributes redirectAttributes) {
		courseVideoService.delete(courseVideo);
		addMessage(redirectAttributes, "删除视频成功");
		return "redirect:"+Global.getAdminPath()+"/tran/courseVideo/?repage";
	}

}