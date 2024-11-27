<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" 
integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- <h2>resister.jsp</h2> -->
	
	<div class="container" style="width:1080px">
		<%@ include file="bootNav.jsp" %>
		
			<div class="container" 
			 style="max-width:600px; 
			 		border:1px solid #ccc;
			 		padding:20px;
			 		border-radius:10px;
			 		margin-top:30px;
			 		box-shadow:0 10px 20px rgba(0,0,0,0.3);  ">
			  <!-- 테이블 제목 -->
			  <p class="fw-bold fs-1 "> 채용 정보 </p>		 		
				 		
			  <!-- Content here -->
				<form action="registerProc.jsp" method="post">
				  
				  <!-- name  -->
				  <div class="mb-3">
				    <label for="exampleInputName" class="form-label">회사 이름</label>
				    <input type="text" class="form-control" id="exampleInputName"  
				    	   name="name">	    
				  </div>
				  
				  <!-- number  -->
				  <div class="mb-3">
				    <label for="exampleInputNumber" class="form-label">채용 인원</label>
				    <input type="number" class="form-control" id="exampleInputNumber"  
				    	   name="number">	    
				  </div>
				  
				  <!-- tel  -->
				  <div class="mb-3">
				    <label for="exampleInputPeriod" class="form-label">채용 기간</label>
				    <input type="text" class="form-control" id="exampleInputPeriod"  
				    	   name="period">	    
				  </div>
				  
				  <!-- 셀렉트 메뉴를 이용한 취미 선택 -->
				  <div class="mb-3">
				    <label for="exampleInputJob" class="form-label">채용 분야</label>
				    
				    <!-- <input type="tel" class="form-control" id="exampleInputPhone"  
				    	   name="Phone"> 위 코드랑 비교해보기 -->    
				    	   
				     <select class="form-select" 
				  		  aria-label="Default select example"
				  		  name="job">
					  <option value="프론트엔드">프론트엔드</option>
					  <option value="백엔드">백엔드</option>
					  <option value="데이터베이스">데이터베이스 관리자</option>
					</select>
				  </div>
				  
				  <!-- image  -->
				  <div class="mb-3">
				    <label for="exampleInputImage" class="form-label">회사 이미지</label>
				    <input type="text" class="form-control" id="exampleInputImage"  
				    	   name="image">
				  </div>
				 
				    <button type="submit" class="btn btn-outline-secondary">등록</button>
				  	<button type="reset" class="btn btn-outline-danger">취소</button>
				  	
				 </div>
			  

			</form>
		
		</div>
	
	</div>
	
	
</body>
</html>
