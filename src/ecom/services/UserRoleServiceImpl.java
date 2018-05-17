package ecom.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import ecom.dao.*;
import ecom.entities.*;

@Transactional
@Service("userRoleService")
public class UserRoleServiceImpl implements UserRoleService {
	
	@Autowired
	private UserRoleDAO userRoleDAO;

	@Override
	public void create(UserRole userRole) {
		userRoleDAO.create(userRole);
	}

}
