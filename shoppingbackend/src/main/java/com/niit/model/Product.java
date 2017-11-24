    package com.niit.model;
	import javax.persistence.Column;
	import javax.persistence.Entity;
	import javax.persistence.Id;
	import javax.persistence.Table;
	import org.springframework.stereotype.Component;
	@Component
	@Entity
	@Table

	public class  Product {
		@Id
	    int p_id;
	 @Column
	 String p_name;
	 @Column
	 String description;
	 public int getp_id() {
	  return p_id;
	 }
	 public void setp_id(int p_id) {
	  this.p_id = p_id;
	 }
	 public String getp_name() {
	  return p_name;
	 }
	 public void setp_name(String p_name) {
	  this.p_name = p_name;
	 }
	 
	 public String getDescription() {
	  return description;
	 }
	 public void setDescription(String description) {
	  this.description = description;
	 } 
	}

