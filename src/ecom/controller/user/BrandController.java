package ecom.controller.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import ecom.entities.Brand;
import ecom.services.*;

@Controller
@RequestMapping("brand")
public class BrandController {
	
	@Autowired
	private BrandService brandService;
	
	@RequestMapping(value = "/{brandName}", method = RequestMethod.GET)
	public String index(@RequestParam(value = "id") int id, ModelMap modelMap) {
		Brand brand = brandService.find(id);
		modelMap.put("products", brand.getProducts());
		modelMap.put("title", "brand detail page");
		return "brand.index";
	}
	
	@RequestMapping(value = "/listBrands", method = RequestMethod.GET)
	public String listBrands(ModelMap modelMap) {
		List<Brand> brands = brandService.findAll();
		modelMap.put("brands", brands);
		modelMap.put("title", "List Brand Page");
		return "brand.index";
	}

}
