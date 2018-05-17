package ecom.dao;

import java.util.*;

import ecom.entities.*;

public interface BrandDAO {

	public List<Brand> findAll();
	
	public Brand find(int id);
	
	public Brand findByName(String name);
	
	public void create(Brand brand);
	
	public void update(Brand brand);
	
	public void delete(Brand brand);
	public long countBrand();

	
}
