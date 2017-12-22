package kr.co.pj.product.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import kr.co.pj.product.vo.ProductVO;
import kr.co.pj.util.ConnectionFactory;

public class ProductDAO {

	/**
	 * 상품 전체 조회 메소드 
	 */
	
	public List<ProductVO> selectAllProduct(){
		
		List<ProductVO> productList = new ArrayList<>();
		
		StringBuilder sql = new StringBuilder();
		sql.append(" select pname, pimg_save_nm,  price, view_cnt ");
		sql.append(" , to_char(reg_date, 'yyyy-mm-dd') reg_date ");
		sql.append(" from product ");
		
		try {
			Connection conn = new ConnectionFactory().getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql.toString());
		
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()){
				ProductVO product = new ProductVO();
				product.setPname(rs.getString(1));
				product.setPimg_save_nm(rs.getString(2));
				product.setPrice(rs.getInt(3));
				product.setView_cnt(rs.getInt(4));
				product.setReg_date(rs.getString(5));
				productList.add(product);
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return productList;
	}
	
	
}
