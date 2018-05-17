package ecom.controller.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import ecom.services.ProductService;

@Controller
@RequestMapping("search")
public class SearchController {
	
	@Autowired
	private ProductService productService;
	
	@RequestMapping(method = RequestMethod.GET)
	public String searchSubmit(@RequestParam(value = "keyword") String keyword, ModelMap modelMap) {
		System.out.println(keyword);
		modelMap.put("productsSearchResult", productService.search(keyword));
		modelMap.put("title", "Search Result Page");
		return "search.result";
	}
}
