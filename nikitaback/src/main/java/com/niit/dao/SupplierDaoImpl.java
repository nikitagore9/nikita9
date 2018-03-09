package com.niit.dao;


import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.model.Supplier;

@Repository("supplierDao")

@Transactional
public class SupplierDaoImpl implements SupplierDao {
 @Autowired
 SessionFactory sessionFactory;

 @Override
 public List <Supplier > getAllSupplier() {
  Session session = sessionFactory.openSession();
  Query query = session.createQuery("from Supplier");
              
  List < Supplier > Supplierlist = query.list();
  session.close();
  return Supplierlist;
 }

 @Override
 public boolean save(Supplier p) {
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
 public boolean update(Supplier p) {
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
 public Supplier getById(int id) {

  Session session = sessionFactory.openSession();
  Supplier p = (Supplier) session.get(Supplier.class, id);
  session.close();
  return p;
 }

@Override
public boolean deleteById(int id) {
	// TODO Auto-generated method stub
	
	try {
		   Session session = sessionFactory.openSession();
		 Supplier s =(Supplier) session.get(Supplier.class, id);
		 if(s==null)
			 return false;
		   session.delete(s);
		   session.flush();
		   session.close();
		  } catch (Exception e) {
		   return false;
		  }

		  return true;
		 }

}
