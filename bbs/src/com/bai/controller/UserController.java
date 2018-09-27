package com.bai.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.bai.dao.UserDao;
import com.bai.model.User;
import com.bai.service.UserService;


@Controller
@RequestMapping("/user")
public class UserController {
	
	@Autowired
	@Qualifier("userService")
	private UserService userService;

	@RequestMapping("/login.do")
	public ModelAndView Login(User user,HttpSession session) {
		ModelAndView mv = new ModelAndView();
		User user1 = userService.login(user);
		if (user1!=null) {
			// 登录成功
			mv.addObject("user", user1);
			mv.setViewName("index");
			System.out.println(user1);
			session.setAttribute("user", user1);
		} else {
			// 登录失败
			mv.setViewName("redirect:/jsp/login.jsp");
		}

		return mv;
	}
	
	@RequestMapping("/userList.do")
	public ModelAndView UserList() {
		ModelAndView mv = new ModelAndView();
		List<User> userList = userService.getUsers();
		mv.addObject("userList", userList);
		mv.setViewName("userList");
		
		return mv;
	}
	
	//禁言/解封
	@RequestMapping("/editState.do")
	public  ModelAndView EditState(User user){
		ModelAndView mv = new ModelAndView();
		System.out.println("开始");
		if(userService.updateState(user)){
			mv.setViewName("redirect:/user/userList.do");
			System.out.println("成功");
		}else {
			System.out.println("失败");
		}
		return mv;		
	}
	
	//修改个人资料
	@RequestMapping("/editUser.do")
	public ModelAndView EditUser(User user){
		ModelAndView mv = new ModelAndView();
		System.out.println("修改资料开始");
		if (userService.updateUser(user)) {
			System.out.println("资料修改成功");
			mv.setViewName("redirect:/user/userList.do");
			System.out.println("修改资料成功");
		}else {
			System.out.println("修改资料失败");
		}
		return mv;
		
	}
	
	@RequestMapping("/ajaxUpdate.do")
	public void ajaxUpdate(String name,HttpServletResponse response) throws IOException{
		
		response.getWriter().print("ajax修改失败"); 
	}
	
	//根据id查询用户
	@RequestMapping("/getUserById.do")
	public ModelAndView GetUserById(User user) {
		ModelAndView mv = new ModelAndView();
		User user1 = userService.getUserById(user);
		if (user1!=null) {
			// 查询成功
			mv.addObject("user", user1);
			mv.setViewName("editUser");
			System.out.println("根据id："+user1);
		} else {
			// 查询失败-------------
			mv.setViewName("redirect:/login.jsp");
		}

		return mv;
	}
	
	//用户注册
	@RequestMapping("/addUser.do")
	public ModelAndView AddUser(User user) {
		ModelAndView mv = new ModelAndView();
		if (userService.addUser(user)>0) {
			// 注册成功
			//mv.addObject("user", user1);
			mv.setViewName("redirect:/login.jsp");
			
		} else {
			// 注册失败-------------
			mv.setViewName("redirect:/register.jsp");
		}

		return mv;
	}
	
	
	
	
}
