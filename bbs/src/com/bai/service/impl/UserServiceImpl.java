package com.bai.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.bai.dao.UserDao;
import com.bai.model.User;
import com.bai.service.UserService;

@Service("userService")
public class UserServiceImpl implements UserService {
	
	@Autowired
	@Qualifier("userDao")
	private UserDao userDao;
	
	@Override
	public User login(User user) {
				
		return	userDao.login(user);
	}

	@Override
	public List<User> getUsers() {
		// TODO Auto-generated method stub
		return userDao.getUsers();
	}

	@Override
	public boolean updateState(User user) {
		// TODO Auto-generated method stub
		if(userDao.updateState(user)>0){
			return true;
		}
		return false;
	}

	@Override
	public boolean updateUser(User user) {
		// TODO Auto-generated method stub
		if(userDao.updateUser(user)>0){
			return true;
		}
		return false;
	}

	@Override
	public User getUserById(User user) {
		// TODO Auto-generated method stub
		return userDao.getUserById(user);
	}

	@Override
	public int addUser(User user) {
		// TODO Auto-generated method stub
		return userDao.addUser(user);
	}

}
