package model;

import java.io.File;
import javax.servlet.http.Part;
import resources.Constants;

public class Product {
	String prodName, price, quantity, brand, imageUrlFromPart;
	

	public Product() {}
	
	public Product(String prodName, String price2, String quantity2, String brand, Part part){
		this.prodName = prodName;
		this.price = price2;
		this.quantity = quantity2;
		this.brand = brand;
		this.imageUrlFromPart = getImageUrl(part);
	}
	
	public String getImageUrlFromPart() {
		return imageUrlFromPart;
	}
	
	public void setImageUrlFromPart(Part part) {
		this.imageUrlFromPart = getImageUrl(part);
	}
	
	public String getprodName() {
		return prodName;
	}
	public void setprodName(String prodName) {
		this.prodName = prodName;
	}
	public String getprice() {
		return price;
	}
	public void setprice(String price) {
		this.price = price;
	}
	public String getquantity() {
		return quantity	;
	}
	public void setquantity(String quantity) {
		this.quantity = quantity;
	}
	public String getbrand() {
		return brand	;
	}
	public void setbrand(String brand) {
		this.brand = brand;
	}
	
	private String getImageUrl(Part part) {
		String savePath = Constants.IMAGE_DIR_SAVE_PATH;
		File fileSaveDir = new File(savePath);
		String imageUrlFromPart = null;
		if (!fileSaveDir.exists()) {
			fileSaveDir.mkdir();
		}
		String contentDisp = part.getHeader("content-disposition");
		String[] items = contentDisp.split(";");
		for (String s : items) {
			if (s.trim().startsWith("filename")) {
				imageUrlFromPart = s.substring(s.indexOf("=") + 2, s.length() - 1);
			}
		}
		if(imageUrlFromPart == null || imageUrlFromPart.isEmpty()) {
			imageUrlFromPart= "download.png";
		}
		return imageUrlFromPart;
	}
}