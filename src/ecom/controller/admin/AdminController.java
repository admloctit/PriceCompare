package ecom.controller.admin;

import java.io.File;
import java.io.IOException;
import java.security.Principal;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.*;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.context.ServletContextAware;
import org.springframework.web.multipart.MultipartFile;

import ecom.configuration.JavaMailConfig;
import ecom.entities.Users;
import ecom.helper.UserHelper;
import ecom.services.BrandService;
import ecom.services.CategoryService;
import ecom.services.ProductService;
import ecom.services.SupplierService;
import ecom.services.UserService;
import ecom.validators.UserValidator;

@Controller
@RequestMapping("/admin**")
public class AdminController implements ServletContextAware{
	private ServletContext servletContext;
	@Autowired
	private CategoryService categoryService;
	@Autowired
	private BrandService brandService;
	@Autowired
	private SupplierService supplierService;
	@Autowired
	private ProductService productService;
	@Autowired
	private UserService userService;
	@Autowired
	private JavaMailConfig javaMailConfig;
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	
	@InitBinder
    public void initBinder(WebDataBinder  binder){
        binder.registerCustomEditor(Date.class,new CustomDateEditor(new SimpleDateFormat("yyyy-MM-dd"),true));
    }

	@RequestMapping(value = "welcome", method = RequestMethod.GET)
	public String welcome(ModelMap modelMap, Principal principal, HttpSession session) {
		session.setAttribute("username", principal.getName());
		modelMap.put("user",userService.findByUsername(principal.getName())); 
		modelMap.put("countCategory", categoryService.countCategory());
		modelMap.put("countProduct", productService.countProduct());
		modelMap.put("countSupplier", supplierService.countSupplier());
		modelMap.put("countBrand", brandService.countBrand());
		
		return "admin.welcome";
	}

	@RequestMapping(value = "profile/{us}", method = RequestMethod.GET)
	public String profile(
			@PathVariable("us")String us,
			ModelMap modelMap ) {
		modelMap.put("user", userService.findByUsername(us));

		return "admin.profile";
	}
	


	@RequestMapping(value = "update", method = RequestMethod.POST)
	public String update(@ModelAttribute("user") @Valid Users user,
			BindingResult bindingResult, ModelMap modelMap,
			@RequestParam(value = "image", required = false) MultipartFile image) {
		System.out.println(123);
		UserValidator userValidator  = new UserValidator();
		userValidator.validate(user, bindingResult);
		if (bindingResult.hasErrors()) {
			return "redirect:../admin/profile.html";
		} else {
			if (!image.isEmpty()) {
				if (!validateImage(image)) {
					modelMap.put("errorUpload", "File extension invalid");
					modelMap.put("user", user);
					return "admin.profile";
				} else {
					user.setPhoto(saveImage(image));
				}
			}

			userService.update(user);
			return "admin.profile";
		}
	}
	
	@RequestMapping(value="/account/recoverpw",method=RequestMethod.GET)
	public String getForgotPass(ModelMap modelMap){
		modelMap.put("userHelper", new UserHelper());
		return "admin.recoverpw";
	}
	
	@RequestMapping(value="/account/doForgotPass",method=RequestMethod.POST)
	public String doForgotPass(@ModelAttribute("userHelper") UserHelper userHelper,ModelMap modelMap ){
		if(userService.findViewByUsername(userHelper.getUsername(), userHelper.getEmail()) != null){
			javaMailConfig.sendEmail(userHelper.getEmail(), "Forgot Password", userHelper.getUsername());
			modelMap.put("result", "let's check your mail");
		}else{
			modelMap.put("result", "Account not exists");			
		}
		
		return "admin.recoverpw";
	}
	@RequestMapping(value="/account/getnewpass",method=RequestMethod.GET)
	public String doGetPass(@RequestParam(value = "us", required = false) String us,ModelMap modelMap){	
		if(us !=null){
			Users users = userService.findByUsername(us);			
			if(users !=null){
				modelMap.put("user", users);
				return "admin.getnewpass";
			}else{
				return "account.login";
			}
		}
		return "admin.login";
	}
	@RequestMapping(value="/account/changenewpass",method=RequestMethod.POST)
	public String doChangePass(@ModelAttribute("user") Users users){	
		Users user = userService.findByUsername(users.getUsername());
		if(user!=null){
			user.setPassword(passwordEncoder.encode(users.getPassword()));
			userService.update(user);
		}
		
		return "admin.login";
	}

	private String saveImage(MultipartFile image) {
		try {
			File file = new File(servletContext.getRealPath("/")
					+ "/assets/user/images/accounts/" + image.getOriginalFilename());
			FileUtils.writeByteArrayToFile(file, image.getBytes());
			return image.getOriginalFilename();
		} catch (IOException e) {
			return null;
		}
	}

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
