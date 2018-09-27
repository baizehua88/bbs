package com.bai.dao;

import java.util.List;

import com.bai.model.User;

public interface UserDao {
	public User login(User user);

	public List<User> getUsers();
	
	public int updateState(User user);

	public int updateUser(User user);

	public User getUserById(User user);

	public int addUser(User user);
}
