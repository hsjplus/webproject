package kr.co.pj.product.vo;

public class ProductVO {
	
	private int product_cd;
	private String pname;
	private String pimg_ori_nm;
	private String pimg_save_nm;
	private String pcontent;
	private int price;
	private int view_cnt;
	private String reg_date;
	private String ptype;
	
	public ProductVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public ProductVO(int product_cd, String pname, String pimg_ori_nm, String pimg_save_nm, String pcontent, int price,
			int view_cnt, String reg_date, String ptype) {
		super();
		this.product_cd = product_cd;
		this.pname = pname;
		this.pimg_ori_nm = pimg_ori_nm;
		this.pimg_save_nm = pimg_save_nm;
		this.pcontent = pcontent;
		this.price = price;
		this.view_cnt = view_cnt;
		this.reg_date = reg_date;
		this.ptype = ptype;
	}

	public int getProduct_cd() {
		return product_cd;
	}

	public void setProduct_cd(int product_cd) {
		this.product_cd = product_cd;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public String getPimg_ori_nm() {
		return pimg_ori_nm;
	}

	public void setPimg_ori_nm(String pimg_ori_nm) {
		this.pimg_ori_nm = pimg_ori_nm;
	}

	public String getPimg_save_nm() {
		return pimg_save_nm;
	}

	public void setPimg_save_nm(String pimg_save_nm) {
		this.pimg_save_nm = pimg_save_nm;
	}

	public String getPcontent() {
		return pcontent;
	}

	public void setPcontent(String pcontent) {
		this.pcontent = pcontent;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getView_cnt() {
		return view_cnt;
	}

	public void setView_cnt(int view_cnt) {
		this.view_cnt = view_cnt;
	}

	public String getReg_date() {
		return reg_date;
	}

	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}

	public String getPtype() {
		return ptype;
	}

	public void setPtype(String ptype) {
		this.ptype = ptype;
	}

	@Override
	public String toString() {
		return "ProductVO [product_cd=" + product_cd + ", pname=" + pname + ", pimg_ori_nm=" + pimg_ori_nm
				+ ", pimg_save_nm=" + pimg_save_nm + ", pcontent=" + pcontent + ", price=" + price + ", view_cnt="
				+ view_cnt + ", reg_date=" + reg_date + ", ptype=" + ptype + "]";
	}
	
	
}
