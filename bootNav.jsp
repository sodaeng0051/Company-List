<%@page import="companyDb.companyDo"%>
<%@page import="companyDb.companyDao"%>
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

<nav class="navbar navbar-expand-lg navbar-light" style="background-color: #e3f2fd;">
  <div class="container-fluid">
  
    <a class="navbar-brand" href="#">    
    
     <img src="./images/write.png" alt="" width="34" height="34" class="d-inline-block align-text-top">
      Software Convergence
      
    </a>
    
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" 
          		aria-current="page" 
          		href="bootMain.jsp">Home</a>
        </li>
        
        <li class="nav-item">
          <a class="nav-link active" 
          		aria-current="page" 
          		href="resister.jsp">Resister</a>
        </li>
  
      </ul>
      <form class="d-flex">
      
        <input class="form-control me-2" type="search" name= "Search" placeholder="Search" aria-label="Search">
        <button type="button" class="btn btn-outline-primary">Search</button>
      </form>
    </div>
  </div>
</nav>

</body>
</html>
