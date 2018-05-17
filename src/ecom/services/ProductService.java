package ecom.services;

import ecom.entities.*;
import java.util.*;

public interface ProductService {

	public List<Product> findAll();

	public Product find(int id);

	public void create(Product product);

	public void update(Product product);

	public void delete(Product product);

	public List<Product> latestProducts(int limit);

	public long countProduct();

	public List<Product> search(String keyword);

}
