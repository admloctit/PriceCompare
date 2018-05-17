package ecom.dao;

import ecom.entities.*;
import java.util.*;

public interface ProductDAO {

	public List<Product> findAll();
	
	public Product find(int id);
	
	public void create(Product category);
	
	public void update(Product category);
	
	public void delete(Product category);
	
	public List<Product> latestProducts(int limit);
	public long countProduct();
	public List<Product> search(String keyword);


	
}
