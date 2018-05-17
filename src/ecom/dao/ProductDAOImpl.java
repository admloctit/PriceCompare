package ecom.dao;

import java.util.*;

import ecom.entities.*;

import org.hibernate.*;
import org.hibernate.criterion.Order;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("productDAO")
public class ProductDAOImpl implements ProductDAO {

	@Autowired
	private SessionFactory sessionFactory;

	@SuppressWarnings("unchecked")
	@Override
	public List<Product> findAll() {
		List<Product> list = new ArrayList<Product>();
		Transaction transaction = null;
		Session session = sessionFactory.openSession();
		try {
			transaction = session.beginTransaction();
			list = session.createCriteria(Product.class).list();
			transaction.commit();
		} catch (RuntimeException e) {
			if (transaction != null) {
				transaction.rollback();
			}
			list = null;
		} finally {
			session.flush();
			session.close();
		}
		return list;
	}

	@Override
	public Product find(int id) {
		Product t = null;
		Transaction transaction = null;
		Session session = sessionFactory.openSession();
		try {
			transaction = session.beginTransaction();
			t = (Product) session.get(Product.class, id);
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
	public void create(Product product) {
		Transaction transaction = null;
		Session session = sessionFactory.openSession();
		try {
			transaction = session.beginTransaction();
			session.save(product);
			transaction.commit();
		} catch (RuntimeException e) {
			if (transaction != null) {
				transaction.rollback();
			}
		} finally {
			session.flush();
			session.close();
		}
	}

	@Override
	public void update(Product product) {
		Transaction transaction = null;
		Session session = sessionFactory.openSession();
		try {
			transaction = session.beginTransaction();
			session.update(product);
			transaction.commit();
		} catch (RuntimeException e) {
			if (transaction != null) {
				transaction.rollback();
			}
		} finally {
			session.flush();
			session.close();
		}
	}

	@Override
	public void delete(Product product) {
		Transaction transaction = null;
		Session session = sessionFactory.openSession();
		try {
			transaction = session.beginTransaction();
			session.delete(product);
			transaction.commit();
		} catch (RuntimeException e) {
			if (transaction != null) {
				transaction.rollback();
			}
		} finally {
			session.flush();
			session.close();
		}
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Product> latestProducts(int limit) {
		List<Product> list = new ArrayList<Product>();
		Transaction transaction = null;
		Session session = sessionFactory.openSession();
		try {
			transaction = session.beginTransaction();
			list = session.createCriteria(Product.class)
					.addOrder(Order.desc("id"))
					.setMaxResults(limit)
					.list();
			transaction.commit();
		} catch (RuntimeException e) {
			if (transaction != null) {
				transaction.rollback();
			}
			list = null;
		} finally {
			session.flush();
			session.close();
		}
		return list;
	}

	@Override
	public long countProduct() {
		long t = 0;
		Transaction transaction = null;
		Session session = null;
		try {
			session = sessionFactory.openSession();
			transaction = session.beginTransaction();
/*			System.out.println(session.createQuery("SELECT count(c.id) FROM Category c").uniqueResult());
*/			Query query = session.createQuery("SELECT count(*) FROM Product");
			t = (Long) query.uniqueResult();
			transaction.commit();
		} catch (RuntimeException e) {
			if (transaction != null) {
				transaction.rollback();
			}
			t = 0;
		} finally {
			session.flush();
			session.close();
		}
		return t;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Product> search(String keyword) {
		List<Product> result = null;
		Session session = sessionFactory.openSession();
		Transaction transaction = null;
		try {
			transaction = session.beginTransaction();
			result = session.createQuery("select p from Product p "
							+ "where p.name like :keyword or "
							+ "p.code like :keyword or "
							+ "p.price like :keyword or "
							+ "p.chip like :keyword")
							.setString("keyword", "%" + keyword + "%")
							.setMaxResults(20)
							.list();
			transaction.commit();
		} catch (Exception e) {
			result = null;
			if(transaction != null){
				transaction.rollback();
			}
		} finally {
			session.close();
		}
		return result;
	}


}
