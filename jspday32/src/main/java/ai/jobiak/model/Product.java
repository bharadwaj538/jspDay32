package ai.jobiak.model;

import java.io.Serializable;


	public class Product implements Serializable{

		private String ProductId;
		private String Description;
		private double Price;
		
	public Product() {
		
	}

	public Product(String productId, String description, double price) {
		super();
		this.ProductId = productId;
		this.Description = description;
		this.Price = price;
	}

	public String getProductId() {
		return ProductId;
	}

	public void setProductId(String productId) {
		this.ProductId = productId;
	}

	public String getDescription() {
		return Description;
	}

	public void setDescription(String description) {
		this.Description = description;
	}

	public double getPrice() {
		return Price;
	}

	public void setPrice(double price) {
		this.Price = price;
	}

	@Override
	public String toString() {
		return "Product [productId=" + ProductId + ", description=" + Description + ", price=" + Price + "]";
	}
	}
