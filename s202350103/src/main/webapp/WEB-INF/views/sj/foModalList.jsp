<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">

<script type="text/javascript">
/* 	function target_bnt(){
		$('.sendNb').load("ModetailNb");
		
	} */

</script>
<head>
<meta charset="UTF-8">
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta content="Codescandy" name="author">
<title>DADOK-AD</title>
<!-- Favicon icon-->
<link rel="shortcut icon" type="image/x-icon"
	href="../assets/images/favicon/favicon.ico">


<!-- Libs CSS -->
<link href="../assets/libs/bootstrap-icons/font/bootstrap-icons.min.css"
	rel="stylesheet">
<link href="../assets/libs/feather-webfont/dist/feather-icons.css"
	rel="stylesheet">
<link href="../assets/libs/simplebar/dist/simplebar.min.css"
	rel="stylesheet">


<!-- Theme CSS -->
<link rel="stylesheet" href="../assets/css/theme.min.css">
<!-- Google tag (gtag.js) -->

<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<!-- Bootstrap JS -->
<script src="../assets/libs/bootstrap/dist/js/bootstrap.bundle.min.js"></script>


<!-- End Tag -->

</head>
<body>
 	<c:set var="num" value="${page.totalOb-page.start+1 }"></c:set>
<div class="row">
 <div class="col-12">
       <div class="py-5">
      	  <p class="text-center fs-1 ">새상품 도서 내역 </p>
          <ul class="list-group list-group-flush">
             <!-- list group -->
         	<c:forEach var="oldBook" items="${listMoOb }"> 
             <li class="list-group-item py-3 py-lg-0 px-0 border-top">
                <!-- row -->
                <div class="row align-items-center">
                   <div class="col-3 col-md-2">
                      <!-- img --> <img src="${oldBook.nb_image}" alt="Ecommerce" class="img-fluid">
                  	<input type="hidden" name="nb_image" value="${oldBook.nb_image }">
                   </div>
                   <div class="col-3 col-md-4">
                      <!-- title -->
                      
                        <h6 class="mb-0"><input type="hidden" name="nb_num" value="${oldBook.nb_num}"> 
                        			<input type="hidden"  name="nb_title" value="${oldBook.nb_title }">
                        			${oldBook.nb_title }
                          </h6>
                 
                      <span><small class="text-muted">
	                      <input type="hidden" disabled="disabled" name="nb_writer" value="${oldBook.nb_writer}"> 지은이: ${oldBook.nb_writer}
	                        <br>
	                      <input type="hidden"  name="nb_publisher" value="${oldBook.nb_publisher }"> 출판사: ${oldBook.nb_publisher }
	                      <br>
                    	<input type="hidden" name="nb_publi_date" value="${oldBook.nb_publi_date }"> 출간일: ${oldBook.nb_publi_date  }
                      </small></span>
                      
                      
                      <!-- text -->
                    </div>
                      <!-- input group -->
                   <div class="col-2 col-md-3 col-lg-3">
                      <!-- input -->
   						<input type="hidden" name="nb_price" value="${oldBook.nb_price }"> 
   						<fmt:formatNumber type="number" pattern="###,###,###,###,###,###" value="${oldBook.nb_price}"/>원   
                   </div>
                   <!-- 넣기 -->
              <div class="col-1 text-start col-md-1">
             <span class="fw-bold"> <input type="button" class="btn btn-primary mb-1" value="선택" onclick="location.href='ModetailNb?nb_num=${oldBook.nb_num}'"></span>	
               </div>
                </div>
             </li>
   
             </c:forEach>
                     <c:set var="num" value="${num - 1 }"></c:set>
           	 <nav aria-label="Page navigation example">
		    <ul class="pagination justify-content-center">

			 	<c:if test="${page.startPage > page.pageBlock }">
					 <li class="pagination justify-content-center">					
						<a class="page-link" href="ModalList?currentPage=${page.startPage-page.pageBlock}">이전</a>
					</li>
				</c:if>
 				<c:forEach var="i" begin="${page.startPage}" end="${page.endPage}">
					 <li class="pagination justify-content-center">
 						<a class="page-link" href="ModalList?currentPage=${i}">${i}</a>&nbsp;&nbsp;
					</li>
				</c:forEach>
					
				<c:if test="${page.endPage < page.totalObPage }">
					 <li class="pagination justify-content-center">		 
						<a class="page-link" href="ModalList?currentPage=${page.startPage+page.pageBlock}">다음</a>
					</li>
				</c:if>
		</ul>
	</nav>
             </ul>
   
           
       </div> 
    </div>
</div> 




</body>
</html>