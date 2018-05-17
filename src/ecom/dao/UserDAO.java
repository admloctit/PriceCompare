package ecom.dao;

import ecom.entities.Users;

public interface UserDAO {
	
	public Users create(Users users);
	public Users update(Users users);
	public Users findwByUsername(String username);
	public Users findViewByUsername(String username,String email);	

	
}
