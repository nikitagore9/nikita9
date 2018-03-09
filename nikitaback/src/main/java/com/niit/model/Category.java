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

public class Category implements Serializable {
	@Id
	@SequenceGenerator(name = "catseq",sequenceName="catseq")
	@GeneratedValue(strategy = GenerationType.AUTO,generator="catseq")
    int c_id;
	
 @Column
 @NotBlank
 @Size(min=3,message="category name should be more than 3 characters")
 String c_name;
 @Column
 @NotBlank
 @Size(min=8)
 String description;
 public int getc_id() {
  return c_id;
 }
 public void setc_id(int c_id) {
  this.c_id = c_id;
 }
 public String getc_name() {
  return c_name;
 }
 public void setc_name(String c_name) {
  this.c_name = c_name;
 }
 
 public String getDescription() {
  return description;
 }
 public void setDescription(String description) {
  this.description = description;
 } 
}

