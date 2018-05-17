package ecom.dao;

import org.hibernate.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ecom.entities.*;

@Repository("userDAO")
public class UserDAOImpl implements UserDAO {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public Users create(Users users) {
		Session session = sessionFactory.openSession();
		Transaction transaction = null;
		try {
			transaction = session.beginTransaction();
			session.save(users);
			transaction.commit();
		} catch (Exception e) {
			if(transaction != null){
				transaction.rollback();
			}
		} finally {
			session.close();
		}
		return users;
	}

	@Override
	public Users update(Users users) {
		Session session = sessionFactory.openSession();
		Transaction transaction = null;
		try {
			transaction = session.beginTransaction();
			session.update(users);
			transaction.commit();
		} catch (Exception e) {
			if(transaction != null){
				transaction.rollback();
			}
		} finally {
			session.close();
		}
		return users;
	}

	@Override
	public Users findwByUsername(String username) {
		Users t = null;
		Transaction transaction = null;
		Session session = sessionFactory.openSession();
		try {
			session = sessionFactory.openSession();
			transaction = session.beginTransaction();
			Query query = session.createQuery("SELECT u FROM Users u WHERE u.username =:username").setParameter("username", username);
			t = (Users) query.uniqueResult();
			transaction.commit();
		} catch (RuntimeException e) {
			if (transaction != null) {
				transaction.rollback();
			}
			t = null;
		} finally {
			session.flush();
			session.close();
		}
		return t;
	}

	@Override
	public Users findViewByUsername(String username, String email) {
		Users t = null;
		Transaction transaction = null;
		Session session = sessionFactory.openSession();
		try {
			session = sessionFactory.openSession();
			transaction = session.beginTransaction();
			Query query = session.createQuery("SELECT u FROM Users u WHERE u.username =:username and u.email =:email").setParameter("username", username).setParameter("email", email);
			t = (Users) query.uniqueResult();
			transaction.commit();
		} catch (RuntimeException e) {
			if (transaction != null) {
				transaction.rollback();
			}
			t = null;
		} finally {
			session.flush();
			session.close();
		}
		return t;
		
	}
	

	

}
