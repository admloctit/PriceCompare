package ecom.controller.admin;

import java.io.*;
import java.math.BigDecimal;

import javax.servlet.ServletContext;
import javax.validation.Valid;

import org.jsoup.Jsoup;
import org.jsoup.nodes.*;
import org.jsoup.select.Elements;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.*;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.context.ServletContextAware;
import org.springframework.web.multipart.MultipartFile;

import ecom.entities.*;
import ecom.services.*;
import ecom.validators.ProductValidator;

import org.apache.commons.io.FileUtils;

@Controller
@RequestMapping("/admin/product**")
public class ProductAdminController implements ServletContextAware {

	private ServletContext servletContext;

	@Autowired
	private ProductService productService;

	@Autowired
	private CategoryService categoryService;
	
	@Autowired
	private SupplierService supplierService;
	
	@Autowired
	private BrandService brandService;
	//Index Of Product page
	@RequestMapping(method = RequestMethod.GET)
	public String index(ModelMap modelMap) {
		modelMap.put("products", productService.findAll());
		return "admin.product.index";
	}
	//Get Product Add
	@RequestMapping(value = "add", method = RequestMethod.GET)
	public String add(ModelMap modelMap) {
		Product product = new Product();
		modelMap.put("product", product);
		modelMap.put("categories", categoryService.findAll());
		modelMap.put("suppliers", supplierService.findAll());
		modelMap.put("brands", brandService.findAll());
		return "admin.product.add";
	}
	//Post Product Add
	@RequestMapping(value = "add", method = RequestMethod.POST)
	public String add(@ModelAttribute("product") @Valid Product product,
			BindingResult bindingResult, ModelMap modelMap,
			@RequestParam(value = "image", required = false) MultipartFile image) {
		ProductValidator productValidator = new ProductValidator();
		productValidator.validate(product, bindingResult);
		if (bindingResult.hasErrors()) {
			modelMap.put("categories", categoryService.findAll());
			modelMap.put("suppliers", supplierService.findAll());
			modelMap.put("brands", brandService.findAll());


			return "admin.product.add";
		} else {
			//Validation Photo
			if (!image.isEmpty()) {
				if (!validateImage(image)) {
					modelMap.put("errorUpload", "File extension invalid");
					return "admin.product.add";
				} else {
					product.setPhoto(saveImage(image));
				}
			} else {
				product.setPhoto("noimage.jpg");
			}
			//Get Price From FPT Website
			this.getBestPrice(product);
			
			
			productService.create(product);
			return "redirect:../product.html";
		}
	}
	//Method Save Images
	private String saveImage(MultipartFile image) {
		try {
			File file = new File(servletContext.getRealPath("/")
					+ "/assets/user/images/products/" + image.getOriginalFilename());
			FileUtils.writeByteArrayToFile(file, image.getBytes());
			return image.getOriginalFilename();
		} catch (IOException e) {
			return null;
		}
	}
	//Delete Product
	@RequestMapping(value = "delete/{id}", method = RequestMethod.GET)
	public String delete(@PathVariable("id") Integer id) {
		productService.delete(productService.find(id));
		return "redirect:../../product.html";
	}
	//Get Edit Product 
	@RequestMapping(value = "edit/{id}", method = RequestMethod.GET)
	public String edit(@PathVariable("id") Integer id, ModelMap modelMap) {
		modelMap.put("product", productService.find(id));
		modelMap.put("categories", categoryService.findAll());
		modelMap.put("suppliers", supplierService.findAll());
		modelMap.put("brands", brandService.findAll());


		return "admin.product.edit";
	}
	//Post Edit Product
	@RequestMapping(value = "update", method = RequestMethod.POST)
	public String update(@ModelAttribute("product") @Valid Product product,
			BindingResult bindingResult, ModelMap modelMap,
			@RequestParam(value = "image", required = false) MultipartFile image) {
		ProductValidator productValidator = new ProductValidator();
		productValidator.validate(product, bindingResult);
		if (bindingResult.hasErrors()) {
			modelMap.put("categories", categoryService.findAll());
			modelMap.put("suppliers", supplierService.findAll());
			modelMap.put("brands", brandService.findAll());


			return "admin.product.edit";
		} else {
			if (!image.isEmpty()) {
				if (!validateImage(image)) {
					modelMap.put("errorUpload", "File extension invalid");
					modelMap.put("product", product);
					return "admin.product.edit";
				} else {
					product.setPhoto(saveImage(image));
				}
			}
			productService.update(product);
			return "redirect:../product.html";
		}
	}
	// Method Get Price From Website
	private void getBestPrice(Product product){
		try {
			//Connect to website and search
			Document document = Jsoup.connect("https://fptshop.com.vn/tim-kiem/"+ product.getName() + " " + product.getCode()).timeout(6000).get();
			//Select div where list product placed
			Elements elements = document.select("div#category-products");
			//Select prorduct
			for(Element element : elements.select("div.fs-lpitem")){
				//Select Price and convert price
				String stringPrice = element.select("p.fs-icpri").text();
				String[] price0 = stringPrice.split("₫");
				String price3 = price0[0];
				String[] price1 = price3.split("\\.");
				String price = "";
				for (int i = 0; i < price1.length; i++) {
					price = price + price1[i];
				}
				//Add price to DB
				product.setPrice(BigDecimal.valueOf(Double.valueOf(price)));
				product.setSupplier(supplierService.find(1));
			}
			
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
	//Valid Image
	private boolean validateImage(MultipartFile image) {
		return image.getContentType().equals("image/jpeg")
				|| image.getContentType().equals("image/jpg")
				|| image.getContentType().equals("image/gif")
				|| image.getContentType().equals("image/png");
	}

	@Override
	public void setServletContext(ServletContext servletContext) {
		this.servletContext = servletContext;
	}

}
