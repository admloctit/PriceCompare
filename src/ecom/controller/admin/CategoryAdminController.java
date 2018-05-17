package ecom.controller.admin;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.*;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import ecom.entities.Category;
import ecom.services.CategoryService;
import ecom.entities.*;
import ecom.services.*;
import ecom.validators.CategoryValidator;

@Controller
@RequestMapping("admin/category**")
public class CategoryAdminController {

	@Autowired
	private CategoryService categoryService;
	
	@RequestMapping(method = RequestMethod.GET)
	public String index(ModelMap modelMap) {
		modelMap.put("categories", categoryService.findAll());
		return "admin.category.index";
	}
	
	@RequestMapping(value = "add", method = RequestMethod.GET)
	public String add(ModelMap modelMap) {
		modelMap.put("category", new Category());
		return "admin.category.add";
	}

	@RequestMapping(value = "add", method = RequestMethod.POST)
	public String add(
		@ModelAttribute("category") @Valid Category category, 
		BindingResult bindingResult,
		ModelMap modelMap) {
		CategoryValidator categoryValidator = new CategoryValidator();
		categoryValidator.validate(category, bindingResult);
		if (bindingResult.hasErrors()) {
			return "admin.category.add";
		} else {
			categoryService.create(category);
			return "redirect:../category.html";
		}
	}
	
	@RequestMapping(value = "delete/{id}", method = RequestMethod.GET)
	public String delete(@PathVariable("id") Integer id, ModelMap modelMap) {
		try {
			categoryService.delete(categoryService.find(id));
		} catch (Exception e) {
			modelMap.addAttribute("errors", "Cannot delete because foreign key exists");
		}
		return "redirect:../../category.html";
	}
	
	@RequestMapping(value = "edit/{id}", method = RequestMethod.GET)
	public String edit(
		@PathVariable("id") Integer id, 
		ModelMap modelMap) {
		modelMap.put("category", categoryService.find(id));
		return "admin.category.edit";
	}
	
	@RequestMapping(value = "edit", method = RequestMethod.POST)
	public String edit(
		@ModelAttribute("category") @Valid Category category, 
		BindingResult bindingResult,
		ModelMap modelMap) {
		CategoryValidator categoryValidator = new CategoryValidator();
		categoryValidator.validate(category, bindingResult);
		if (bindingResult.hasErrors()) {
			return "admin.category.edit";
		} else {
			categoryService.update(category);
			return "redirect:../category.html";
		}
	}

}

