package ecom.dao;

import java.util.List;

import ecom.entities.Roles;

public interface RoleDAO {
	
	public List<Roles> findAll();
	
	public Roles find(Integer id);
	
}
