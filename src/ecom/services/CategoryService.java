package ecom.services;

import java.util.*;

import ecom.entities.*;

public interface CategoryService {

	public List<Category> findAll();
	
	public Category find(int id);
	
	public void create(Category category);
	
	public void update(Category category);
	
	public void delete(Category category);
	
	public void mkmk(Category category);
	public long countCategory();
}
