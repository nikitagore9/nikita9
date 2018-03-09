    package com.niit.model;
	import java.io.Serializable;

import javax.persistence.Column;
	import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
    import javax.persistence.Transient;
import javax.validation.constraints.Min;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotBlank;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;
	@Component
	@Entity
	@Table

	public class  Product implements Serializable {
		@Id
		@SequenceGenerator(name = "catseq",sequenceName="catseq")
		@GeneratedValue(strategy = GenerationType.AUTO,generator="catseq")
	    int p_id;
	 @Column
	 String p_name;
	
	 @Column
	 @Size(min=5)
	 @NotBlank
	 String description;
	 @Column
	 String imagePath;
	 @Column
	 @Min(value=1)
	 double qty;
	 @Column
	 @Min(value=1)
	 double price;
	 
	 
	 @OneToOne
	 @JoinColumn(name="c_id")
	 Category category;
	 @OneToOne
	 @JoinColumn(name="s_id")
	 Supplier supplier;
	 
	 
	 
	 
	 
	 @Transient
	 MultipartFile multipartfile;





	public int getP_id() {
		return p_id;
	}





	public void setP_id(int p_id) {
		this.p_id = p_id;
	}





	public String getP_name() {
		return p_name;
	}





	public void setP_name(String p_name) {
		this.p_name = p_name;
	}





	public String getDescription() {
		return description;
	}





	public void setDescription(String description) {
		this.description = description;
	}





	public String getImagePath() {
		return imagePath;
	}





	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}





	public double getQty() {
		return qty;
	}





	public void setQty(double qty) {
		this.qty = qty;
	}





	public double getPrice() {
		return price;
	}





	public void setPrice(double price) {
		this.price = price;
	}





	public Category getCategory() {
		return category;
	}





	public void setCategory(Category category) {
		this.category = category;
	}





	public Supplier getSupplier() {
		return supplier;
	}





	public void setSupplier(Supplier supplier) {
		this.supplier = supplier;
	}





	public MultipartFile getMultipartfile() {
		return multipartfile;
	}





	public void setMultipartfile(MultipartFile multipartfile) {
		this.multipartfile = multipartfile;
	}
	 
	 
	
	
	
	} 
	
