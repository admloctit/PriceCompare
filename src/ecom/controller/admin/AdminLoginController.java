
package ecom.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.bcrypt.BCrypt;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.*;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import ecom.services.UserService;

@Controller
@RequestMapping("admin-panel")
public class AdminLoginController {
	@Autowired
	private UserService userService;


	@RequestMapping(method = RequestMethod.GET)
	public String index() {
		return "redirect:/admin-panel/login.html";
	}
	@RequestMapping(value = "/login", 
			method = RequestMethod.GET)
	public String login(@RequestParam(value = "error", required = false) String error,
			@RequestParam(value = "logout", required = false) String logout, ModelMap modelMap) {

		if (error != null) {
			modelMap.addAttribute("msg", "Invalid username and password! Do you have account?");
		}
		if (logout != null) {
			modelMap.addAttribute("msg", "You've been logged out successfully.");
		}
		return "admin.login";
	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout() {
		return "admin.login";
	}

	@RequestMapping(value = "/403", method = RequestMethod.GET)
	public String accesssDenied(ModelMap modelMap) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			modelMap.addAttribute("username", userDetail.getUsername());
		}
		return "admin.403";
	}

	@RequestMapping(value = "/welcome", method = RequestMethod.GET)
	public String welcome() {
		return "admin.welcome";
	}
	@RequestMapping(value = "/profile/{us}", method = RequestMethod.GET)
	public String profile(
			@PathVariable("us")String us,
			ModelMap modelMap ) {
		modelMap.put("user", userService.findByUsername(us));

		return "admin.profile";
	}

	
}
