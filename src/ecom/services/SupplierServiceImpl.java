package ecom.services;

import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import ecom.dao.*;
import ecom.entities.*;

@Transactional
@Service("supplierService")
public class SupplierServiceImpl implements SupplierService {

	@Autowired
	private SupplierDAO supplierDAO;
	/*
	 * (non-Javadoc)
	 * @see photostock.services.SupplierService#findAll()
	 */
	@Override
	public List<Supplier> findAll() {
		return supplierDAO.findAll();
	}

	@Override
	public Supplier find(int id) {
		return supplierDAO.find(id);
	}

	@Override
	public void create(Supplier supplier) {
		supplierDAO.create(supplier);
	}

	@Override
	public void update(Supplier supplier) {
		supplierDAO.update(supplier);
	}

	@Override
	public void delete(Supplier supplier) {
		supplierDAO.delete(supplier);
	}
	@Override
	public long countSupplier() {
		return supplierDAO.countSupplier();
	}

}
