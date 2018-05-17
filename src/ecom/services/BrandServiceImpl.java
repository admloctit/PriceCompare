package ecom.services;

import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import ecom.dao.*;
import ecom.entities.*;

@Transactional
@Service("brandService")
public class BrandServiceImpl implements BrandService {

	@Autowired
	private BrandDAO brandDAO;
	/*
	 * (non-Javadoc)
	 * @see photostock.services.CategoryService#findAll()
	 */
	@Override
	public List<Brand> findAll() {
		return brandDAO.findAll();
	}

	@Override
	public Brand find(int id) {
		return brandDAO.find(id);
	}

	@Override
	public void create(Brand brand) {
		brandDAO.create(brand);
	}

	@Override
	public void update(Brand brand) {
		brandDAO.update(brand);
	}

	@Override
	public void delete(Brand brand) {
		brandDAO.delete(brand);
	}



	@Override
	public long countBrand() {
		return brandDAO.countBrand();
	}

	@Override
	public Brand findByName(String name) {
		return brandDAO.findByName(name);
	}

}
