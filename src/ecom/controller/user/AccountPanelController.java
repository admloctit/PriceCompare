package ecom.controller.user;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import ecom.entities.UserRole;
import ecom.entities.UserRoleId;
import ecom.entities.Users;
import ecom.services.UserRoleService;
import ecom.services.UserService;

@Controller
@RequestMapping("accountPanel")
public class AccountPanelController {
	
	@Autowired
	private UserService userService;
	@Autowired
	private UserRoleService userRoleService;
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	
	@RequestMapping(method = RequestMethod.GET)
	public String index(ModelMap modelMap) {
		return "redirect:/accountPanel/login.html";
	}
	
	@InitBinder
    public void initBinder(WebDataBinder binder){
        binder.registerCustomEditor(Date.class,new CustomDateEditor(new SimpleDateFormat("yyyy-MM-dd"),true));
    }
	
	//Login
	@RequestMapping(value = "login", method = RequestMethod.GET)
	public String login(ModelMap modelMap, 
						@RequestParam(value = "error", required = false) String error,
						@RequestParam(value = "logout", required = false) String logout) {
		if(error != null){
			modelMap.put("msg", "Invalid username and password! Do you have Account?");
		}
		if(logout != null){
			modelMap.put("msg", "You've been logged out successfully");
		}
		modelMap.put("title", "Login Page");
		return "account.login";
	}
	
	
	//Logout
	@RequestMapping(value = "logout", method = RequestMethod.GET)
	public String logout(ModelMap modelMap) {
		return "redirect:/accountPanel/login.html?logout";
	}
	
	//Accessdenied
	@RequestMapping(value = "403", method = RequestMethod.GET)
	public String accessDenied(ModelMap modelMap) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if(!(auth instanceof AnonymousAuthenticationToken)){
			UserDetails userDetails = (UserDetails) auth.getPrincipal();
			modelMap.put("username", userDetails.getUsername());
		}
		return "account.403";
	}
	
	//Register
	@RequestMapping(value = "register", method = RequestMethod.GET)
	public String register(ModelMap modelMap) {
		modelMap.put("title", "Register Account Page");
		modelMap.put("user", new Users());
		return "account.register";
	}
	
	//Register Submit
	@RequestMapping(value = "register", method = RequestMethod.POST)
	public String register(@ModelAttribute("user") Users user) {
		user.setPassword(passwordEncoder.encode(user.getPassword()));
		user.setEnabled(1);
		Users newUser = userService.create(user);
		UserRole userRole = new UserRole();
		userRole.setId(new UserRoleId(newUser.getId(), 2));
		userRole.setEnable(true);
		userRoleService.create(userRole);
		return "account.register.success";
	}
	
	
}
