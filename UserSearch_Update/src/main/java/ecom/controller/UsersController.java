package ecom.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


import ecom.dao.UsersDAO;
import ecom.model.Users;
@Controller
@RequestMapping
public class UsersController {
	
	@Autowired
	UsersDAO dao;
	@GetMapping("addUser")
	public String addUser() {

		return "AddUser";

	}
	@PostMapping("/insertUser")
	public String insertUser(Users usr) {

		dao.addUser(usr);
		return "redirect:/userReport";
	}

	@GetMapping("/userReport")
	public String userReport(Model m) {
		m.addAttribute("users", dao.getAllUsers());
		m.addAttribute("title", "User Report");
		return "UserReport";
	}

	@GetMapping("/editUser/{id}")
	public String editUser(@PathVariable(value = "id") long id, Model m) {
		Users usr = dao.getUserById(id);
		m.addAttribute("users", usr);
		m.addAttribute("title", "Edit User");
		return "EditUser";
	}

	@PostMapping("/editUser/updateUser")
	public String updateUser(@ModelAttribute("updateUser")Users usr) {
		dao.updateUser(usr);
		return "redirect:/userReport";
	}

	@GetMapping("/deleteUser/{id}")
	public String deleteUser(@PathVariable long id) {
		dao.deleteUser(id);
		return "redirect:/userReport";
	}
	@GetMapping("searchUser")
	public String searchUser() {
		
		return "SearchUser";
	}
	@GetMapping("/searchingUser")
	public String searchingUser(@RequestParam("id")long id,Model m) {
		Users usr=dao.getUserById(id);
		if(usr==null) {
			m.addAttribute("Message", "Data Not Found");
			return "SearchResult";
		}
		m.addAttribute("users", usr);
		m.addAttribute("Message", "Fetched Result");
		return "SearchResult";
	}

}
