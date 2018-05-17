package ecom.dao;

import java.util.List;

import org.hibernate.*;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ecom.entities.*;

@Repository("roleDAO")
public class RoleDAOImpl implements RoleDAO {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	@SuppressWarnings("unchecked")
	public List<Roles> findAll() {
		List<Roles> roles = null;
		Session session = sessionFactory.openSession();
		Transaction transaction = null;
		try {
			transaction = session.beginTransaction();
			roles = session.createCriteria(Roles.class).list();
			transaction.commit();
		} catch (Exception e) {
			roles = null;
			if(transaction != null){
				transaction.rollback();
			}
		} finally {
			session.close();
		}
		return roles;
	}

	@Override
	public Roles find(Integer id) {
		Roles role = null;
		Session session = sessionFactory.openSession();
		Transaction transaction = null;
		try {
			transaction = session.beginTransaction();
			role = (Roles) session.get(Roles.class, id);
			transaction.commit();
		} catch (Exception e) {
			role = null;
			if(transaction != null){
				transaction.rollback();
			}
		} finally {
			session.close();
		}
		return role;
	}

	

}
