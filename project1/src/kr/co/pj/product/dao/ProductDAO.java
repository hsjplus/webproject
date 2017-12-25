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
	
	public List<ProductVO> selectAllProduct(int idx){
		
		List<ProductVO> productList = new ArrayList<>();
		
		StringBuilder sql = new StringBuilder();
		sql.append(" select pname, pimg_save_nm,  price, view_cnt ");
		sql.append(" , to_char(reg_date, 'yyyy-mm-dd') reg_date ");
		sql.append(" from product ");
		sql.append(" where product_cd > ? and product_cd <= ? ");
		sql.append(" order by product_cd asc ");
		
		try {
			Connection conn = new ConnectionFactory().getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql.toString());
			pstmt.setInt(1, (idx-1)*4 );
			pstmt.setInt(2, idx*4 );
			
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
	
	// 오버로딩(전체 게시물 수) 
	public List<ProductVO> selectAllProduct(){
		
		List<ProductVO> productList = new ArrayList<>();
		
		StringBuilder sql = new StringBuilder();
		sql.append(" select pname ");
		sql.append(" from product ");
		
		try {
			Connection conn = new ConnectionFactory().getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql.toString());
			
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()){
				ProductVO product = new ProductVO();
				productList.add(product);
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return productList;
	}
	
	/**
	 *  상품 입력 메소드 
	 */
	
	public void insertFile(ProductVO product) {
		StringBuilder sql = new StringBuilder();
		sql.append(" insert into product ");
		sql.append(" values(product_cd_idx.nextval, ?, ?, ?, ?, ?, 0, sysdate, ? ) ");
		
		try(
			Connection conn = new ConnectionFactory().getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql.toString());	
		){
			int loc = 1;
			pstmt.setString(loc++, product.getPname() );
			pstmt.setString(loc++, product.getPimg_ori_nm() );
			pstmt.setString(loc++, product.getPimg_save_nm() );
			pstmt.setString(loc++, product.getPcontent() );
			pstmt.setInt(loc++, product.getPrice() );
			pstmt.setString(loc++, product.getPtype());
			
			pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

	
}
