<%@page import="companyDb.companyDo"%>
<%@page import="org.apache.catalina.filters.RequestDumperFilter"%>
<%@page import="studentDb.studentDo"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

<title>Insert title here</title>
</head>
<body>

<!--
	StudentDao 클래스를 이용하여 sDao 객체를 생성해주는 코드 
	만약에 자바코드로 표현을 하면, 
	StudentDao sDao = new StudentDao();	
  -->
<jsp:useBean id="adao" class="companyDb.companyDao" scope="application" />
<%
	//ArrayList에 저장되어있는 전체 학생정보를 가져오는 코드(Dao 이용)
	ArrayList<companyDo> aList = adao.getAllcompany();
%>

<div class="container">
  <div class="text-center mb-5">
	  <h1> Our Job Service </h1>
	  <p> 이 곳은 미래의 인재들을 찾기 위한 회사들의 채용 기본 정보가 담겨있는 사이트입니다. 자신에게 맞는 공고를 찾아 지원해보세요. 응원합니다 ! </p>  
  </div>
  
  <!-- 카드영역 -->
  <div class="row">
  
  	<%
  		//스크립트릿에서 자바코드 사용가능 (화면에 표시가되지 않음)
  		/* String srcString[] = {"./images/computer1.jpg",
  							  "./images/computer2.jpg",
  							  "./images/computer3.jpg"}; */
  							  
  	
  		for(int i =0; i < aList.size(); i ++ ){
  			companyDo company = aList.get(i);
  	%>		
  	
		<div class="col">
		   <div class="card" style="width: 18rem; margin:auto;">
		   	 <!-- 학생사진  --> 
			 <img src="./images/<%= company.getImage() %>" 
			 	  class="card-img-top" alt="..."
			 	  style="height:5rem; width:5rem; margin-left:20px;">
			 <!-- 학생정보 -->
			 <div class="card-body">
			   <h5 class="card-title">회사 이름 : <%=company.getName() %></h5>
			   <h5 class="card-title">회사 인원 : <%= company.getNumber() %></h5>
			   <h5 class="card-title">채용 기간 : <%= company.getPeriod() %></h5>
			   <h5 class="card-title">채용 분야 : <%= company.getJob() %></h5>
			   
			   
			   <a href="#" class="btn btn-primary">Go somewhere</a>
			 </div>
		   </div>
	    </div>
  		
  	<%		
  		}  	
  	%>
  
    <!-- <div class="col">
      <div class="card" style="width: 18rem; margin:auto;">
		  <img src="./images/computer1.jpg" class="card-img-top" alt="...">
		  <div class="card-body">
		    <h5 class="card-title">Card title</h5>
		    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
		    <a href="#" class="btn btn-primary">Go somewhere</a>
		  </div>
	  </div>
    </div>
    
    <div class="col">
      <div class="card" style="width: 18rem; margin:auto;">
		  <img src="./images/computer2.jpg" class="card-img-top" alt="...">
		  <div class="card-body">
		    <h5 class="card-title">Card title</h5>
		    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
		    <a href="#" class="btn btn-primary">Go somewhere</a>
		  </div>
	   </div>
    </div>
    
    <div class="col">
      <div class="card" style="width: 18rem; margin:auto;">
		  <img src="./images/computer3.jpg" class="card-img-top" alt="...">
		  <div class="card-body">
		    <h5 class="card-title">Card title</h5>
		    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
		    <a href="#" class="btn btn-primary">Go somewhere</a>
		  </div>
	  </div>
    </div> -->
    
    
  </div>
</div>

</body>
</html>
