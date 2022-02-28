<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type = "text/javascript" src = "${pageContext.request.contextPath }/jquery/jquery-3.6.0.js"></script>
<script>
$(function() {
	$("button").click(function() {
		var vo = {
			name : '둘리',
			password : '1234',
			message: '호이~'
		};
		
		$.ajax({
			url : "${pageContext.request.contextPath }/api/post01", 
			async : true, 
			type : 'post',         // 요청 method
			dateType : 'json',     // 응답 포맷
			contentType: 'application/x-www-form-urlencoded', // default
			data : $.param(vo),
			success : function(response) {
				console.log(response);
				if(response.result !== "success") {
					console.error(response.message);
					return;
				}
				
				var html = "";
				html += ("<h1>" + response.data.no + "</h1>");
				html += ("<h1>" + response.data.name + "</h1>");
				html += ("<h1>" + response.data.message + "</h1>");
				
				$("#data").append(html);
			}
			});
	});
});
</script>
</head>
<body>
	<h1>AJAX Test : JSON Format Data : $.ajax 함수 사용하기(post 방식, form data)</h1>
	
	<button>데이터 가져오기</button>
	<div id = "data"></div>
</body>
</html>