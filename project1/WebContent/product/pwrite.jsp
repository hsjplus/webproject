<%@page import="kr.co.pj.product.dao.ProductDAO"%>
<%@page import="kr.co.pj.product.vo.ProductVO"%>
<%@page import="java.io.File"%>
<%@page import="java.util.Enumeration"%>
<%@page import="kr.co.pj.util.MyFileNamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("utf-8");

	/*
		Fileio (pwriteform.jsp에서  enctype = "multipart/form-data" 이어야 함)
	*/
	String saveFolder = 
		"C:\\Users\\kim hyun min\\Desktop\\홍석준\\web-project\\project1\\WebContent\\images";
	
	MultipartRequest multi = new MultipartRequest(request, saveFolder, 1024 * 1024 * 3, 
			"utf-8", new MyFileNamePolicy());
	
	
	/*
		DAO
	*/
	
		Enumeration files =  multi.getFileNames();
		String fileName = (String)files.nextElement();
		File f = multi.getFile(fileName);
		
		if(f !=null){
			String fileOriName = multi.getOriginalFileName(fileName);
			String fileSaveName = multi.getFilesystemName(fileName);
			
			ProductVO product = new ProductVO();
			
			product.setPname( multi.getParameter("pname") );
			product.setPimg_ori_nm( fileOriName );
			product.setPimg_save_nm(fileSaveName);
			product.setPcontent(multi.getParameter("pcontent"));
			product.setPrice( Integer. parseInt( multi.getParameter("price") ) ); 
			product.setPtype( multi.getParameter("ptype") );
			
			ProductDAO dao = new ProductDAO();
			dao.insertFile(product);
		}
	
	

%>
<script>
	alert('상품을 등록했습니다');
	location.href = "/project1/index.jsp";
</script>