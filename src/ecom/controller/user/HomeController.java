package ecom.controller.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ecom.services.*;


@Controller
@RequestMapping("home")
public class HomeController {

	@Autowired
	private BrandService brandService;
	@Autowired
	private ProductService productService;
	
	@RequestMapping(method = RequestMethod.GET)
	public String index(ModelMap modelMap) {	
		modelMap.put("brands", brandService.findAll());
		modelMap.put("newestProduct", productService.latestProducts(1));
		modelMap.put("LastedProducts", productService.latestProducts(4));
		modelMap.put("title", "Home Page");
		return "home.index";
	}	
}
