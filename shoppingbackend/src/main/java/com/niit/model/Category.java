package com.niit.model;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import org.springframework.stereotype.Component;
@Component
@Entity
@Table

public class Category {
	@Id
    int c_id;
 @Column
 String c_name;
 @Column
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

