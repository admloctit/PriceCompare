package ecom.controller.user;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.annotation.JsonAutoDetect.Visibility;
import com.fasterxml.jackson.annotation.PropertyAccessor;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.SerializationFeature;

import ecom.crawler.CrawlerDataProduct;
import ecom.entities.Product;
import ecom.entities.ProductOfSupplier;
import ecom.services.*;

@Controller
@RequestMapping("product")
public class ProductController {
	
	@Autowired
	private ProductService productService;
	@Autowired
	private SupplierService supplierService;
	
	@RequestMapping(value = "/{productName}-{productCode}", method = RequestMethod.GET)
	public String index(@RequestParam(value = "id") int id, ModelMap modelMap) {
		List<ProductOfSupplier> productOfSuppliers = new ArrayList<ProductOfSupplier>();
		CrawlerDataProduct crawler = new CrawlerDataProduct();
		Product product = productService.find(id);
		try {
			productOfSuppliers = crawler.craw(supplierService.findAll(), product);
		} catch (Exception e) {
			System.out.println(e.getMessage());
			System.out.println("Loioo~~~~~~~~~~~~");
		}	
		modelMap.put("productOfSuppliers", productOfSuppliers);
		modelMap.put("product", product);
		modelMap.put("title", "Product detail page");
		return "product.index";
	}
	
	//Get list Product and convert to json
	@RequestMapping(value = "productsJson", method = RequestMethod.GET)
	@ResponseBody
	public String listProductJson() throws JsonProcessingException{
		ObjectMapper objectMapper = new ObjectMapper();	
		
		objectMapper.configure(SerializationFeature.FAIL_ON_EMPTY_BEANS, false);
		objectMapper.setVisibility(PropertyAccessor.FIELD, Visibility.ANY);
		
		String arrayToJson = objectMapper.writeValueAsString(productService.findAll());
		return arrayToJson;
	}
}
