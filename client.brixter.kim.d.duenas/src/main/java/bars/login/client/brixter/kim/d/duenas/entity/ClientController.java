package bars.login.client.brixter.kim.d.duenas.entity;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import bars.login.client.brixter.kim.d.duenas.ClientProxy;
import bars.login.server.brixter.kim.d.duenas.DAO.User;

@Controller
@RequestMapping("/")
public class ClientController {
	
	@Autowired
	private ClientProxy clientProxy;
	
	@RequestMapping("/login")
	public ModelAndView index() {
		ModelAndView model = new ModelAndView();
		model.setViewName("login");
		return model;
	}
	@RequestMapping("/deletePage")
	public ModelAndView deletePage() {
		ModelAndView model = new ModelAndView();
		model.setViewName("deletePage");
		return model;
	}
	
	@RequestMapping("/updatePage")
	public ModelAndView updatePage(HttpServletRequest request) {
		ModelAndView model = new ModelAndView();
		String userName = request.getParameter("userName").trim();
		model.addObject("userName", userName);
		model.setViewName("updatePage");
		return model;
	}
	
	
	@PostMapping("/insertPage")
	public ModelAndView insertPage() {
		ModelAndView model = new ModelAndView();
		model.setViewName("insertPage");
		return model;
	}
	
	@PostMapping("/backLogin")
	public ModelAndView backLogin() {
		ModelAndView model = new ModelAndView();
		List<User> listOfUser = clientProxy.getAll();
		model.addObject("userList", listOfUser);
		model.setViewName("adminSuccess");
		return model;
	}
	
	@GetMapping("/all")
	public List<User> allUser(){
		
		return clientProxy.getAll();
	}
	
	@PostMapping("/loginMember")
	public ModelAndView getUserPassword(HttpServletRequest request) {
		
		ModelAndView model = new ModelAndView();
		String userName = request.getParameter("userName").trim();
		String password = request.getParameter("password").trim();
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		try {
		List<User> user = clientProxy.getUserByNameAndPass(userName, password);
		if(passwordEncoder.matches(password, user.get(0).getPassword())) {
			if(clientProxy.getUserByNameAndPass(userName, password).size() > 0) {
				
				if(user.get(0).getUserType().equals("member")) {
					List<User> listOfUser = clientProxy.getAll();
					model.addObject("userList", listOfUser);
					model.setViewName("success");
					return model;
				}else if(user.get(0).getUserType().equals("admin")) {
					List<User> listOfUser = clientProxy.getAll();
					model.addObject("userList", listOfUser);
					model.setViewName("adminSuccess");
					return model;
				}
				return null;
				
			}else {
				model.addObject("loginFail", "User Not Found!");
				model.setViewName("fail");
				return model;
			}
		}else {
			model.addObject("loginFail", "User Not Found!");
			model.setViewName("fail");
			return model;
		}
		}catch(Exception e) {
			model.addObject("loginFail", "User Not Found!");
			model.setViewName("login");
			return model;
		}
		
	}
	
	@PostMapping("/insertMember")
	public ModelAndView insertUserPassword(HttpServletRequest request) {
		
		ModelAndView model = new ModelAndView();
		String userName = request.getParameter("userName").trim();
		String password = request.getParameter("password").trim();
		String userType = request.getParameter("userType").trim();
		
		User user = clientProxy.geteUsername(userName);
		
		if(user == null) {
			clientProxy.saveUserByNameAndPass(userName, password, userType);
			List<User> listOfUser = clientProxy.getAll();
			model.addObject("userList", listOfUser);
			model.addObject("userCreate", "User successfully created!");
			model.setViewName("adminSuccess");
			return model;
		}else {
			model.addObject("errorMessage", "Username Already Exist!");
			model.setViewName("insertPage");
			return model;
		}
		
		
	}
	
	@PostMapping("/deleteMember")
	public ModelAndView deletetUserPassword(HttpServletRequest request) {
		
		ModelAndView model = new ModelAndView();
		
		String username = request.getParameter("userName").trim();
		
		if(clientProxy.geteUsername(username) != null) {
			clientProxy.deleteUserByName(username);
			List<User> listOfUser = clientProxy.getAll();
			model.addObject("userList", listOfUser);
			model.addObject("userDelete", username+ " successfully deleted!");
			model.setViewName("adminSuccess");
			return model;
		}else {
			model.setViewName("fail");
			return model;
		}
	}
	
	@PostMapping("/updateMember")
	public ModelAndView updatetUserPassword(HttpServletRequest request) {
		
		ModelAndView model = new ModelAndView();

		
		String username = request.getParameter("userName").trim();
		String password = request.getParameter("password").trim();
		if(clientProxy.geteUsername(username) != null) {
			
			User user = clientProxy.geteUsername(username);
			
			clientProxy.updateUserByName(user.getUserName(),password);
			
			List<User> listOfUser = clientProxy.getAll();
			model.addObject("userList", listOfUser);
			model.addObject("userUpdate", username+" successfully updated!");
			model.setViewName("adminSuccess");
			return model;
		}else {
			model.setViewName("fail");
			return model;
		}
		
	}
	
	
}
