package ecom.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import ecom.dao.*;
import ecom.entities.*;

@Transactional
@Service("userService")
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserDAO userDAO;

	@Override
	public Users create(Users users) {
		return userDAO.create(users);
	}

	@Override
	public Users update(Users users) {
		
		return userDAO.update(users);
	}

	@Override
	public Users findByUsername(String username) {
		// TODO Auto-generated method stub
		return userDAO.findwByUsername(username);
	}

	@Override
	public Users findViewByUsername(String username, String email) {
		// TODO Auto-generated method stub
		return userDAO.findViewByUsername(username, email);
	}
	
}
