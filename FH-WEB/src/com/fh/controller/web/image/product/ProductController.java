package com.fh.controller.web.image.product;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import com.fh.controller.base.BaseController;
import com.fh.entity.Page;
import com.fh.service.web.image.ImageManager;
import com.fh.service.web.news.NewsManager;
import com.fh.util.Jurisdiction;
import com.fh.util.PageData;

/** 
 * 说明：网站信息
 * 创建时间：2016-12-28
 */
@Controller
public class ProductController extends BaseController {
	@Resource(name="imageService")
	private ImageManager imageService;
	@Resource(name="newsService")
	private NewsManager newsService;
	/**
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/product")
	public ModelAndView goProduct(Page page)throws Exception{
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		String TYPE = pd.getString("TYPE");
		String PROTYPE= pd.getString("PROTYPE");
		if(null == TYPE){
			pd.put("TYPE", 2);
		}
		if(null != PROTYPE && !"".equals(PROTYPE)){
			pd.put("PROTYPE",PROTYPE.trim());
		}
		page.setPd(pd);
		List<PageData>	varList = newsService.list(page);	//列出Image列表
		System.out.println(varList.toString());
		mv.setViewName("web/product/webproduct");
		mv.addObject("varList", varList);
		mv.addObject("pd", pd);
		return mv;
	}	
}
