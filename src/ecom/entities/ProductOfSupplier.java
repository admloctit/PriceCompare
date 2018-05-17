package ecom.entities;

public class ProductOfSupplier {
	private String productName;
	private String supplierName;
	private String price;
	private String logoSupplier;
	private String linkToSupplier;

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public String getSupplierName() {
		return supplierName;
	}

	public void setSupplierName(String supplierName) {
		this.supplierName = supplierName;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getLogoSupplier() {
		return logoSupplier;
	}

	public void setLogoSupplier(String logoSupplier) {
		this.logoSupplier = logoSupplier;
	}

	public String getLinkToSupplier() {
		return linkToSupplier;
	}

	public void setLinkToSupplier(String linkToSupplier) {
		this.linkToSupplier = linkToSupplier;
	}

	public ProductOfSupplier(String productName, String supplierName, String price, String logoSupplier,
			String linkToSupplier) {
		super();
		this.productName = productName;
		this.supplierName = supplierName;
		this.price = price;
		this.logoSupplier = logoSupplier;
		this.linkToSupplier = linkToSupplier;
	}

	public ProductOfSupplier() {
		super();
	}

}
