package ecom.services;

import ecom.entities.*;

public interface UserService {

	public Users create(Users users);
	public Users update(Users users);
	public Users findByUsername(String username);
	public Users findViewByUsername(String username,String email);	


}
