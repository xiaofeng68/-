package com.thinkgem.jeesite.modules.cms.web.front;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.thinkgem.jeesite.common.config.Global;
import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.utils.StringUtils;
import com.thinkgem.jeesite.common.web.BaseController;
import com.thinkgem.jeesite.modules.cms.entity.Site;
import com.thinkgem.jeesite.modules.cms.utils.CmsUtils;
import com.thinkgem.jeesite.modules.tran.entity.Course;
import com.thinkgem.jeesite.modules.tran.entity.CourseType;
import com.thinkgem.jeesite.modules.tran.service.CourseService;
import com.thinkgem.jeesite.modules.tran.utils.CourseTypeUtils;
import com.thinkgem.jeesite.modules.tran.utils.CourseUtils;

/**
 * @ClassName: FrontTrainController.java
 * @Description: 处理培训页面跳转
 * @author (作者)
 * @version V1.0
 * @Date 2017年2月23日 下午7:09:13
 */
@Controller
@RequestMapping(value = "${frontPath}/train")
public class FrontTrainController extends BaseController {
	@Autowired
	private CourseService courseService;

	/**
	 * 跳转到对应的培训页面
	 */
	@RequestMapping(value = "train-{code}${urlSuffix}")
	public String train(@PathVariable String code, Model model) {
		if (StringUtils.isEmpty(code)) {
			return "redirect:" + Global.getFrontPath();
		}
		Site site = CmsUtils.getSite(Site.defaultSiteId());
		model.addAttribute("site", site);
		return "modules/cms/front/themes/" + site.getTheme() + "/train/" + code;
	}

	/**
	 * 跳转到对应的课程类型页面
	 */
	@RequestMapping(value = "course-{code}-{id}${urlSuffix}")
	public String courseDetail(@PathVariable String code, @PathVariable String id, Model model) {
		if (StringUtils.isEmpty(code)) {
			return "redirect:" + Global.getFrontPath();
		}
		Site site = CmsUtils.getSite(Site.defaultSiteId());
		model.addAttribute("site", site);
		CourseType courseType = CourseTypeUtils.getCourseTypeById(id);
		model.addAttribute("courseType", courseType);
		return "modules/cms/front/themes/" + site.getTheme() + "/course/" + code;
	}

	@RequestMapping(value = "classify-{code}-{id}${urlSuffix}")
	public String classify(@PathVariable String code, @PathVariable String id, HttpServletRequest request,
			HttpServletResponse response, Model model) {
		if (StringUtils.isEmpty(code)) {
			return "redirect:" + Global.getFrontPath();
		}
		Site site = CmsUtils.getSite(Site.defaultSiteId());
		model.addAttribute("site", site);
		CourseType courseType = CourseTypeUtils.getCourseTypeById(id);
		model.addAttribute("courseType", courseType);

		Course course = new Course();
		course.setCourseType(courseType);
		Page<Course> page = courseService.findPage(new Page<Course>(request, response), course);
		model.addAttribute("page", page);
		return "modules/cms/front/themes/" + site.getTheme() + "/classify/" + code;
	}

	@RequestMapping(value = "classify-{code}-{id}/{state1}-{state2}-{state3}-{state4}${urlSuffix}")
	public String classify(@PathVariable String code, @PathVariable String id, @PathVariable String state1,
			@PathVariable String state2, @PathVariable String state3, @PathVariable String state4,
			HttpServletRequest request, HttpServletResponse response, Model model) {
		if (StringUtils.isEmpty(code)) {
			return "redirect:" + Global.getFrontPath();
		}
		
		Site site = CmsUtils.getSite(Site.defaultSiteId());
		model.addAttribute("site", site);
		CourseType courseType = CourseTypeUtils.getCourseTypeById(id);
		model.addAttribute("courseType", courseType);
		model.addAttribute("state1",state1);
		model.addAttribute("state2",state2);
		model.addAttribute("state3",state3);
		model.addAttribute("state4",state4);
		Course course = new Course();
		course.setCourseType(courseType);
		Page<Course> page = courseService.findPage(new Page<Course>(request, response), course);
		model.addAttribute("page", page);
		return "modules/cms/front/themes/" + site.getTheme() + "/classify/" + code;
	}

	/**
	 * @说明: 跳转到对应的课程页面
	 */
	@RequestMapping(value = "course/{id}${urlSuffix}")
	public String course(@PathVariable String id, Model model) {
		Site site = CmsUtils.getSite(Site.defaultSiteId());
		model.addAttribute("site", site);
		Course course = CourseUtils.getCourseById(id);
		model.addAttribute("course", course);
		CourseType courseType = CourseTypeUtils.getCourseTypeById(course.getCourseType().getId());
		model.addAttribute("courseType", courseType);
		return "modules/cms/front/themes/" + site.getTheme() + "/course/detail";
	}

	@RequestMapping(value = "video-{id}-{type}${urlSuffix}")
	public String video(@PathVariable String id, @PathVariable String type, Model model) {
		Site site = CmsUtils.getSite(Site.defaultSiteId());
		model.addAttribute("site", site);
		Course course = CourseUtils.getCourseById(id);
		model.addAttribute("course", course);
		return "modules/cms/front/themes/" + site.getTheme() + "/course/video";
	}
}
