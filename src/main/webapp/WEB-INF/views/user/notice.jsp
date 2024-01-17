<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<!--          meta 선언          -->
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!-- Favicon-->
	<link rel="icon" type="image/x-icon" href="<%= request.getContextPath()%>/img/favicon.ico" />
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
	<!--          script 선언          -->
	<script type="text/javascript" src="<%= request.getContextPath()%>/js/jquery-3.7.0.js"></script> 
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
	 <!-- Font Awesome icons (free version)-->
    <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
 
    <!-- Simple line icons-->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/simple-line-icons/2.5.5/css/simple-line-icons.min.css" rel="stylesheet"/>
    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Lato:wght@300;400;700;900&display=swap" rel="stylesheet">	
    <!-- css -->
    <link rel="stylesheet"  href="./css/styles_main.css" />
    <link rel="stylesheet" href="./css/style_index.css"/>
    <link rel="stylesheet" href="<%= request.getContextPath()%>/css/bootstrap.min.css">
    <link rel="stylesheet"  href="<%= request.getContextPath()%>/css/style2.css"/>

	<!-- slider -->	
	
	<link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
	<link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick-theme.css"/>
	<script type="text/javascript" src="<%= request.getContextPath()%>/js/index.js" defer="defer"></script> 
	<style type="text/css">
	
		.accordion {
	    width: 100%;
	}

		.accordion-item {
		    width: 100%; /* If necessary, apply 100% width to accordion items as well */
		}
		
		@media (max-width: 1000px) {
			.row {
				height: auto;
			}
			
			#side {
				width: 100%;
			}
			
			.accordion {
				width: 100%;
			}
		}
	</style>
	<script type="text/javascript">
		function addCount(obj) {
			//alert($(obj).attr("aria-expanded"));
			if ($(obj).attr("aria-expanded")) {
				
			}
		}
	</script>
<title>공지사항</title>
</head>
<body>
	<jsp:include page="/WEB-INF/views/layout/userHeader.jsp"/>
	<div class="row">
		<div>
	    	<h3><strong>공지사항</strong></h3>
	  	</div>
		<div class="accordion accordion-flush col-md-10">
		  	<c:forEach var="item" items="${list}">
	  		<div class="accordion-item">	
	         	<h2 class="accordion-header">
			      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" 
			      data-bs-target="#notice${item.idx}" aria-expanded="false" aria-controls="notice${item.idx}" onclick="addCount(this)">
			        ${item.subject}
			      </button>
			    </h2>
			    <div id="notice${item.idx}" class="accordion-collapse collapse" data-bs-parent="#accordionFlush">
			      <div class="accordion-body"><pre>${item.context}</pre></div>
			    </div>
          	</div>
          	</c:forEach>
		</div>
	</div>
<!-- Footer-->
    <footer class="footer text-center">
        <div class="container px-4 px-lg-5">
            <ul class="list-inline mb-5">
                <li class="list-inline-item">
                    <a class="social-link rounded-circle text-white mr-3" href="#!"><i class="icon-social-facebook"></i></a>
                </li>
                <li class="list-inline-item">
                    <a class="social-link rounded-circle text-white mr-3" href="#!"><i class="icon-social-twitter"></i></a>
                </li>
                <li class="list-inline-item">
                    <a class="social-link rounded-circle text-white" href="#!"><i class="icon-social-github"></i></a>
                </li>
            </ul>
            <p class="text-muted small mb-0">Copyright &copy; poject</p>
        </div>
    </footer>
</body>
    

</html>