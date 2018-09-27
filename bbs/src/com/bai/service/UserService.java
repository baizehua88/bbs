package com.bai.service;

import java.util.List;

import com.bai.model.User;

public interface UserService {

	public User login(User user);

	public List<User> getUsers();

	public boolean updateState(User user);

	public boolean updateUser(User user);

	public User getUserById(User user);

	public int addUser(User user);


}
