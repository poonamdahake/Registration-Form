package com.login.controller;

import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.login.entity.User;
import com.login.entity.UserLogin;
import com.login.service.UserService;

@Controller
public class HomeController {

	@Autowired
	private UserService userService;

	@RequestMapping("/dashboard")
	public String dashboard(Model model) {
		List<User> users = userService.getAll();
		System.out.println(users);
		model.addAttribute("users", users);
		return "dashboard";
	}

	@RequestMapping("/registration")
	public String signup(Model model) {
		model.addAttribute("error", "");
		return "registration";
	}

	@RequestMapping("/login")
	public String login(Model model) {
		model.addAttribute("msg", "");
		return "login";
	}

	@RequestMapping("/home")
	public String home() {
		return "home";
	}

	@RequestMapping(path = "/createUser", method = RequestMethod.POST)
	public String registerUser(@ModelAttribute User user, Model model) {
		List<User> user1 = userService.getAll();
		for (User existingUser : user1) {
			if (existingUser.getLoginId().equals(user.getLoginId())) {
				model.addAttribute("error",
						"Registration failed: User with login ID '" + user.getLoginId() + "' already exists");
				return "registration";
			}
		}
		userService.createUser(user);
		model.addAttribute("user", user);
		return "success";
	}

	@RequestMapping("/userList")
	public String getAll(Model model) {
		List<User> list = userService.getAll();
		model.addAttribute("users", list);
		return "redirect:/home";
	}

	@RequestMapping(path = "/verify", method = RequestMethod.POST)
	public String verify(@ModelAttribute UserLogin userLogin, Model model) {
		// List<User> list = userService.getAll();

		if (userLogin.getLoginId() == null || userLogin.getPassword() == null) {
			model.addAttribute("msg", "Please enter both login ID and password");
			return "login";
		} else {
			List<User> list = userService.getAll();
			Iterator<User> iterator = list.iterator();
			User user = null;
			while (iterator.hasNext()) {
				User getUser = iterator.next();
				if (userLogin.getLoginId().equals(getUser.getLoginId())
						&& userLogin.getPassword().equals(getUser.getPassword())) {
					user=getUser;
					iterator.remove();
					break;
				}
				
			}

			if (user !=null) {
				model.addAttribute("users", list);
				return "dashboard";
			} else {
				System.out.println("loginid or password is incorrect");
				model.addAttribute("msg", "Login ID or password is incorrect");
				return "login";
			}

	  
		}

	}
	
//	@RequestMapping("/delete/{id}")
//	public String deleteUser(@PathVariable int id) {
//		userService.deleteUser(id);
//		return "redirect:/dashboard";
//	}
	
	@RequestMapping("/delete/{id}")
	public String deleteUser(@PathVariable int id, Model model) {
		userService.deleteUser(id);
	    List<User> remainingUsers = userService.getAllUsers(); 
	   
	    model.addAttribute("users", remainingUsers);

	    return "redirect:/dashboard";
	}


	
}