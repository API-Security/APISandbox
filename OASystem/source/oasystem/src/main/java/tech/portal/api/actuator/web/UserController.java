package tech.portal.api.actuator.web;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.Banner;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import tech.portal.api.actuator.entity.User;
import tech.portal.api.actuator.service.UserService;

@Controller
public class UserController {

	public static final String KEY_USER = "__user__";

	final Logger logger = LoggerFactory.getLogger(getClass());

	@Autowired
	UserService userService;

	@ExceptionHandler(RuntimeException.class)
	public ModelAndView handleUnknowException(Exception ex) {
		return new ModelAndView("500.html", Map.of("error", ex.getClass().getSimpleName(), "message", ex.getMessage()));
	}

	@GetMapping("/")
	public ModelAndView redict(){
		return new ModelAndView("redirect:/oasystem");
	}

	@GetMapping("/oasystem")
	public ModelAndView index(HttpSession session) {
		User user = (User) session.getAttribute(KEY_USER);
		Map<String, Object> model = new HashMap<>();
		if (user != null) {
			model.put("user", model);
		}
		return new ModelAndView("index.html", model);
	}

	@GetMapping("/oasystem/register")
	public ModelAndView register() {
		return new ModelAndView("register.html");
	}

	@PostMapping("/oasystem/register")
	public ModelAndView doRegister(@RequestParam("email") String email, @RequestParam("password") String password,
			@RequestParam("name") String name) {
		try {
			User user = userService.register(email, password, name);
			logger.info("user registered: {}", user.getEmail());
		} catch (RuntimeException e) {
			return new ModelAndView("register.html", Map.of("email", email, "error", "Register failed"));
		}
		return new ModelAndView("redirect:/oasystem/signin");
	}

	@GetMapping("/oasystem/signin")
	public ModelAndView signin(HttpSession session) {
		User user = (User) session.getAttribute(KEY_USER);
		if (user != null) {
			return new ModelAndView("redirect:/oasystem/profile");
		}
		return new ModelAndView("signin.html");
	}

	@PostMapping("/oasystem/signin")
	public ModelAndView doSignin(@RequestParam("email") String email, @RequestParam("password") String password,
			HttpSession session) {
		try {
			User user = userService.signin(email, password);
			session.setAttribute(KEY_USER, user);
		} catch (RuntimeException e) {
			return new ModelAndView("signin.html", Map.of("email", email, "error", "Signin failed"));
		}
		return new ModelAndView("redirect:/oasystem/profile");
	}

	@GetMapping("/oasystem/profile")
	public ModelAndView profile(HttpSession session) {
		User user = (User) session.getAttribute(KEY_USER);
		if (user == null) {
			return new ModelAndView("redirect:/oasystem/signin");
		}
		return new ModelAndView("profile.html", Map.of("user", user));
	}

	@GetMapping("/oasystem/signout")
	public String signout(HttpSession session) {
		session.removeAttribute(KEY_USER);
		return "redirect:/oasystem/signin";
	}

	@GetMapping("/oasystem/resetPassword")
	public ModelAndView resetPassword() {
		throw new UnsupportedOperationException("Not supported yet!");
	}
}
