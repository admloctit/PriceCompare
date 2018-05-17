package ecom.services;

import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import ecom.dao.*;
import ecom.entities.*;

@Transactional
@Service("categoryService")
public class CategoryServiceImpl implements CategoryService {

	@Autowired
	private CategoryDAO categoryDAO;
	/*
	 * (non-Javadoc)
	 * @see photostock.services.CategoryService#findAll()
	 */
	@Override
	public List<Category> findAll() {
		return categoryDAO.findAll();
	}

	@Override
	public Category find(int id) {
		return categoryDAO.find(id);
	}

	@Override
	public void create(Category category) {
		categoryDAO.create(category);
	}

	@Override
	public void update(Category category) {
		categoryDAO.update(category);
	}

	@Override
	public void delete(Category category) {
		categoryDAO.delete(category);
	}

	@Override
	public void mkmk(Category category) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public long countCategory() {
		return categoryDAO.countCategory();
	}

}
