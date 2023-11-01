<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="content">
		<c:if test="${result > 0}">
			<script type="text/javascript">
				alert("리뷰 작성완료~~!! ");
				location.href="reviewList?pageNum=${pageNum}";
			</script>
		</c:if>
		<c:if test="${result == 0}">
			<script type="text/javascript">
				alert("리뷰를 다시 작성해주세요....!! ");
				location.href="reviewForm?pageNum=${pageNum}";
			</script>
		</c:if>
	</div>

</body>
</html>