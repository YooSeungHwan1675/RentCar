<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>         <!-- jstl c -->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>      <!-- jstl fmt -->
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>   <!-- jstl fn -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>문의</title>
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
    <!-- Font Awesome icons (free version)-->
    <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
    <!-- Simple line icons-->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/simple-line-icons/2.5.5/css/simple-line-icons.min.css" rel="stylesheet" />
    <!-- Google fonts-->
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css" />
	<link rel="stylesheet" href="<%= request.getContextPath()%>/css/styles_main.css"/>
    <link rel="stylesheet" href="<%= request.getContextPath()%>/css/style_index.css">

    <script type="text/javascript" src="<%= request.getContextPath()%>/js/jquery-3.7.0.js"></script> 
	<script type="text/javascript">
		function questionOK (){
		   
			let title =  $('input[name=title]').val();
			let contents = $('textarea[name=contents]').val();
			let type = $('select').eq(0).val();
			let userid =  $('input[name=userid]').val();
		   
			if(title.length == 0 || title == ''){
				alert('제목을 입력하세요.');
				return false;
			}
			
			if(type == '질의 유형'){
				alert('질의 유형을 선택하세요.');
				return false;
			}
		   
			if(contents.length == 0 || contents == ''){
				alert('내용을 입력하세요.');
				return false;
			}
			
			if(userid.length == 0 || userid == ''){
				alert('로그인시 이용할 수 있습니다.');
				return false;
			}
		   
		}
		
	</script> 
	
	<style type="text/css">
	    table {
	        border-collapse: collapse; /* 테두리를 합치고 간격을 없앰 */
	        table-layout: fixed;
	    }
	
	    table, th, td {
	        border: 1px solid black; /* 테두리 스타일 지정 */
	    }
	
	    th, td {
	        padding: 8px; /* 셀 내부 여백 설정 */
	        text-align: center; /* 셀 내용 가운데 정렬 */
	        justify-content: center;
	        
	        /* 셀 내에서 긴 텍스트를 "..."로 생략하는 스타일 */
	        white-space: nowrap;
	        overflow: hidden;
	        text-overflow: ellipsis; 
	        /* 줄 바꿈 */
	 		/* word-wrap: break-word; */
	    }
	
	    thead {
	        background-color: #333; /* 테이블 헤더 배경색 설정 */
	        color: white; /* 헤더 텍스트 색상 설정 */
	    }
	
	    tbody tr:nth-child(odd) {
	        background-color: #f2f2f2; /* 홀수 행 배경색 설정 */
	    }
	</style>
	
	
</head>
<body>
	
	<!-- 문의 사항 출력 -->
	<c:if test="${list != null}">
	<h3 class="mb-4 text-center">문의글 목록</h3> 
	<div style="display: flex; justify-content: center;">
		<table class="table table-striped table-hover" style="width: 500px;">
		    <thead class="table-dark">
		        <tr>
		            <th style="width: 100px;">질의</th>
		            <th style="width: 350px;">제목</th>
		            <th style="width: 150px;">확인 여부</th>
		        </tr>
		    </thead>
		    <tbody class="table-group-divider">
			
		        <c:forEach var="item" items="${list}">
		            <tr>
		                <td>${item.type}</td>
		                <c:set var="title" value="${fn:replace(item.title, '<', '&lt;')}"/>
		                <c:set var="title" value="${fn:replace(title, '>', '&gt;')}"/>
		                <td style="width: 350px;"><a href="<%= request.getContextPath()%>/question/detail.do?idx=${item.idx}">${item.title}</a></td>
		                <td>${item.answer}</td>
		            </tr>
		        </c:forEach>
		    </tbody>
		</table>
	</div>
	</c:if>
	<nav aria-label="Page navigation">${ paging }</nav>
	
	
	<!-- 문의 하기--> 
	<section class="section-padding">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="col-lg-12">
						<div class="row mb-3">
							<div class="col-lg-2"></div>
							<div class="col-lg-2"></div>
						</div>
						<form class="comment-form mb-5 bg-grey p-5" action="<%= request.getContextPath()%>/question/insert.do"
							method="post" onsubmit="return questionOK()">
							<h3 class="mb-4 text-center">문의 하기</h3>
							<div class="row">
								<!-- 제목 -->
								<div class="col-lg-12">
									<h5 class="mb-3 text-center">제목</h5>
									<input type="text" class="form-control mb-3" name="title"
										autocomplete="off" placeholder="제목 :" maxLength = 100/>
								</div>
								
								<!-- 질의 카테고리 -->
								<div class="col-md-12">
									<h5 class="mb-3 text-center">질의 유형</h5>
									<select class="form-control mb-3" name="type">
										<option>질의 유형</option>
										<option>예약</option>
										<option>불만</option>
										<option>기타</option>
									</select>
								</div>

								<!-- 글 내용 -->
								<div class="col-lg-12">
									<h5 class="mb-3 text-center">질의</h5>
									<textarea class="form-control mb-4" name="contents" rows="10" cols="30" maxLength = 1000
										placeholder="내용" style="resize: none;" ></textarea>
								</div>
								<div class="row">
									<div class="col-lg-12 text-center">
										<div class="btn-group">
											<input class="btn btn-primary" type="submit" value="생성하기"/>
											<input class="btn btn-primary" type="reset" value="다시쓰기"/>
											<input class="btn btn-primary" type="button" value="돌아가기" onclick="history.back()"/>
										</div>
									</div>
								</div>
							</div>
							<!-- (hidden) 작성자 ID, answer -->
							<input type="hidden" name="userid" value="${sessionScope.memberID}" /> 
							<input type="hidden" name="answer" value="미확인" /> 
						</form>
					</div>
				</div>
			</div>
		</div>
	</section>
	
	<script src="<%= request.getContextPath()%>/js/scripts_main.js"></script>
</body>
</html>