<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<%@ include file="../common/headerFo.jsp" %>

<!DOCTYPE html> 
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script> <!-- jquery안에  ajax 함수가 있기 때문에 jquery.js 가져와야 한다. -->
<script type="text/javascript">


</script>
<style>
    img {
        width: 150px; /* Set the desired width */
        height: 200px; /* Set the desired height */
    }
    .pagination .page-item {
						    width: 50%;
						     text-align: center;
    }
</style>

</head>
<body>

	<div class="row">
<!-- col -->
    <div class="col-12">
       <div class="p-4">
       
         <!-- heading -->
         <nav aria-label="...">
			<ul class="pagination pagination-lg justify-content-center">
			  <li  class="page-item "><a class="page-link" href="MyReviewList" >작성 가능한 리뷰</a></li>
			  <li  class="page-item active"><a class="page-link" href="MyReviewedList" >작성한 리뷰</a></li>
			</ul>
		 </nav>
       
          <ul class="list-group list-group-flush">
          
          	 <c:forEach var="reviewedList" items="${reviewedWriteList }">
	             <li class="list-group-item py-5">
	                <div class="d-flex justify-content-between">
	                   <div class="d-flex">
	                      <!-- img -->
	                      <img src="${reviewedList.nb_image}" alt="bookImage">
	                      <!-- text -->
	                      <div class="ms-4">
	                          <h5 class="mb-0 h6 h6">${reviewedList.nb_title}</h5>
	                         <p class="mb-0 small">수량 : ${reviewedList.o_de_count}
	                         <p class="mb-0 small">구매일자 : ${reviewedList.o_order_date}
	                         <p style="margin: 10px;">
	                         <p class="mb-0 small">리뷰 작성일자 : ${reviewedList.r_create_date}
	                        </p>
	                      </div>
	                   </div>
	                   <div style="display: flex; justify-content: center; align-items: center;">
	                      <a class="btn btn-primary" href="reviewUpdateForm?o_order_num=${reviewedList.o_order_num}&nb_num=${reviewedList.nb_num}&currentPage=${page.currentPage}">수정</a>
	                      <p style="margin: 10px;">
	                      <a class="btn btn-primary" href="reviewDelete?o_order_num=${reviewedList.o_order_num}&nb_num=${reviewedList.nb_num}&currentPage=${page.currentPage}">삭제</a>
	                   </div>
	                </div>
	             </li>
               </c:forEach>
          </ul>
       </div>
         <div style="text-align: center;">
	        <c:if test="${page.startPage > page.pageBlock}">
				<a href="MyReviewList?currentPage=${page.startPage-page.pageBlock}"style="font-size: 19px;">[이전]</a>
			</c:if>
			<c:forEach var="i" begin="${page.startPage}" end="${page.endPage}">
				<a href="MyReviewList?currentPage=${i}"style="font-size: 19px;">[${i}]</a>
			</c:forEach>
			<c:if test="${page.endPage < page.totalPage}">
				<a href="MyReviewList?currentPage=${page.startPage+page.pageBlock}"style="font-size: 19px;">[다음]</a>
			</c:if>
		 </div>
   	   </div>
    </div>
		
<%@ include file="../common/footerFo.jsp" %>	

</body>
</html>