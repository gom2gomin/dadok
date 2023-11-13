<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common/headerFo.jsp" %>
<%@ include file="../common/sideFo.jsp" %>
   <!-- 중고서적 디테일 프론트 --> 
<!DOCTYPE html>
<html>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript">
</script>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<p class="fs-1 text-center">중고 검수 상세내역</p>

<input type="hidden" name="ob_num" value="${oldBook.ob_num }">

<table class="table table-bordered">
    <tr>
	      <td scope="col">신청 일자</td>
	      <td scope="col" colspan="2">${oldBook.ob_report_date }</td> 
    </tr>
    <tr>
	      <td>중고상품번호 </td>
	      <td colspan="2" id="ob_num" >${oldBook.ob_num }</td>
    </tr>
      <tr>
	      <td>검수매입상태</td>
	      <td colspan="2">
      	<c:choose>		
				<c:when test="${oldBook.ob_status eq '1' }"><c:out value="검수중"/></c:when>
				<c:when test="${oldBook.ob_status eq '2' }"><c:out value="검수완료"/></c:when>
				<c:when test="${oldBook.ob_status eq '3' }"><c:out value="매입완료"/></c:when>
				<c:otherwise><c:out value=""/></c:otherwise>
				
		</c:choose>
      </td>
    </tr>
      <tr>
		      <td>책이름 </td>
		      <td colspan="2">${oldBook.nb_title }</td>
      </tr>
        <tr>
		      <td>중고매입가격 </td>
		      <td colspan="2">	
		   		<fmt:formatNumber type="number" pattern="###,###,###,###,###,###" value="${oldBook.ob_pur_price}"/>원     
		      </td>
       </tr>
	
	
     <tr>
      <td rowspan="3"> <br>
      	검수내역 </td>
	   <td>찢김</td>
	    <td> 
		 <c:choose>
			    <c:when test="${oldBook.ob_ripped eq '1'}">
			   		<input type="checkbox"  disabled="disabled" checked="checked">
			    </c:when>
			    <c:otherwise>
					<input type="checkbox" disabled="disabled" >
		    </c:otherwise>
		</c:choose>
	    </td>
     </tr>
    <tr>
	      <td>오염</td>
	      <td>
       <c:choose>
		    <c:when test="${oldBook.ob_smeary eq '1'}">
		   		<input type="checkbox"  disabled="disabled" checked="checked">
		    </c:when>
		    <c:otherwise>
				<input type="checkbox"  disabled="disabled" >
	    </c:otherwise>
	    </c:choose>		      </td>
    </tr>
     <tr>
	      <td>낙서</td>
	      <td>
	       <c:choose>
		    <c:when test="${oldBook.ob_scribble eq '1'}">
		   		<input type="checkbox"  disabled="disabled" checked="checked">
		    </c:when>
		    <c:otherwise>
				<input type="checkbox" disabled="disabled" >
	    </c:otherwise>
	    </c:choose>	
	      </td>
    </tr>
     <tr>
      <td>등급</td>
      <td colspan="2">
      		<c:choose>
				<c:when test="${oldBook.ob_grade eq '0' }"><c:out value="A"/></c:when>
				<c:when test="${oldBook.ob_grade eq '1' }"><c:out value="B"/></c:when>
				<c:when test="${oldBook.ob_grade eq '2' }"><c:out value="C"/></c:when>
				<c:otherwise><c:out value="D"/></c:otherwise>
				</c:choose>
	       </td>
	    </tr>
	    <tr>
	      <td>정산 가격 </td>
	      <td colspan="2"> <fmt:formatNumber type="number" pattern="###,###,###,###,###,###" value="${oldBook.ob_pur_price}" />원</td>
	    </tr>
	</table>
	<form action="foObUpComple" method="post">
	<div class="d-grid gap-2">
		    <button class="btn btn-dark" type="submit" >정산받기</button>
		    <input type="hidden" name="ob_status" value="2">
		    <input type="hidden" name="ob_num" value="${oldBook.ob_num }">
	</div>
	</form>		
			 <div class="d-grid gap-2">
		    <button class="btn btn-dark" type="button" onclick="location.href='BolistOb'">중고 리스트 보기</button>
		</div>

</body>

<%@ include file="../common/footerFo.jsp" %>
</html>