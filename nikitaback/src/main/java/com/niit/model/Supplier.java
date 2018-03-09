package com.niit.model;

	import java.io.Serializable;

import javax.persistence.Column;
	import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotBlank;
import org.springframework.stereotype.Component;
	@Component
	@Entity
	@Table

	public class Supplier implements Serializable {
		@Id
		@SequenceGenerator(name = "supseq",sequenceName="supseq")
		@GeneratedValue(strategy = GenerationType.AUTO,generator="supseq")
	    int s_id;
	 @Column
	 @Size(min=5)
	 @NotBlank
	 String s_name;
	 @Column
	 @Size(min=5)
	 @NotBlank
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
