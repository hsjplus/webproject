package kr.co.pj.product.vo;

public class ProductVO {
	
	private String name;
	private String imgOriName;
	private String imgSaveName;
	private int price;
	private int viewCnt;
	private String date;
	private String type;
	
	public ProductVO() {
		super();
	}

	public ProductVO(String name, String imgOriName, String imgSaveName, int price, int viewCnt, String date,
			String type) {
		super();
		this.name = name;
		this.imgOriName = imgOriName;
		this.imgSaveName = imgSaveName;
		this.price = price;
		this.viewCnt = viewCnt;
		this.date = date;
		this.type = type;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getImgOriName() {
		return imgOriName;
	}

	public void setImgOriName(String imgOriName) {
		this.imgOriName = imgOriName;
	}

	public String getImgSaveName() {
		return imgSaveName;
	}

	public void setImgSaveName(String imgSaveName) {
		this.imgSaveName = imgSaveName;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getViewCnt() {
		return viewCnt;
	}

	public void setViewCnt(int viewCnt) {
		this.viewCnt = viewCnt;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	@Override
	public String toString() {
		return "ProductVO [name=" + name + ", imgOriName=" + imgOriName + ", imgSaveName=" + imgSaveName + ", price="
				+ price + ", viewCnt=" + viewCnt + ", date=" + date + ", type=" + type + "]";
	}
		
	
}
