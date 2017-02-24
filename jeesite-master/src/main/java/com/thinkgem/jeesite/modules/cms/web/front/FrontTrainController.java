package com.thinkgem.jeesite.modules.cms.web.front;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.thinkgem.jeesite.common.config.Global;
import com.thinkgem.jeesite.common.utils.StringUtils;
import com.thinkgem.jeesite.common.web.BaseController;
import com.thinkgem.jeesite.modules.cms.entity.Site;
import com.thinkgem.jeesite.modules.cms.utils.CmsUtils;
import com.thinkgem.jeesite.modules.tran.utils.CourseTypeUtils;


 /**
 * @ClassName:     FrontTrainController.java
 * @Description:   处理培训页面跳转
 * @author         (作者)
 * @version        V1.0  
 * @Date           2017年2月23日 下午7:09:13 
 */
@Controller
@RequestMapping(value = "${frontPath}/train")
public class FrontTrainController extends BaseController {
    /**
     * 跳转到对应的培训页面
     */
    @RequestMapping(value = "train-{code}${urlSuffix}")
    public String train(@PathVariable String code, Model model) {
        if (StringUtils.isEmpty(code)){
            return "redirect:"+Global.getFrontPath();
        }
        Site site = CmsUtils.getSite(Site.defaultSiteId());
        model.addAttribute("site", site);
        return "modules/cms/front/themes/"+site.getTheme()+"/train/"+code;
    }
    /**
     * 跳转到对应的课程页面
     */
    @RequestMapping(value = "course-{code}-{id}${urlSuffix}")
    public String course(@PathVariable String code,@PathVariable String id, Model model) {
        if (StringUtils.isEmpty(code)){
            return "redirect:"+Global.getFrontPath();
        }
        Site site = CmsUtils.getSite(Site.defaultSiteId());
        model.addAttribute("site", site);
        model.addAttribute("courseType",CourseTypeUtils.getCourseTypeById(id));
        return "modules/cms/front/themes/"+site.getTheme()+"/course/"+code;
    }
}
