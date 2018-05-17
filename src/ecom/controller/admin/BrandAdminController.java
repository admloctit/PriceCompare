package ecom.controller.admin;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.*;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import ecom.entities.Brand;
import ecom.services.BrandService;
import ecom.validators.BrandValidator;

@Controller
@RequestMapping("admin/brand**")
public class BrandAdminController {

	@Autowired
	private BrandService brandService;
	
	@RequestMapping(method = RequestMethod.GET)
	public String index(ModelMap modelMap) {
		modelMap.put("categories", brandService.findAll());
		return "admin.brand.index";
	}
	
	@RequestMapping(value = "add", method = RequestMethod.GET)
	public String add(ModelMap modelMap) {
		modelMap.put("brand", new Brand());
		return "admin.brand.add";
	}

	@RequestMapping(value = "add", method = RequestMethod.POST)
	public String add(
		@ModelAttribute("brand") @Valid Brand brand, 
		BindingResult bindingResult,
		ModelMap modelMap) {
		BrandValidator brandValidator = new BrandValidator();
		brandValidator.validate(brand, bindingResult);
		if (bindingResult.hasErrors()) {
			return "admin.brand.add";
		} else {
			brandService.create(brand);
			return "redirect:../brand.html";
		}
	}
	
	@RequestMapping(value = "delete/{id}", method = RequestMethod.GET)
	public String delete(@PathVariable("id") Integer id, ModelMap modelMap) {
		try {
			brandService.delete(brandService.find(id));
		} catch (Exception e) {
			modelMap.addAttribute("errors", "Cannot delete because foreign key exists");
		}
		return "redirect:../../brand.html";
	}
	
	@RequestMapping(value = "edit/{id}", method = RequestMethod.GET)
	public String edit(
		@PathVariable("id") Integer id, 
		ModelMap modelMap) {
		modelMap.put("brand", brandService.find(id));
		return "admin.brand.edit";
	}
	
	@RequestMapping(value = "edit", method = RequestMethod.POST)
	public String edit(
		@ModelAttribute("brand") @Valid Brand brand, 
		BindingResult bindingResult,
		ModelMap modelMap) {
		BrandValidator brandValidator = new BrandValidator();
		brandValidator.validate(brand, bindingResult);
		if (bindingResult.hasErrors()) {
			return "admin.brand.edit";
		} else {
			brandService.update(brand);
			return "redirect:../brand.html";
		}
	}

}

