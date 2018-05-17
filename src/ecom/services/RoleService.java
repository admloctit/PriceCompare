package ecom.services;

import java.util.List;

import ecom.entities.*;

public interface RoleService {

	public List<Roles> findAll();
	
	public Roles find(Integer id);
}
