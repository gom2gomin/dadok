<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="headerBo.jsp" %>

<!DOCTYPE html> 
<html>
<head>
<meta charset="UTF-8">
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

<style>

	.chart {
	 width: 290px; 
	 height: 290px; 
	}

</style>


<title>Insert title here</title>
</head>
<body>
		
		 <div class="row ">
 
                        <div class="col-xl-6 col-lg-6 col-md-12 col-12 mb-6">
                            <!-- card -->
                            <div class="card h-100 card-lg">
                                <!-- card body -->
                                <div class="card-body p-6">
                                    <h3 class="mb-2 fs-5">회원 분석 </h3>
                                    <h4 class="mb-0 fs-6">총 회원 : ${totalMember } 명</h4>
                                    <div class="mt-6">
                                        <!-- text -->
                                        <div class="mb-5">
                                            <div class="d-flex align-items-center justify-content-between">
                                                <h5 class="fs-6">일반 회원</h5>
                                                <span><span class="me-1 text-dark">${nomalMember } 명</span>
                                                ( <fmt:formatNumber value="${averNomalMember }" maxFractionDigits="0"/> % )</span>
                                            </div>
                                            <!-- main wrapper -->
                                            <div>
                                                <!-- progressbar -->
                                                <div class="progress bg-light-primary" style="height: 6px;">
                                                    <div class="progress-bar bg-primary" role="progressbar"
                                                        aria-label="Example 1px high" style="width: ${averNomalMember}%;"
                                                        aria-valuenow="${averNomalMember}" aria-valuemin="0" aria-valuemax="${totalMember }"></div>
                                                </div>
                                            </div>
                                        </div>
                                        
                                            <div class="mb-5">
                                            <div class="d-flex align-items-center justify-content-between">
                                                <h5 class="fs-6">관리자</h5>
                                                <span><span class="me-1 text-dark">${adminMember } 명</span>
                                                ( <fmt:formatNumber value="${averAdminMember }" maxFractionDigits="0"/> % )</span>
                                            </div>
                                            <!-- main wrapper -->
                                            <div>
                                                <!-- progressbar -->
                                                <div class="progress bg-info-soft" style="height: 6px;">
                                                    <div class="progress-bar bg-warning" role="progressbar"

                                                        aria-label="Example 1px high" style="width: ${averAdminMember}%;"
                                                        aria-valuenow="${averAdminMember }" aria-valuemin="0" aria-valuemax="${totalMember }"></div>
                                                </div>
                                            </div>
                                        </div>
                                        
                                        <div class="mb-5">
                                            <!-- text -->
                                            <div class="d-flex align-items-center justify-content-between">
                                                <h5 class="fs-6">활동 회원</h5>
                                                <span><span class="me-1 text-dark">${activeMember } 명</span>
                                               ( <fmt:formatNumber value="${averActiveMember }" maxFractionDigits="0"/> % )</span>
                                            </div>
                                            <div>
                                                <!-- progressbar -->
                                                <div class="progress bg-info-soft" style="height: 6px;">
                                                    <div class="progress-bar bg-info" role="progressbar"
                                                        aria-label="Example 1px high" style="width: ${averActiveMember}%;"
                                                        aria-valuenow="${averActiveMember }" aria-valuemin="0" aria-valuemax="${totalMember }"></div>
                                                </div>
                                            </div>
                                        </div>
                                        <div>
                                            <!-- text -->
                                            <div class="d-flex align-items-center justify-content-between">
                                                <h5 class="fs-6">탈퇴 회원</h5>
                                                <span><span class="me-1 text-dark">${wdMember } 명</span>
                                                 ( <fmt:formatNumber value="${averWdMember }" maxFractionDigits="0"/> % )</span>
                                            </div>
                                            <div>
                                                <!-- progressbar -->
                                                <div class="progress bg-light-danger" style="height: 6px;">
                                                    <div class="progress-bar bg-danger" role="progressbar"
                                                        aria-label="Example 1px high" style="width: ${averWdMember}%;"
                                                        aria-valuenow="${averWdMember }" aria-valuemin="0" aria-valuemax="${totalMember }"></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                        
                        
                         <div class="col-xl-6 col-lg-6 col-12 mb-6">
                            <!-- card -->
                            <div class="card h-100 card-lg">
                                <!-- card body -->
                                <div class="card-body p-6">
                                    <!-- heading -->
                                    <h3 class="mb-0 fs-5">Member Chart </h3>
                                    <div class="mt-4 d-flex justify-content-center">
										
										<div class="chart">
												<canvas id="memberChart"></canvas>
										</div>

												<script>
												var ctx = document.getElementById('memberChart').getContext('2d');

												// 차트 데이터 
												var data = {
												  labels: ['일반 회원','활동회원','관리자', '탈퇴회원' ],
												  datasets: [{
												    data: [${nomalMember },${activeMember },${adminMember }, ${wdMember }],
												    backgroundColor: [
												      '#0aad0a',
												      '#016bf8',
												      '#ffc107',
												      '#db3030',
												    ]
												  }]
												};

												//  차트 생성
												var memberChart = new Chart(ctx, {
												  type: 'pie',
												  data: data
												});
												</script>
	                                    </div>
	                                </div>
	                            </div>
	                        </div>
				           
				           <!-- 주문 총계 -->
						  	<div class="row">
						       <div class="col-lg-4 col-12 mb-6">
						           <!-- 한달 총 수입 -->
						           <div class="card h-100 card-lg">
						               <!-- card body -->
						               <div class="card-body p-6">
						                   <!-- heading -->
						                   <div class="d-flex justify-content-between align-items-center mb-6">
						                       <div>
						                           <h4 class="mb-0 fs-5" _msttexthash="9833616" _msthash="87">${month }월 총수입</h4>
						                       </div>
						                       <div class="icon-shape icon-md bg-light-danger text-dark-danger rounded-circle">
						                           <i class="bi bi-currency-dollar fs-5"></i>
						                       </div>
						                   </div>
						                   <!-- 한달 총 수입 금액 -->
						                   <div class="lh-1">
						                       <h1 class=" mb-2 fw-bold fs-2" _msttexthash="76492" _msthash="88">
						                       	<fmt:formatNumber value="${totalIncome }" groupingUsed="true"/>원
						                       </h1>
						                       <c:if test="${totalIncome - lastTotalIncome > 0}">
							                       <span _msttexthash="21663070" _msthash="89">
							                       	지난달과 비교 : 
							                       	<span class="me-1" _istranslated="1" style="color:red">
							                       		+<fmt:formatNumber value="${totalIncome - lastTotalIncome }" groupingUsed="true"/>원
							                       	</span>
							                       </span>
						                       </c:if>
						                       <c:if test="${totalIncome - lastTotalIncome <= 0}">
							                       <span _msttexthash="21663070" _msthash="89">
							                       	지난달과 비교 : 
							                       	<span class="me-1" _istranslated="1" style="color:blue">
							                       		-<fmt:formatNumber value="${totalIncome - lastTotalIncome }" groupingUsed="true"/>원
							                       	</span>
							                       </span>
						                       </c:if>
						                   </div>
						               </div>
						           </div>
						       </div>
						       <div class="col-lg-4 col-12 mb-6">
						           <!-- 한달 총 주문건수 -->
						           <div class="card h-100 card-lg">
						               <!-- card body -->
						               <div class="card-body p-6">
						                   <!-- heading -->
						                   <div class="d-flex justify-content-between align-items-center mb-6">
						                       <div>
						                           <h4 class="mb-0 fs-5" _msttexthash="9666644" _msthash="90">${month }월 주문건수</h4>
						                       </div>
						                       <div class="icon-shape icon-md bg-light-warning text-dark-warning rounded-circle">
						                           <i class="bi bi-cart fs-5"></i>
						                       </div>
						                   </div>
						                   <!-- project number -->
						                   <div class="lh-1">
						                       <h1 class=" mb-2 fw-bold fs-2" _msttexthash="37895" _msthash="91">
						                       	<fmt:formatNumber value="${monthTotalCnt }" groupingUsed="true"/>건
						                       </h1>
						                       <c:if test="${monthTotalCnt - lastTotalCnt > 0 }">
							                       <span _msttexthash="48127183" _msthash="92">
							                       	지난달과 비교 : 
							                       	 <span class="me-1" _istranslated="1" style="color:red">
							                         	+<fmt:formatNumber value="${monthTotalCnt - lastTotalCnt }" groupingUsed="true"/>건
							                         </span>
							                       </span>
						                       </c:if>
						                       <c:if test="${monthTotalCnt - lastTotalCnt < 0 }">
							                       <span _msttexthash="48127183" _msthash="92">
							                       	지난달과 비교 : 
							                       	 <span class="me-1" _istranslated="1" style="color:blue">
							                         	-<fmt:formatNumber value="${monthTotalCnt - lastTotalCnt }" groupingUsed="true"/>건
							                         </span>
							                       </span>
						                       </c:if>
						                   </div>
						               </div>
						           </div>
						       </div>
						       <div class="col-lg-4 col-12 mb-6">
						           <!-- 한달 신규고객 인원수 -->
						           <div class="card h-100 card-lg">
						               <!-- card body -->
						               <div class="card-body p-6">
						                   <!-- heading -->
						                   <div class="d-flex justify-content-between align-items-center mb-6">
						                       <div>
						                           <h4 class="mb-0 fs-5" _msttexthash="8609640" _msthash="93">${month }월 신규고객</h4>
						                       </div>
						                       <div class="icon-shape icon-md bg-light-info text-dark-info rounded-circle">
						                           <i class="bi bi-people fs-5"></i>
						                       </div>
						                   </div>
						                   <!-- project number -->
						                   <div class="lh-1">
						                       <h1 class=" mb-2 fw-bold fs-2" _msttexthash="38038" _msthash="94">
						                       		<fmt:formatNumber value="${monthTotalNewMember }" groupingUsed="true"/>명
						                       </h1>
						                       <c:if test="${monthTotalNewMember - lastTotalNewMember > 0 }">
							                       <span _msttexthash="72624214" _msthash="95">
							                       	지난달과 비교 : 
							                       	<span class="me-1" _istranslated="1" style="color:red">
							                       		+<fmt:formatNumber value="${monthTotalNewMember - lastTotalNewMember }" groupingUsed="true"/>명
							                       	</span>
							                       </span>
						                       </c:if>
						                       <c:if test="${monthTotalNewMember - lastTotalNewMember < 0 }">
							                       <span _msttexthash="72624214" _msthash="95">
							                       	지난달과 비교 : 
							                       	<span class="me-1" _istranslated="1" style="color:blue">
							                       		-<fmt:formatNumber value="${monthTotalNewMember - lastTotalNewMember }" groupingUsed="true"/>명
							                       	</span>
							                       </span>
						                       </c:if>
						                   </div>
						               </div>
						           </div>
						       </div>
						  	</div>
						  	
						  	<!-- 연도 그래프 -->
						  	<div class="card card-lg mb-6">
                                <div class="card-body px-6 py-8">
                                	<h3 class="mb-0 fs-5">Order Chart </h3>
                                    <div class="d-flex align-items-center">
                                    	<div id="chart">
                                    		<canvas id="myOrderChart" width="400" height="400"></canvas>
                                    	</div>
                                        <script>
                                     		// 차트를 그럴 영역을 dom요소로 가져온다.
                                        	var ctx = document.getElementById('myOrderChart').getContext('2d');
                                        	// x축에 들어갈 이름들(Array)
                                     		const monthLabels = Utils.months({count: 7});
                                        	// 실제 차트에 표시할 데이터들(Array), dataset객체들을 담고 있다.
	                                        var data = {
	                                          labels: ['1월','2월','3월','4월','5월','6월','7월'],
	                                          datasets: [{
	                                            label: 'My First Dataset',
	                                            data: [65, 59, 80, 81, 56, 55, 40],
	                                            fill: false,
	                                            borderColor: 'rgb(75, 192, 192)',
	                                            tension: 0.1
	                                          }]
	                                        };
                                     		
                                     		// 차트를 생성한다.
                                     		var myOrderChart = new Chart(ctx, { 
                                     			// 차트의 종류(String)
                                     			type: 'line',
                                     			// 차트의 데이터(Object)
                                      		  	data: data
                                        	}
	                  
                                        </script>
                                    </div>
                                </div>
                            </div>
                             
                             <!-- 답글관리 -->
                             <a href="adminDeclReply">   
                                <div class="card card-lg mb-6">
                                    <div class="card-body px-6 py-8">
                                        <div class="d-flex align-items-center">
                                            <div>
												<i class="bi bi-chat-left-text" style="font-size: 32px; color: #198754;"></i>
                                            </div>
                                            
                                            <div class="ms-4">
                                                <h5 class="mb-1">답글 관리</h5>
                                            <c:if test="${declReplyCount > 0 }">
                                                <p class="mb-0">${declReplyCount } 건 의 신고 접수이력이 있습니다.</p>
                                            </c:if>
                                            <c:if test="${declReplyCount == 0 }">
                                                <p class="mb-0">접수 이력이 없습니다 .</p>
                                            </c:if>
                                            
                                            </div>
                                        </div>
                                    </div>
                                </div>
                               </a>
                   
                   </div>     


<%@ include file="footerBo.jsp" %>

</body>
</html>