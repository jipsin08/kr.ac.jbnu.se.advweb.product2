package kr.ac.jbnu.se.advweb.product.model;

public class Product {
	private String pCode;
	private String pName;
	private float pPrice;

	public Product() {
	}

	public Product(String pCode, String pName, float pPrice) {
		this.pCode = pCode;
		this.pName = pName;
		this.pPrice = pPrice;
	}

	public String getpCode() {
		return pCode;
	}

	public void setpCode(String pCode) {
		this.pCode = pCode;
	}

	public String getpName() {
		return pName;
	}

	public void setpName(String pName) {
		this.pName = pName;
	}

	public float getpPrice() {
		return pPrice;
	}

	public void setpPrice(float pPrice) {
		this.pPrice = pPrice;
	}
}