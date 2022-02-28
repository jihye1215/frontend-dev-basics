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
		$.ajax({
			url : "${pageContext.request.contextPath }/api/xml", 
			async : true, 
			type : 'get',
			dateType : 'xml',
			success : function(xml) {
				$data = $("data", xml)
				var $no = $("no", $data);
				var $name = $("name", $data);
				var $message = $("message", $data);
				
				var html = "";
				html += ("<h1>" + $no.text() + "</h1>");
				html += ("<h1>" + $name.text()  + "</h1>");
				html += ("<h1>" + $message.text()  + "</h1>");
				
				$("#data").append(html);
				
			}
		});
	});
});
</script>
</head>
<body>
	<h1>AJAX Test : xml Format Data : $.ajax 함수 사용하기</h1>
	
	<button>데이터 가져오기</button>
	<div id = "data"></div>
</body>
</html>