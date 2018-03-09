package com.niit.dao;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.model.Category;

@Repository("categoryDao")

@Transactional
public class CategoryDaoImpl implements CategoryDao {
 @Autowired
 SessionFactory sessionFactory;

 @Override
 public List <Category > getAllCategory() {
  Session session = sessionFactory.openSession();
  Query query = session.createQuery("from Category");
              
  List < Category > Categorylist = query.list();
  session.close();
  return Categorylist;
 }

 @Override
 public boolean save(Category p) {
  try {
   Session session = sessionFactory.openSession();
   session.save(p);
   session.flush();
   session.close();
  } catch (Exception e) {
   return false;
  }

  return true;
 }

 
 @Override
 public boolean update(Category p) {
  try {
   Session session = sessionFactory.openSession();
   session.update(p);
   session.flush();
   session.close();
  } catch (Exception e) {
   return false;
  }

  return true;
 }

 @Override
 public Category getById(int id) {

  Session session = sessionFactory.openSession();
  Category p = (Category) session.get(Category.class, id);
  session.close();
  return p;
 }

@Override
public boolean deleteById(int id) {
	// TODO Auto-generated method stub
	
	try {
		   Session session = sessionFactory.openSession();
		   Category c= (Category) session.get(Category.class,id);
		   if (c==null)
			   return false;
		
		   session.delete(c);
		   session.flush();
		   session.close();
		  } catch (Exception e) {
		   return false;
		  }

		  return true;
		 }

}
