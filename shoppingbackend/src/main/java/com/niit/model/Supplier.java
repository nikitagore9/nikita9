package com.niit.model;

	import javax.persistence.Column;
	import javax.persistence.Entity;
	import javax.persistence.Id;
	import javax.persistence.Table;
	import org.springframework.stereotype.Component;
	@Component
	@Entity
	@Table

	public class Supplier {
		@Id
	    int s_id;
	 @Column
	 String s_name;
	 @Column
	 String address;
	 public int gets_id() {
	  return s_id;
	 }
	 public void sets_id(int s_id) {
	  this.s_id = s_id;
	 }
	 public String gets_name() {
	  return s_name;
	 }
	 public void sets_name(String s_name) {
	  this.s_name = s_name;
	 }
	 
	 public String getaddress() {
	  return address;
	 }
	 public void setaddress(String address) {
	  this.address = address;
	 } 
	}
