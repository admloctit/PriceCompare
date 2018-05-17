package ecom.controller.admin;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.*;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import ecom.entities.*;
import ecom.services.*;
import ecom.validators.SupplierValidator;

@Controller
@RequestMapping("admin/supplier**")
public class SupplierAdminController {

	@Autowired
	private SupplierService supplierService;
	
	@RequestMapping(method = RequestMethod.GET)
	public String index(ModelMap modelMap) {
		modelMap.put("suppliers", supplierService.findAll());
		return "admin.supplier.index";
	}
	
	@RequestMapping(value = "add", method = RequestMethod.GET)
	public String add(ModelMap modelMap) {
		modelMap.put("supplier", new Supplier());
		return "admin.supplier.add";
	}

	@RequestMapping(value = "add", method = RequestMethod.POST)
	public String add(
		@ModelAttribute("supplier") @Valid Supplier supplier, 
		BindingResult bindingResult,
		ModelMap modelMap) {
		SupplierValidator supplierValidator = new SupplierValidator();
		supplierValidator.validate(supplier, bindingResult);
		if (bindingResult.hasErrors()) {
			return "admin.supplier.add";
		} else {
			supplierService.create(supplier);
			return "redirect:../supplier.html";
		}
	}
	
	@RequestMapping(value = "delete/{id}", method = RequestMethod.GET)
	public String delete(@PathVariable("id") Integer id, ModelMap modelMap) {
		try {
			supplierService.delete(supplierService.find(id));
		} catch (Exception e) {
			modelMap.addAttribute("errors", "Cannot delete because foreign key exists");
		}
		return "redirect:../../supplier.html";
	}
	
	@RequestMapping(value = "edit/{id}", method = RequestMethod.GET)
	public String edit(
		@PathVariable("id") Integer id, 
		ModelMap modelMap) {
		modelMap.put("supplier", supplierService.find(id));
		return "admin.supplier.edit";
	}
	
	@RequestMapping(value = "edit", method = RequestMethod.POST)
	public String edit(
		@ModelAttribute("supplier") @Valid Supplier supplier, 
		BindingResult bindingResult,
		ModelMap modelMap) {
		SupplierValidator supplierValidator = new SupplierValidator();
		supplierValidator.validate(supplier, bindingResult);
		if (bindingResult.hasErrors()) {
			return "admin.supplier.edit";
		} else {
			supplierService.update(supplier);
			return "redirect:../supplier.html";
		}
	}

}

