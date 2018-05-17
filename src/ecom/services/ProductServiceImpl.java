package ecom.services;

import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import ecom.entities.*;
import ecom.dao.*;

@Transactional
@Service("productService")
public class ProductServiceImpl implements ProductService {

	@Autowired
	private ProductDAO productDAO;
	
	@Override
	public List<Product> findAll() {
		return productDAO.findAll();
	}

	@Override
	public Product find(int id) {
		return productDAO.find(id);
	}

	@Override
	public void create(Product product) {
		productDAO.create(product);
	}

	@Override
	public void update(Product product) {
		productDAO.update(product);
	}

	@Override
	public void delete(Product product) {
		productDAO.delete(product);
	}

	@Override
	public List<Product> latestProducts(int limit) {
		return productDAO.latestProducts(limit);
	}

	@Override
	public long countProduct() {
		return productDAO.countProduct();
	}

	@Override
	public List<Product> search(String keyword) {
		return productDAO.search(keyword);

	}

}
