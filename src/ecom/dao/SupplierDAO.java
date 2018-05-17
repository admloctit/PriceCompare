package ecom.dao;

import java.util.*;

import ecom.entities.*;

public interface SupplierDAO {

	public List<Supplier> findAll();
	
	public Supplier find(int id);
	
	public void create(Supplier suppliers);
	
	public void update(Supplier supplier);
	
	public void delete(Supplier supplier);
	public long countSupplier();

	
}
