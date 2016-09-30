package com.book.dao;

import java.util.List;


import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.book.model.*;

@Repository
@Transactional
public class CategoryDAOImpl implements CategoryDAO {

	@Autowired(required=true)
	public SessionFactory sessionFactory;
	
/*	public CategoryDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory=sessionFactory;
}
*/	
	/*@Override
	public List<Category> list() {
		@SuppressWarnings("unchecked")
		List<Category> listCategory =(List<Category>) sessionFactory.getCurrentSession().createCriteria(Category.class).setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		return listCategory;
	}*/

	/*@Override
	public Category get(String id) {
		String hql="from Category where id =" + "'" + id + "'";
		Query query=sessionFactory.getCurrentSession().createQuery(hql);
		
		@SuppressWarnings("unchecked")
		List<Category> listCategory = query.list();
		
		if(listCategory!= null && !listCategory.isEmpty()) {
			return listCategory.get(0);
			
		}
		return null;
	}*/
	@Override
	public void saveOrUpdate(Category categoryDetails) {
		System.out.println("bala save in database");
		sessionFactory.getCurrentSession().save(categoryDetails);
		System.out.println("bala save in database1");

	}
	/*
	 * @Override public void delete(String id) { Category categoryToDelete = new
	 * Category(); categoryToDelete.setId(id);
	 * sessionFactory.getCurrentSession().delete(categoryToDelete);
	 * 
	 * }
	 */

	@Override
	public void edit(Category categoryDetails) {
		// TODO Auto-generated method stub
		System.out.println("bala save in database2");

		((CategoryDAOImpl) sessionFactory.getCurrentSession()).edit(categoryDetails);
	}

	@Override
	public List getALLCategory() {
		// TODO Auto-generated method stub
		return sessionFactory.getCurrentSession().createQuery("from Category").list();
	}
}
