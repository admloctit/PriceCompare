package ecom.controller.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ecom.services.SupplierService;

@Controller
@RequestMapping("supplier")
public class SupplierController {
	
	@Autowired
	private SupplierService supplierService;
	
	@RequestMapping(method = RequestMethod.GET)
	public String index(ModelMap modelMap) {	
		modelMap.put("suppliers", supplierService.findAll());
		modelMap.put("title", "Supplier Page");
		return "supplier.index";
	}
}
