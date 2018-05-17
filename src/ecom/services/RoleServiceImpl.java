package ecom.services;

import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import ecom.dao.*;
import ecom.entities.*;

@Transactional
@Service("roleService")
public class RoleServiceImpl implements RoleService {
	
	@Autowired
	private RoleDAO roleDAO;

	@Override
	public List<Roles> findAll() {
		return roleDAO.findAll();
	}

	@Override
	public Roles find(Integer id) {
		return roleDAO.find(id);
	}

	
	
}
