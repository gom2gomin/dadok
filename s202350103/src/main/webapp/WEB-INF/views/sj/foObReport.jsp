<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common/headerFo.jsp" %>
<%@ include file="../common/sideFo.jsp" %>
<!-- 앞단 판매신청  -->
<!DOCTYPE html>
<html>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript">
/*  modal 에 리스트 불러오는 기능 */
/* 	function openfoModalList(){
		$('.modal-content').load("ModalList");
	} */
	opener.parent.location="ModetailNb?nb_num=${oldBook.nb_num}";
	window.close();
	
	function showPopup(){
		window.open("bookList","pop","width=900, height=800, left=300, top=150");
	}
	
	function doAction(){
	
		if(frm.nb_tit.value == ""){
			frm.nb_title.focus();
			alert("판매하실 중고도서의 새상품을 선택해주세요");
			
			return false;
			
		}
	}

	/* $("#sss").append('<small class="text-muted "><input type="hidden" name="nb_writer" value="${oldBook.nb_writer}">지은이 : ${oldBook.nb_writer}/ <input type="hidden"  name="nb_publisher" value="${oldBook.nb_publisher }">출판사 : ${oldBook.nb_publisher }  <input type="hidden" name="nb_publi_date" value="${oldBook.nb_publi_date }"> 출간일: ${oldBook.nb_publi_date } </small>'); */

</script>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="writeFormObCal" name="frm"   method="post"  onsubmit="return doAction()">
<p class="text-center fs-1 ">중고 도서 판매 신청 </p>
	<div class="text-center  position-relative ">
	<img src="assets/images/png/obreport.png" alt="판매신청"
                      class="mb-3 img-fluid">
	
	</div>
	
	
	<!-- 새상품 서치  -->
	<div class="row">
  <div class="col-12">
     <div class="card card-product">
        <!-- card body -->
        <div class="card-body" >
           <div class=" row align-items-center">
              <!-- col -->
              <div class="col-md-4 col-12">
                 <div class="text-center position-relative " >
                    <div class=" position-absolute top-0">
                    <input type="hidden" name="m_num" value="${oldBook.m_num }">
                       <!-- badge --> <!-- <span class="badge bg-danger">새상품</span> -->
                       <input type="hidden"  name="nb_num" value="${oldBook.nb_num }" >
                    </div>
                       <!-- img --><img src="${oldBook.nb_image }"
                         alt="" class="mb-3 img" style="width: 150px;">
                         <input type="hidden" name="nb_image" value="${oldBook.nb_image }">
                 </div>
              </div>
      				<input type="hidden" name="nb_title" id="nb_tit" value="${oldBook.nb_title }" >
      	<c:if test="${oldBook.nb_num  != '0' }">
              <div class="col-md-8 col-12 flex-grow-1 text-center">
                 <!-- heading -->
                 <div class="text-small mb-1">
                 </div>
                 <h2 class="fs-6 text-start">
                 <br>
                 	책 제목 : ${oldBook.nb_title}
                 <input type="hidden" name="nb_title" id="nb_ti" value="${oldBook.nb_title }" required="required">
                 </h2>
                 <div class="text-start">
                  <span id="sss"><small class="text-muted "><input type="hidden" name="nb_writer" value="${oldBook.nb_writer}">지은이 : ${oldBook.nb_writer}<br>
                      <input type="hidden"  name="nb_publisher" value="${oldBook.nb_publisher }">출판사 : ${oldBook.nb_publisher } <br> 
                         <input type="hidden" name="nb_publi_date" value="${oldBook.nb_publi_date }"> 출간일: ${oldBook.nb_publi_date }
                      </small></span>
                 </div>
                 <div class=" mt-6">
                    <!-- price -->
                      <div class="text-start">
                      <span class="text-dark"> 가격 : <fmt:formatNumber type="number" pattern="###,###,###,###,###,###" value="${oldBook.nb_price}"/>원    	  <input type="hidden" name="nb_price" value="${oldBook.nb_price }">  </span> 
                      
                    </div>
                    <br>
	</div>
	</div>
</c:if>
                    <!-- btn -->
          
                    <!-- btn -->
                    <div class="text-center">
                    
               <!--    <button type="button" class="btn btn-primary text-end" data-bs-toggle="modal" data-bs-target="#exampleModal-2" 
                  				onclick="openfoModalList()">
                  				 -->
                  <button type="button" class="btn btn-success"  data-bs-toggle="modal" data-bs-target="#exampleModal-2" 
                  				onclick="showPopup()">
   					새상품 선택
					</button>
					</div>

		


                 </div>
              </div>
           </div>
        </div>
     </div>
		<br><br><br>
		
      		<div class="text-end">
      		<label class="form-label" for="comments"> 
          <strong >중고 도서 판매 이용약관</strong>
          </label><p>
			<input class="form-check-input"  type="checkbox" value="ck1" id="ck1" required="required">
			서비스 이용약관(동의)
			</div>
          <textarea rows="7" id="comments" class="form-control" disabled="disabled">
이 약관은 ㈜다독 다독(이하 "회사"라고 합니다)이 운영하는 인터넷 사이트 및 앱에서 제공하는 상품판매 서비스 및 기타 정보 서비스(이하 "서비스"라 한다)와 관련하여 회사와 상품판매 서비스 가입사 또는 가입 회원(이하 “판매자”)간의 권리와 의무, 책임사항 및 판매자의 서비스 이용절차에 관한 사항을 규정함을 목적으로 합니다.
제1조 총칙
제2조 약관의 명시, 효력 및 변경
제3조 관련법령과의 관계
제4조 서비스의 종류
제5조 용어의 정의
제6조 판매서비스의 성질과 목적
제7조 서비스이용계약
제8조 이용신청
제9조 이용신청의 승낙
제10조 이용계약의 종료
제11조 판매자 정보의 수집과 보호
제12조 판매자 정보의 변경
제13조 ID 또는 E-Mail 주소의 관리
제14조 판매서비스의 종류 및 이용
제15조 판매서비스 이용정지, 이용제한 및 판매자의 신용도
제16조 대리 및 보증의 부인
제17조 매매보호 서비스
제18조 판매자의 의무
제19조 판매상품의 등록
제20조 거래불가 상품 및 행위
제21조 상품판매규정
제22조 배송
제23조 구매결정 및 정산
제24조 반품과 환불
제25조 예치금
제26조 수수료
제27조 회사의 면책
제28조 준거법 및 관할법원
제29조 분쟁해결
제30조 이용 불편사항 신고 및 분쟁조정 신청
제31조 고지의 의무

제2조 (약관의 명시, 효력 및 변경)
가.회사는 이 약관을 서비스를 이용하고자 하는 자와 판매자가 알 수 있도록 서비스가 제공되는 인터넷사이트 및 앱 화면에 게시합니다.
나.회사가 이 약관을 개정하는 경우에는 개정된 약관의 적용일자 및 개정사유를 명시하여 그 적용일자 7일 이전부터 적용일자 전일까지 위 가항의 방법으로 공지합니다.
다.이 약관은 회사와 판매자간에 성립되는 서비스 이용계약의 기본약정입니다. 회사는 필요한 경우 특정 서비스에 관하여 적용될 사항(이하 "개별약관"이라고 합니다)을 정하여 미리 공지할 수 있습니다. 판매자가 이러한 개별약관에 동의하고 특정 서비스를 이용하는 경우에는 개별약관이 우선적으로 적용되고, 이 약관은 보충적인 효력을 갖습니다. 개별약관의 변경에 관해서는 위 나항을 준용합니다.
제3조 (관련 법령과의 관계)
가.이 약관 또는 개별약관에서 정하지 않은 사항은 전기통신사업법, 전자거래기본법, 정보통신망이용촉진및정보보호등에관한법률, 전자상거래등에서의소비자보호에관한법률 등 관련법령의 규정과 일반적인 상관례에 의합니다.
나.판매자는 회사가 제공하는 서비스를 이용함에 있어서 전자상거래등에서의소비자보호에관한법률(예시:공급서, 표시광고, 반품, 배송 등 통신판매에 관한 규정), 전자거래기본법(예시:소비자보호에 관한 규정), 소비자기본법(예시:사업자의 의무에 관한 규정), 표시광고의공정화에관한법률(예시:상품상세설명에 관련한 표시, 기재사항), 정보통신망이용촉진및정보보호등에관한법률(예시:개인정보보호에 관한 규정) 등 관련법령을 준수하여야 하며, 이 약관의 규정을 들어 관련법령 위반에 대한 면책을 주장할 수 없습니다.
제4조 (서비스의 종류)
회사가 판매자에게 제공하는 서비스는 다음과 같습니다.

가.판매자매니저 서비스 : 회사가 인터넷 사이트 및 앱을 통하여 판매자와 구매자 상호 간에 상품거래가 이루어질 수 있도록 제공하는 서비스 및 관련 부가서비스 일체를 말합니다.
제5조 (용어의 정의)
이 약관에서 사용하는 용어의 정의는 다음과 같습니다.

1)"판매자"라 함은 이 약관을 승인하고 회사와 서비스 이용계약을 체결한 자를 말하고, 상품을 판매할 의사로 해당 상품을 회사가 제공하는 양식에 맞추어 등록한 자를 말합니다. 판매자는 개인 판매자와 사업자 판매자로 구분합니다.
2)"이용자"라 함은 판매자와 구매자 및 비구매자를 통칭합니다.
3)“주문”이라 함은 판매자와 구매자간에 상품의 거래가 성립되는 것을 말합니다.
4)"몰"이라 함은 회사가 재화 또는 용역을 이용자에게 제공하기 위하여 컴퓨터 등 정보통신설비를 이용하여 재화 또는 용역을 거래할 수 있도록 설정한 가상의 영업장을 말하며, 아울러 사이버 몰을 운영하는 사업자의 의미로도 사용합니다.
5)“판매서비스”라 함은 판매자매니저 가입 후 판매자 자격을 득한 후의 상품 등록 및 판매 관리와 관련한 제반 서비스를 의미합니다.
6)위에서 정의되지 않은 이 약관상의 용어의 의미는 일반적인 거래관행에 의합니다.
제6조 (상품판매서비스의 성질과 목적)
상품판매서비스는 회사가 이용자 각자의 자기결정에 의하여 이용자 상호간에 상품매매거래가 이루어질 수 있도록 사이버 거래장소(marketplace)를 제공하는 것입니다. 회사는 이용자간 직거래에 대해, 단지 이용자간 거래의 안전성 및 신뢰성을 증진시키는 도구만을 제공합니다. 이용자간에 성립된 거래와 관련된 책임은 거래당사자인 이용자들 스스로가 부담하여야 합니다.

제7조 (서비스이용계약)
가.회사가 제공하는 서비스에 관한 이용계약(이하 "이용계약"이라고 합니다)은 서비스를 이용하고자 하는 자의 이용신청(판매자 가입신청)에 대하여 회사가 승낙함으로써 성립 합니다. 회사는 이용승낙의 의사를 해당 서비스화면에 게시하거나, E-Mail 또는 기타 방법으로 이용 신청자에게 통지합니다.
나.판매자 가입은 만 14세 이상의 개인 또는 사업자(개인사업자 및 법인사업자)가 할 수 있습니다. 이용신청자는 실명으로 가입신청을 하여야 하며, 실명이 아니거나 타인의 정보를 도용하여 판매자로 가입한 자는 회사가 제공하는 서비스를 이용할 수 없으며, 이용하여서도 안됩니다.
다.만 14세 미만인 자와 해외/US다독 다독 회원은 판매자 서비스를 이용 할 수 없습니다.
제8조 (이용신청)
가.상품 판매 서비스를 이용하고자 하는 자는 회사가 온라인으로 제공하는 가입신청양식에 따라 기재하고 판매자로 등록하여야 합니다. 가입신청 시 기재사항은 이용 신청 서비스와 이용 신청자가 개인 또는 사업자인지 여부에 따라 구분됩니다
나.판매자 등록 시 필수기재항목은 다음과 같습니다.
1) 개인 중고 판매자
①판매자명
②휴대전화번호
③배송방법 및 배송업체
④배송비정책
⑤출고예상시간
⑥출고 및 반품 주소지
⑦야간 시간대 앱푸시/알림톡 수신 여부
2)사업자 판매자
①판매자명 및 업체명
②대표자 성명
③사업자등록번호
④사업장 소재지
⑤대표 E-Mail 주소, 휴대전화 번호, 대표 유선전화번호, AS 전화번호
⑥배송 방법, 배송 업체, 배송비 정책
⑦출고예상시간, 출고 및 반품 주소지, 반품교환안내, 고객문의 등록시 앱푸시/알림톡 수신 여부
다.법인은 사업자 판매자로 가입신청 하여야 하고, 개인사업자의 경우에도 그 사업과 관련하여 서비스를 이용하고자 하는 때에는 사업자 판매자로 가입하여야 합니다. 사업자 판매자로 가입하고자 하는 자는 회사의 요청에 따라 사업자등록증, 인감증명서, 법인등기부등본, 법인인감증명서, 통신판매신고필증, 결제를 위한 대표자 또는 법인명의의 계좌정보 등의 증빙자료와 추가 정보를 제공하여야 합니다
라.판매자 매니저 서비스 이용신청시 다독 다독중고C2C에 적용됩니다.
제9조 (이용신청의 승낙)
가.회사는 이용신청자가 제8조에서 정한 필수기재항목을 정확하게 기재하고 이 약관에 동의한 경우에는 이 약관에 규정된 실명확인절차를 거쳐 서비스의 이용을 승낙하는 것을 원칙으로 합니다.
나.회사는 개인판매자 가입신청의 경우 법령에 따라 이용 가능한 신용정보업자 또는 신용정보집중기관을 통하여 주민등록번호와 성명의 일치 여부를 확인함으로써 실명확인절차를 취하며, 사업자판매자 가입신청의 경우에는 제8조 나항에 따라 제공받는 증빙자료 등에 의하여 실명확인절차를 취합니다. 회사는 실명확인절차를 취할 수 없는 이용신청에 대해서는 신청자에게 증빙자료를 요청할 수 있습니다.
다.회사는 다음과 같은 사유가 있는 경우, 이용신청에 대한 승낙을 거부할 수 있습니다.
①만 14세 미만의 자가 이용신청을 하는 경우
②회사의 실명확인절차에서 실명가입신청이 아님이 확인된 경우
③이미 가입된 판매자와 실명인증정보(본인확인기관을 통해 받은 식별정보 또는 사업자등록번호, 법인등록번호)가 동일한 경우
④이 약관 제10조에 기하여 회사가 이용계약을 해지한 전(前)판매자가 재이용신청을 하는 경우
⑤이 약관 제15조에 기하여 회사로부터 판매자 자격정지 조치를 받은 판매자가 이용정지 중에 이용계약을 임의 해지하고 재이용 신청을 하는 경우
⑥가입신청 시 기재하여야 할 필수기재항목에 허위사실을 기재한 경우
⑦기타 이 약관에 위배되거나 위법 또는 부당한 이용신청임이 확인된 경우
라.회사는 다음과 같은 사유가 있는 경우, 이용신청에 대한 승낙을 유보할 수 있습니다. 이 경우, 회사는 이용신청자에게 승낙유보의 사유, 승낙가능시기 또는 승낙에 필요한 추가요청정보 내지 자료 등 기타 승낙유보와 관련된 사항을 해당 서비스화면에 게시하거나 E-Mail을 통하여 통지합니다.
①설비에 여유가 없는 경우
②기술상 지장이 있는 경우
③회사의 실명확인절차에서 실명가입신청 여부가 확인되지 않는 경우
④사업자판매자 가입을 신청한 자가 제8조 나항의 증빙자료 또는 추가 정보를 제공하지 않는 경우
⑤기타 회사가 합리적인 판단에 의하여 필요하다고 인정하는 경우
제10조 (이용계약의 종료)
가.판매자 또는 회사는 이 약관에서 정한 절차에 따라 이용계약을 해지할 수 있습니다.
나.판매자의 해지
1)판매자는 언제든지 회사에게 해지의사를 통지함으로써 이용계약을 해지할 수 있습니다. 다만, 판매자는 해지의사를 통지하기 전에 모든 구매 또는 판매중인 판매절차를 완료, 철회 또는 취소해야만 합니다. 이 경우 주문의 철회 또는 취소로 인한 불이익은 판매자 본인이 부담하여야 합니다.
2)이용계약은 판매자의 해지 의사가 회사에 도달한 때에 종료됩니다
3)본 항에 따라 해지를 한 판매자는 이 약관이 정하는 판매자 가입절차와 관련조항에 따라 판매자로 다시 가입할 수 있습니다.
다.회사의 해지
1)회사는 다음과 같은 사유가 있는 경우, 이용계약을 해지할 수 있습니다. 이 경우 회사는 판매자에게 패널티 부과의 경고 처리를 거친 후 판매자 공지를 통해 해지사유 및 해지의사를 전달합니다
① 판매자에게 제9조 다항에서 정하고 있는 이용계약의 승낙거부사유가 있음이 확인된 경우
② 판매자가 이 약관 제20조가 정하고 있는 거래불가 상품을 판매등록 하거나, 기타 공공질서 및 미풍양속에 위배되는 상품거래행위를 하거나 시도한 경우
③ 판매자가 회사나 다른 판매자 기타 타인의 권리나 명예, 신용 기타 정당한 이익을 침해하는 행위를 한 경우
④ 판매자가 직거래 등 회사가 제공하는 서비스의 원활한 진행을 방해하는 행위를 하거나 시도한 경우
⑤ 판매자가 실제로 상품을 판매하고자 하는 의사 없이 상품등록을 한 경우(이하 "판매가장등록"이라 합니다) 또는 이를 알고 주문 받은 것으로 인정되는 경우
⑥ 기타 판매자가 이 약관에 위배되는 행위를 하거나 이 약관에서 정한 해지사유가 발생한 경우
⑦ 판매자가 아래 사항에 해당하는 경우 경고조치 되며 사안에 따라 이용 해지에 해당
a. 구매자와 협의 없이 임의로 품절 처리하거나 배송을 보내지 않아 구매자 클레임이 발생한 경우
b. 입력한 연락처와 실제 연락처가 상이하여 구매자 문의 및 연락이 닿지 않는 경우
c. 회사가 제공하는 서비스에 방해하는 행위를 반복적으로 행하는 경우
d. 회사가 제공하는 분야 외의 상품을 등록하는 경우
f. 구매자 응대 시 욕설, 비방 등 부적절한 행동을 하는 경우
2)이용계약은 회사의 해지 의사가 판매자에게 도달한 때에 종료되나, 판매자가 제공한 연락처 정보의 오류로 인하여 회사가 해지 의사를 통지할 수 없는 경우에는 회사가 판매자 공지에 해지 의사를 공지하는 때에 종료됩니다
3)회사가 이용계약을 해지하는 경우, 회사는 별도의 통지 없이 해당 판매자와 관련된 주문을 취소할 수 있고, 구매자가 결제한 상품 대금을 취소할 수 있습니다.
라.이용계약이 종료되는 경우, 회사는 해당 판매자의 예치금으로 정산합니다. 정산 후, 예치금이 잔존하는 경우 회사는 해당 판매자가 신청하는 즉시 지정한 입금계좌로 그 금액을 송금하고, 마이너스 예치금일 경우 해당 판매자는 회사에 그 금액을 즉시 변제하여야 합니다. 단, 이용자와 분쟁이나 비정상 거래에 관련된 판매자의 경우 예치금을 지급보류 할 수 있습니다.
마.이용계약의 종료와 관련하여 발생한 손해는 이용계약이 종료된 해당 판매자가 책임을 부담하여야 하고, 회사는 일체의 책임을 지지 않습니다.
제11조 (판매자정보의 수집과 보호)
판매자 개인정보 처리 방침 약관을 따릅니다.
제12조(판매자 정보의 변경)
가.판매자는 이용 신청 시 기재한 사항이 잘못되었거나 변경되었을 경우, 즉시 해당 사항을 수정해야 합니다.
나.판매자정보가 변경되었음에도 해당 사항을 수정하지 않음으로써 발생한 각종 손해와 잘못된 수정으로 인하여 발생한 손해는 당해 판매자가 부담하여야 하며, 회사는 이에 대하여 아무런 책임을 지지 않습니다.
제13조 (ID 또는 E-Mail 주소의 관리)
가.ID 및 비밀번호에 대한 관리책임은 판매자에게 있으며, 판매자는 ID 및 비밀번호를 타인에게 양도, 대여할 수 없습니다.
나.회사의 행위에 의하지 아니한 ID또는 비밀번호의 유출, 양도, 대여로 인한 손실이나 손해에 대하여 회사는 아무런 책임을 지지 않습니다.
다.판매자가 ID 또는 비밀번호를 도난 당하거나 제3자가 이를 사용하고 있음을 인지한 경우, 즉시 회사에 통보하여야 하고, 회사의 안내가 있는 경우에는 그에 따라야 합니다.
제14조 (판매서비스의 종류 및 이용)
가.회사는 판매서비스의 종류에 따라 각 주문의 특성, 주문 절차 및 주문 방법에 대한 사항을 서비스 화면을 통하여 공지합니다.
나.판매자는 회사가 공지한 각 주문에 관한 사항을 사전에 충분히 이해하고 판매서비스를 이용하여야 합니다.
다.판매자는 ID와 비밀번호, 실명인증(본인확인기관을 통해 받은 식별정보)을 통하여 회사가 제공하는 판매서비스에 접속할 수 있고, 동 상품판매서비스를 이용하여 상품을 판매할 수 있습니다.
라.판매자가 판매서비스를 통하여 판매하는 경우, 반드시 회사가 마련한 매매보호서비스를 통하여 거래를 완료하여야 합니다. 회사는 회사 사이트를 통한 정상적인 거래 외의 직거래로 인하여 발생한 문제에 대하여 책임지지 않습니다.
제15조(판매서비스 이용정지, 이용제한 및 판매자의 신용도)
가.회사는 판매서비스를 통한 거래의 안전성과 신뢰성을 위하여 이 약관에서 정한 바에 따라 판매자 자격을 정지하거나 판매서비스의 이용을 제한할 수 있습니다. 판매자 자격이 정지된 판매자는 판매서비스를 이용할 수 없으며, 판매서비스의 이용이 제한된 판매자는 일부 판매서비스를 이용할 수 없습니다.
나.판매자 자격의 정지와 판매서비스의 이용제한
1) 신용점수에 따른 판매자 자격정지 등
①신용점수 제도: 회사는 이용자간의 거래를 평가하여 판매자에게 신용점수를 부여합니다. 회사는 판매자의 신용점수에 따라 판매자 자격을 정지하거나 일정한 판매서비스의 이용을 제한할 수 있습니다.
②판매거부: 주문이 성립된 이후에 해당 상품의 판매를 판매자가 거부하는 경우, 구매자의 상품대금 입금확인일로부터 5일~7일(거래 방법에 따라 다를 수 있음, 토요일, 공휴일 제외)이 지나도록 판매자의 발송표시가 이루어지지 않아 구매자가 [결제취소] 항목을 클릭한 경우에는 판매거부로 처리되며, 판매신용점수에서 차감될 수 있습니다.
③판매자 자격의 정지 등: 회사는 판매서비스를 통한 거래의 신뢰성과 거래질서 유지를 위하여 판매자의 신용점수에 따라 판매자의 자격과 판매서비스 이용을 제한하거나 영구 정지할 수 있습니다.
④판매자 자격정지 등의 해소: 회사는 신용점수에 따라 판매자 자격이 정지되거나 판매서비스의 이용이 제한된 판매자가 회사가 정하는 기준을 충족하는 소명을 할 경우 판매자 자격 정지 또는 판매서비스 이용제한 조치를 해소할 수 있습니다.
2) 직거래 유도 행위
회사는 직거래유도행위에 대하여 경고, 일시정지, 영구정지 (판매자 자격의 정지) 등의 제한을 부과합니다
3) 기타 위법•부당행위
회사는 판매자가 다음 각 항목의 하나에 해당하는 경우에 법령준수, 타인의 권리 보호, 사이트의 안전 확보 등을 위한 조치를 하거나 위법•부당한 행위가 해소된 것이 확인될 때까지 판매자 자격을 정지하거나 서비스 제공을 거부 또는 제한할 수 있습니다

①회사의 사이트, 시스템, 서비스를 스팸정보 전송에 이용한 경우
②타인의 주민등록번호를 부정 사용하여 판매자가입한 경우
③부당 또는 부정하게 타인의 아이디를 사용하여 서비스를 이용한 경우
④거래이행을 위한 구매자 또는 회사로부터의 연락 회피나 제15조 나항에 의한 제재 회피 등 부정한 목적으로 제12조 가항에서 규정한 판매자 정보의 수정을 거부하거나 해태한 경우
⑤제20조의 거래금지상품 거래나 운영정책 위반 정도가 상당한 경우
다.판매자 자격이 정지된 판매자 및 판매서비스 이용이 제한된 판매자에게 완료되지 않은 주문이 있는 경우 해당 판매자는 주문에 관한 제반 과정을 완료하여야 합니다.
라.신용도 평가 제도
회사는 판매서비스의 신뢰성 향상을 위하여 위 나항의 신용점수 제도와 함께 아래와 같이 신용도 평가 제도를 운용합니다. 단, 판매자의 신용도는 주문의 참고자료에 불과하며 판매자의 신용을 보증하거나 금융상의 신용 상태를 의미하는 것은 아닙니다. 판매자가 이용계약해지 후 재가입하는 경우에도 이용계약해지 전 부과된 등급, 만족도 등의 신용도는 그대로 유지됩니다

①판매등급: 회사는 판매자의 거래실적과 신용점수 등에 기초하여 다독 다독중고c2c에서는 판매등급을 부여하고 조정합니다. 등급의 종류 및 단계는 회사의 정책에 따라 달라질 수 있습니다.
②만족도: 거래상대방이 남긴 신용도 평가 결과에 따라 부여됩니다.
③회사의 책임과 권한: 상대방에 대한 신용도 평가는 전적으로 평가 당사자의 책임하에 이루어지며, 회사는 내용의 진위에 대해 개입하지 않습니다. 다만, 신용도 평가 제도의 취지에 반하는 행위들에 대해서는 해당 신용도 평가 결과의 삭제 및 판매자 자격 정지 등의 제재를 가할 수 있습니다. 위반행위의 예로는 다음이 있으나, 이에 제한되지 않습니다.
- 만족도를 증가시키기 위한 인위적인 조치
- 타인에 대한 모욕, 명예훼손, 신용을 훼손하는 평가
- 기타 제도의 취지에 어긋나게 평가를 이용한 경우
제16조 (대리 및 보증의 부인)
가.회사는 이용자 상호 간의 거래를 위한 온라인 거래장소(marketplace)를 제공할 뿐이므로 상품을 판매하거나 구매하고자 하는 회원을 대리하지 않습니다. 또한, 회사의 어떠한 행위도 판매자 또는 구매자를 대리하는 행위로 간주하지 않습니다.
나.회사는 판매서비스를 통하여 이루어지는 이용자간의 판매 및 구매와 관련하여 판매 의사 또는 구매 의사의 존재 여부 및 진정성, 등록상품의 품질, 완전성, 안전성, 적법성 및 타인의 권리에 대한 비침해성, 판매자가 입력하는 정보 및 그 정보를 통하여 링크된 URL에 게재된 자료의 진실성 등 일체에 대하여 보증하지 아니하며, 이와 관련한 일체의 위험과 책임은 해당 판매자가 부담해야 합니다.
다.회사는 판매자가 게재하는 상품설명 등의 제반 정보를 통제하거나 제한하지 않습니다. 다만, 회사는 판매자가 게재한 정보의 내용이 타인의 명예, 권리를 침해하거나 법 규정과 회사의 운영정책을 위반한다고 판단하는 경우에는 이를 삭제할 수 있고, 판매 취소, 판매중지, 기타 필요한 조치를 취할 수 있습니다.
제17조 (매매보호 서비스)
가.회사는 판매서비스를 제공하는 과정에서 대금의 수령, 보관 및 송금업무로 이루어지는 매매보호 서비스를 제공합니다. 이러한 매매보호 서비스는 판매서비스를 통하여 이루어지는 판매자 상호 간의 거래의 안전성과 신뢰성을 도모하고 구매자를 보호하기 위한 목적에서 제공하는 장치이므로 회사가 매매보호 서비스를 통하여 판매자 또는 구매자를 대리, 대행하거나 그 이행을 보조하는 것은 아닙니다.
나.회사가 제공하는 매매보호 서비스는 기본적인 판매서비스에 포함됩니다. 판매자가 매매보호 서비스를 통하지 않는 직거래를 유도하는 경우, 회사는 상품등록취소, 판매중지 등 기타 필요한 조치를 취할 수 있습니다.
다.매매보호 서비스의 일환으로 이루어지는 대금보관으로 인하여 회사가 취득하는 이자 등은 서비스 제공의 대가이므로 판매자는 회사에 대하여 이자 등의 반환을 청구할 수 없고, 대금송금으로 인하여 발생하는 수수료는 대금을 송금하는 판매자가 부담하여야 합니다.
라.회사가 제공하는 매매보호 서비스를 이용하지 않은 거래 및 상품 또는 매매보호 서비스를 이용한 거래 및 상품에 대하여 매매보호 서비스가 종결된 경우 해당 거래와 관련하여 발생한 모든 사항은 판매자와 구매자가 상호협의를 통해 해결하여야 합니다.
마.판매자는 회사가 제공하는 서비스를 이용함에 있어서 매매보호 서비스의 이용과 그 규칙에 동의하여야 합니다.
바.회사가 제공하는 매매보호 서비스를 오용, 악용함으로써 사회질서, 미풍양속을 침해하거나 침해할 우려가 있다고 판단되는 경우 또는 회사가 매매보호 서비스를 제공하지 못할 상황 또는 사유가 발생하는 경우 회사는 판매자의 상품 등록 시에 제공되는 매매보호 서비스를 상품의 일부 또는 전부에 대하여 제공하지 않거나 제한할 수 있습니다.
사.매매보호 서비스를 이용함에 있어 판매자는 다음에 기재한 사유가 발생하지 않도록 유의하여야 합니다.
1)카드의 미 서명, 관리 소홀, 대여, 양도, 보관, 이용위임, 담보 제공, 불법 대출 등으로 인한 부정 사유 또는 위,변조 사고
2)판매자의 가족, 동거인(사실상의 동거인 포함)에 의하거나 또는 이들이 관련하여 생긴 부정사용 또는 위,변조 사고
3)카드 비밀번호 유출로 인한 부정 사용 또는 위,변조 사고
제18조 (판매자의 의무)
가.판매자는 이 약관과 회사가 서비스화면을 통하여 미리 공지하는 개별약관이 정하는 절차에 따라 판매상품의 등록, 판매 진행 과정의 관리, 주문 받은 구매자에 대한 거래이행, 상품배송, 청약 철회 또는 반품 등의 사후처리를 수행하여야 합니다.
나.판매자는 구매자가 상품에 대해 문의를 할 시에는 성실히 응해야 합니다.
다.회사 및 판매자는 주문자의 주문이 허위 또는 비합리적인 주문에 해당하는 경우 그 주문을 취소할 수 있습니다.
라.판매자는 회사로부터 주문취소의 요청이 있는 경우 이에 응하여 요청된 주문을 취소하여야 합니다.
마.판매상품의 등록은 상품등록 서비스 화면상의 등록양식에 따라야 하며, 상품등록양식에 어긋난 등록이나 허위등록, 판매가장등록, 신용카드 결제 시스템만을 이용하기 위하여 허위등록하는 경우 등에 대해서는 회사는 해당 상품을 삭제, 취소하거나 중개를 하지 않을 수 있으며, 이에 따른 모든 책임은 그러한 상품을 등록한 판매자가 부담하여야 합니다. 또한 신용카드 결제 시스템만을 이용하기 위하여 허위등록한 경우에는 판매자와 구매자 모두 판매자 자격이 정지될 수 있습니다.
바.판매자는 상품등록 시 직거래를 유도하는 문구나 구매자의 정당한 권리(청약 철회권 등)를 제한하거나, 허위이거나, 기타 위법한 내용(문구, 사진 또는 설명을 포함)을 등록해서는 안 되며, 판매서비스의 안전성과 신뢰성을 해하는 부정한 행위를 하여서도 안 됩니다. 이를 위반한 경우 회사는 관련 판매자나 해당 판매에 대하여 판매취소, 판매중지 및 기타 필요한 조치를 취할 수 있습니다.
사.판매자는 회사의 명칭, 로고 및 판매자의 신용등급 표시를 회사가 정한 목적 이외의 목적으로 임의로 사용하거나 지정된 곳 이외의 장소에 표시하여서는 안 되며, 이러한 행위로 인하여 회사 또는 타 판매자에게 피해가 발생한 경우 이에 대하여 일체의 법적 책임을 부담하여야 합니다.
아.판매자는 회사의 인터넷사이트에서의 거래와 관련하여 전자상거래등에서의소비자보호에관한법률 등 관계법령에서 명시한 자료를 보관하여야 합니다.
자.판매자는 상품 및 상품의 등록, 판매의 과정에서 타인의 지적재산권을 포함하여 권리나 명예를 훼손해서는 안 되며 이와 관련하여 분쟁이 생겼을 경우 판매자의 책임으로 이를 해결하며, 회사는 이와 관련하여 어떠한 책임을 지지 않으며, 회사가 피해를 볼 경우 판매자는 이를 보상하여야 합니다.
제19조 (판매상품의 등록)
가. 등록방법
1)판매자는 판매상품의 등록 시 구매자가 구매상품에 대한 정보를 확인할 수 있도록 다음과 같은 사항을 정확하게 기재하여야 합니다.
ㄱ. 판매수량 및 구매제한 수량
판매수량에는 판매하고자 하는 상품의 수량을 기재하여야 합니다. 등록 1건당 등록할 수 있는 최대수량은 실제로 판매 가능한 수량을 기재 하여야 합니다. 이에 대한 책임은 판매자가 전적으로 집니다. 회사는 거래의 안전성 등을 위하여 상품의 종류와 유형에 따라 판매수량을 제한할 수 있습니다.
ㄴ. 상품의 상세정보
상품에 대한 상세정보는 사실대로 명확하게 기재하여야 합니다. 또한 실수 또는 착오 없이 거래하는 데 필요한 거래조건을 구체적으로 명시하여야 합니다. (예시: 전자상거래등에서의소비자보호에관한법률 제13조 제2항) 허위 또는 과장 정보를 기재한 경우, 모순되는 내용의 정보가 기재되어 있는 경우, 이 약관에 반하는 거래조건이 기재된 경우 회사는 해당 주문을 취소하거나 중지시킬 수 있습니다. 이 경우, 취소 또는 중지된 판매에 관한 등록 수수료 및 유료부가서비스 수수료는 환불되지 않으며, 주문의 취소 또는 중지로 인한 모든 위험과 책임은 판매상품을 등록한 해당 판매자가 부담해야 합니다. 주문이 취소되거나 중지되면, 회사는 서비스화면 또는 E-Mail 등의 방법을 통하여 해당 판매자와 구매자에게 그러한 사실을 통지합니다
ㄷ. 배송비
배송비는 ①판매자 부담(무료배송) ②구매자 부담 ③일정액 미만 주문일 경우 구매자 부담의 3가지 중 하나를 선택하여야 합니다. 운송료가 구매자부담일 경우 배송비는 선결제이며 예상 운송비를 기재하여야 합니다. 회사가 지정한 배송사를 이용하는 경우, 회사가 지정한 배송비만으로 기재되어야 하며 실제로 운용되어야 합니다. 단, 배송지역에 따라 배송비가 변동하는 서비스는 배송비 기재를 생략할 수 있습니다.
2)판매자는 등록상품에 특별한 거래조건이 있거나 추가되는 비용이 있는 경우, 이를 구매자가 알 수 있도록 명확하게 기재하여야 합니다. 다만, 이러한 특별한 거래조건은 구매자의 정당한 권리를 제한하거나 이 약관을 위반하거나 기타 회사가 미리 정한 거래조건에 위배되어서는 안 됩니다.
3)사업자판매자가 상품등록을 하는 경우에는 전자상거래등에서의소비자보호에관한법률 및 전자거래소비자보호지침 등에 따라 회사가 제공하는 양식에 따라 판매자 정보를 기재하여야 합니다. 회사는 이를 위하여 사업자판매자가 판매자가입시에 기록한 해당 사업자정보를 사업자의 표시사항으로 공개합니다. 사업자판매자가 위와 같은 사항을 명시하지 않거나 허위로 기재한 경우 회사는 상품등록취소, 판매중지 기타 필요한 조치를 취할 수 있습니다. 이 경우, 사업자정보 미표시, 상품등록취소 또는 판매중지로 인한 모든 위험과 책임은 해당 사업자판매자가 부담하여야 합니다.
4)판매자는 상품정보를 등록함에 있어서 저작권, 초상권 등 제3자의 권리를 침해해서는 안 됩니다. 판매자가 등록한 상품정보는 판매 활성화를 위하여 회사가 제휴한 사이트와 다른 판매자의 블로그 등에 노출될 수 있습니다. 다만, 다른 판매자의 블로그 등에의 노출은 다른 판매자가 회사가 정한 이용규칙에 동의하고 회사가 허용한 방식으로 퍼가기 하는 경우에만 가능합니다.
제20조 (거래불가 상품 및 행위)
가.회사는 등록된 상품이 온라인에서의 매매, 유통에 적합하지 않은 상품인 경우에는 직권 또는 권리주장자의 요청에 따라 해당 상품 등록을 삭제, 취소하거나 중지 혹은 경우에 따라 강제 탈회 조치 할 수 있습니다.
나.회사는 등록된 상품이 법령에 위반되거나, 미풍양속을 저해하거나 기타 위법 또는 탈법행위와 관련되거나 그러한 목적이 있는 경우 또는 회사의 정책상 필요에 의한 경우에는 직권으로 이를 삭제, 취소하거나 중지할 수 있습니다. 이의 구체적인 예시는 별도 서비스 화면에 의하며 회사는 이를 임의로 추가 또는 변경할 수 있습니다. 거래불가 상품과 행위는 다음과 같습니다.
①매매불가상품
도서, 음반(CD), DVD 타이틀 외의 상품에 대해서는 매매할 수 없습니다. 또한 지적재산권 침해상품, 미등록 영상 매체물 등 관련 법령상 판매 또는 유통이 불가한 상품을 말합니다.
②매매제한상품
도서, 음반(CD), DVD 타이틀이라고 할지라도 상품의 판매방식, 판매장소 또는 판매 대상자 등에 대한 법적 제한이 있는 상품, 소비자에게 피해가 발생할 염려가 있는 상품, 원활한 판매진행을 방해하는 상품, 기타 사회 통념상 매매에 부적합하거나 회사의 정책에 의하여 매매가 제한되는 상품을 말합니다. - "출판물불법유통신고센터"의 협조 요청에 따라, 중고샵 도서 중 "출간한 지 18개월 미만의 신간(도서정가제 적용 도서)"에 대해 과다 할인하여 판매하는 것을 금지합니다. 이에 해당하는 상품의 경우 출판사의 요청이 있을 시 사전 통보 없이 "판매중지" 처리될 수 있습니다. - 몰 입점 판매자가 도서정가제(출판문화산업진흥법) 규제를 피하기 위해 새 책을 중고도서로 허위 등록해 우회 할인판매 시도하는 행위가 인지될 경우에는 강제 탈회 조치할 수 있습니다.
③회사는 매매부적합상품에 해당되는 상품의 구체적인 종류와 내용을 별도의 서비스화면 에 게재하며, 이를 임의로 추가, 변경할 수 있습니다.
다.회사는 권리의 보호를 위하여, 권리주장자가 회사가 정한 절차 및 방식에 따라 신고 또는 요청을 하는 경우, 당해 상품등록을 삭제, 취소 또는 일시 중지하고 이를 해당 상품의 판매자에게 통지합니다. 이러한 경우 회사는 당해 권리주장자의 신원, 신고 또는 요청이 회사의 절차 및 방식에 부합하는지 여부만을 서면으로 심사할 책임을 지는 것에 그치며, 당해 권리의 실질적 유효성 및 범위, 당해 권리의 주체 및 동 권리에 관련된 계약 또는 실질적 관계 등에 대한 심사를 행하지 않습니다. 회사는 권리주장자의 신고 또는 요청에 의한 상품등록의 삭제, 취소 또는 일시 중지에 대해 일체의 책임을 지지 않으며, 이는 권리 주장자와 판매자 사이에서 해결되어야 합니다.
라.회사가 직권 또는 권리주장자의 신고 또는 요청에 따라 해당 상품등록을 삭제, 취소하거나 중지한 경우, 판매자는 이에 대한 이의를 회사가 정한 절차와 방식에 따라 소명함으로써 회사의 조치에 대한 중단을 요청할 수 있습니다. 이 경우 회사는 판매의 재개, 재등록 등의 조치를 취하고 이를 권리 주장자에게 통보합니다. 판매자의 소명이 있는 경우, 회사는 해당 소명이 회사가 정한 절차와 방식에 부합하는지 여부만을 서면으로 심사하는 것에 그치며 해당 소명의 유효성, 적법성, 타당성 및 판매자의 권리 등에 대한 심사를 행하지 않습니다. 회사는 판매자의 소명에 따른 판매의 재개, 재등록 등에 대하여 일체의 책임을 지지 않으며, 이는 권리 주장자와 판매자 사이에서 해결되어야 합니다.
마.거래불가 상품의 등록을 이유로 주문이 삭제, 취소되거나 중지된 경우, 그 등록에 사용된 등록 수수료 및 유료부가서비스 수수료는 환불되지 않으며, 판매자는 회사가 제공하는 서비스를 이용하실 수 없도록 판매자 자격이 제한될 수 있습니다.
바.회사는 거래불가 상품의 여부를 확인하기 위하여(상품 또는 상품등록정보 등에 대하여 이의, 신고가 접수된 경우를 포함) 해당 주문의 진행을 일시 중지할 수 있습니다. 이 경우, 회사는 판매자와 주문자에게 중지 사실을 통지합니다. 회사는 이후 거래불가 상품이 아닌 것으로 확인된 경우 즉시 해당 주문이 정상적으로 진행될 수 있도록 조치합니다.
사.거래불가 상품임을 알거나 알 수 있는 상태에서 상품을 구매한 경우에는 매매대금의 입출금을 중개하지 않을 수 있습니다.
아.만 19세 미만의 판매자는 성인용 상품의 판매 및 주문에 참여할 수 없습니다. 회사는 그러한 판매자에 대해서는 성인용 상품에 관한 판매서비스를 제공하지 않습니다.
제21조 (상품판매규정)
가.판매기간은 판매자가 기재한 모든 판매수량이 판매된 경우 또는 회사에 의하여 직권으로 해당 주문이 취소되는 경우 등에는 조기에 종료될 수 있습니다.
나.주문이 종료되면, 회사는 판매자용 서비스화면에 주문 여부를 게시합니다. 또는 24시간 이내에 주문 여부를 SMS, E-Mail 등의 방법으로 통지할 수 있습니다. 주문은 회사가 보내는 주문확인메일의 수신 또는 판매자용 서비스 화면을 통하여 확인할 수 있습니다.
다.회사는 구매자가 입금 또는 상품 대금을 결제하면 즉시 판매자에게 이 사실을 통보합니다.
라.판매자는 회사로부터 구매자의 주문사실을 통보 받은 후 이 약관 제24조에서 정하고 있는 배송 절차를 취하여야 합니다.
마.판매자가 상품등록 시 배송비를 구매자부담으로 기재하면서 배송비 선결제를 선택하고 구매자가 이에 동의한 경우에 이 약관 제21조 내지 제26조에서 정한 구매자의 상품 대금 입금 또는 대금결제, 회사의 상품대금 송금 및 반품에 따른 환불에서의 상품 대금에는 선결제 배송비도 포함된 것으로 합니다.
바.주문이 주문으로 종료된 경우, 회사는 상품대금의 입출금에 관한 매매 보호 서비스만을 제공합니다. 판매자는 그 외 상품의 배송, 반품, A/S 등에 관련한 사항은 항상 구매자와 협의하여 진행해야 하며, 회사는 판매자와 구매자 간의 거래에 관여하지 않습니다.
제22조 (배송)
가.판매자는 회사로부터 구매자의 입금 또는 대금결제에 대한 확인통지를 받은 후 영업일 2일 이내에 배송에 필요한 조치를 하고, 판매자매니저 내 판매자용 서비스 화면에 상품을 발송하였음을 표시하여야 하며 회사가 요청하는 경우 구매자 및 회사로부터 연락 가능한 휴대전화번호에 대한 인증 절차를 거쳐야 합니다. 휴대전화번호 인증을 하지 않은 경우에는 이 약관 제25조에 따른 송금 절차가 진행되지 않을 수 있습니다. 입금확인일로부터 5일~7일 (거래방법에 따라 다를 수 있음)이 경과하도록 상품발송표시가 이루어지지 않을 경우 구매자는 [결제취소] 항목을 클릭할 수 있으며 이 경우 해당 주문은 판매거부로 인정되어 취소됩니다.
나.판매자가 상품을 발송하였음을 표시한 경우, 회사는 구매자가 이러한 사실을 알 수 있도록 구매자용 서비스 화면에 표시하거나 메일 등으로 통지합니다.
다.판매자가 상품을 운송할 경우 구매자가 상품을 수령하기까지의 위험은 판매자가 부담합니다. 이에 따라 판매자는 구매자가 하자(파손,멸실,부패 등) 없는 상품을 수령할 수 있도록 상품의 포장, 운송업체의 선정, 기타 필요한 조치를 적정하게 하여야 합니다.
라.판매서비스를 통하여 거래된 상품의 운송과 관련하여 판매자와 구매자, 운송업체, 금융기관 등과 사이에 분쟁 등이 발생한 경우에는 관련 당사자간에 해결하여야 합니다. 회사는 이에 대하여 관여하지 않으며 어떠한 책임도 부담하지 않습니다.
마.판매자와 구매자 간 거래되는 판매 물품은 판매 주체가 개별 판매자로서, 배송비의 적용은 판매자의 배송정책에 따릅니다.
제23조 (구매결정 및 정산)
가.구매자는 상품을 수령한 후 반품하지 않고 구매를 최종적으로 결정하게 되면, 판매자에 대한 대금 송금을 위하여 즉시 서비스화면에서 ‘중고수령확인’ 항목을 클릭해야 합니다. 구매결정을 하게 되면 구매자가 회사에 보관 의뢰한 상품 대금은 판매자에게 송금되므로 구매결정 이후에 발생하는 반품, A/S 등은 구매자와 판매자가 직접 연락하여 해결하여야 합니다.
나.구매자가 서비스화면에서 ‘중고수령확인’ 또는 '구매 결정'을 클릭한 경우, 회사는 그로부터 2일(토요일, 공휴일 제외) 이내에 상품 대금에서 이 약관 제28조에 따른 주문 수수료, 회사에 대한 미납 수수료 및 기타 채무금을 공제한 나머지 금액을 판매자에게 송금합니다. 다만, 구매자가 신용카드로 결제한 경우, 회사는 이 약관 제18조 마항의 허위등록 또는 판매가장등록, 신용카드 결제 시스템만을 이용하기 위한 허위거래 여부를 확인하기 위하여 최고 60일까지 송금을 보류할 수 있습니다. 이 경우, 판매자가 상품판매에 관한 거래사실 증빙서류를 회사에 제공하는 때에는 확인 후 송금 처리를 합니다.
다.판매자가 지정한 입금계좌의 예금주와 판매자가 상이한 경우에는 회사는 이용계약 및 해당 거래의 진정성을 확인하기 위하여 최고 60일까지 상품 대금의 송금을 보류할 수 있습니다. 다만, 판매자가 자신의 신분증 사본, 예금주의 신분증 사본, 예금주 명의의 통장 사본을 회사에 제공하면서 송금을 요청하는 경우 해당 판매 건에 한하여 확인 후 송금 처리합니다.
라.구매결정 지연으로 인한 송금요청
판매자의 확인요청에도 불구하고 구매자가 반품, 환불 등의 의사표시 없이 구매결정을 지연하는 경우 상품을 전달하였음을 입증하여 회사에 송금 요청 할 수 있으며, 이 경우 거래방식에 따라 회사가 규정한 시간이 지나면 판매자에게 상품대금을 송금합니다.
마.주문의 자동 종료
판매자가 거래방식에 따라 적합한 행동을 취한후 4일 ~ 30일(거래 방식에 따라 다름)이 경과하도록 구매자로부터 상품 미수령, 반품, 환불 등에 관한 아무런 의사표시가 없는 경우 회사는 구매자에게 이러한 사실을 알리고 구매자의 결정을 요청합니다. 그럼에도 불구하고 구매자의 의사표시가 없는 경우 회사는 판매 절차를 종료하고 상품 대금을 판매자에게 송금합니다..
바.회사는 기본적으로 판매자의 상품 대금을 예치금으로 지급하며, 판매자가 예치금에 대해 지정한 은행 계좌로 입금신청을 하면 회사는 현금 입금을 합니다.
제24조 (반품과 환불)
가.구매자는 상품을 수령하지 못한 경우 판매자가 표시한 상품발송일로부터 7일 이내에 판매자 또는 회사에 상품 미수령 통지를 하여야 합니다. 이 경우, 구매자의 통지일로부터 7일 이내에 판매자가 상품 도착 증빙을 제공하지 못하는 경우 회사는 입금된 대금을 구매자에게 환불합니다.
나.구매자는 상품을 수령한 후 7일 이내에(상품등록정보에 그 이상의 기간이 게시되어 있는 경우에는 그 기간 내에) 반품할 수 있습니다. 이 경우, 판매자는 구매자의 반품을 인정하여야 합니다. 다만, 구매자의 귀책 사유로 상품이 훼손된 경우(내용 확인을 위한 포장 훼손은 제외), 사용이나 일부 소비로 인하여 상품의 가치가 현저히 감소한 경우(판매자가 미리 고지한 경우에 한함), 재판매가 곤란할 정도로 상품의 가치가 현저히 감소한 경우, 복제 가능한 상품의 포장을 훼손한 경우와 기타 법령에 의하여 반품이 제한된 경우에는 반품할 수 없습니다.
다.구매자는 반품하고자 하는 경우, 즉시 판매자와 배송비 협의 후 나의계정 주문조회 화면의 '반품요청' 또는 '취소 요청' 버튼을 클릭하거나 E-Mail, 전화, 팩스 기타의 방법을 통하여 반품의사를 통지를 하여야 하며, 회사에 대하여는 해당 서비스 화면에 반품요청을 하였음을 표시하여야 합니다. 이 경우, 회사는 상품대 금의 송금을 보류합니다. 다만, 회사는 구매자가 반품을 요청한 경우에도 위 나항 단서에 해당하는 사유가 있음이 입증된 경우에는 구매결정 여부와 관계없이 즉시 판매자에게 상품 대금을 송금할 수 있습니다.
라.반품 시 소요되는 운송료는 반품의 원인을 제공한 자가 부담함을 원칙으로 합니다.
마.구매자는 반품하는 경우, 판매자에게 안전하게 반품하여야 합니다. 상품을 반품받은 판매자는 대금의 환불을 위하여 즉시 판매자용 서비스화면에서 [반품승인] 또는 [취소승인]항목을 클릭하여야 합니다. 이 경우, 회사는 2일(토요일, 공휴일 제외, 이하 "환불 기간") 이내에 구매자에게 대금 전액을 환불하거나 신용카드 결제취소 등 필요한 조치를 취하고 이를 구매자에게 통지합니다. 판매자의 [반품승인] 또는 [취소승인]항목의 클릭 지연으로 인한 손해는 판매자가 부담하여야 합니다.
바.구매자는 반품발송일로부터 10일이 경과하면 회사에 대하여 반품 발송 증빙을 첨부하여 환불을 요청할 수 있습니다. 이 경우, 회사는 환불기간 이내에 구매자에게 환불에 필요한 조치를 취합니다. 다만, 회사가 구매자에게 환불할 때까지 판매자가 회사에 대하여 반품 미수령통지를 하거나 [반품 거절]을 클릭한 경우에는 환불을 보류하며, 판매자가 상품 도착 증빙 등을 통하여 상품수령일로부터 7일이 경과한 이후에 구매자의 반품통지가 있었음을 증명하는 경우에는 판매자에게 대금을 지급합니다. 판매자의 반품 미수령 통지로 인하여 환불이 보류된 경우에도 구매자가 반품도착 증빙을 첨부하여 환불요청을 하면, 회사는 환불기간 내에 환불에 필요한 조치를 취하나 회사가 구매자에게 환불할 때까지 판매자가 [반품 거절] 또는 [취소거부] 항목을 클릭하는 경우 환불을 보류합니다.
사.상품을 반품받은 판매자는 배송비 정산, 부속품/종물/사은품의 반환 확인 등이 필요하거나 정당한 사유가 있는 경우 [반품 거절] 또는 [취소거부] 항목을 클릭할 수 있습니다. 판매자가 [반품 거절] 또는 [취소거부] 항목을 클릭한 경우, 회사는 구매자에 대한 환불을 보류하며, 반품과 관련된 분쟁은 판매자와 구매자 간에 스스로 해결하여야 합니다.
아.구매자는 위 가항 내지 사항 규정에 의한 회사의 매매보호 서비스가 종료한 이후에도 관련 법령에 따라 반품을 행할 수 있습니다. 이외에 구매자는 수령한 상품이 판매자가 등록한 상품정보와 다른 경우에는 상품수령일로부터 3월 이내, 그러한 사실을 안 날이나 알 수 있었던 날부터 30일 이내에 반품을 할 수 있습니다. 다만, 이 경우 구매자는 판매자에 대하여 직접 반품에 따른 환불요청 등을 하여야 하고 회사는 이에 대하여 개입하거나 책임지지 않습니다.
자.이 약관에 규정된 회사의 매매보호 서비스가 종료한 후 회사의 판매서비스를 통하여 거래된 상품의 하자, 반품, 환불 등과 관련하여 판매자와 구매자, 운송업체, 금융기관 등과 사이에 분쟁 등이 발생한 경우 관련 당사자 간에 해결하여야 하고, 회사는 이에 대하여 관여하지 않으며 어떠한 책임도 부담하지 않습니다.
제25조 (예치금)
가.예치금은 현금으로 선 적립되거나 상품 대금, 환불 대금을 적립하는 경우에 발생합니다. 예치금은 출금이 가능하며, 이용계약의 종료 시에는 마이너스 예치금과의 정산 후 그 잔액이 출금됩니다. 그리고, 예치금의 출금은 특별한 사정이 없으면 판매자의 출금 요청일로부터 2일 이내(토요일, 공휴일 제외) 판매자 명의 계좌로의 송금을 원칙으로 하고, 타인 명의의 계좌로의 출금을 요청하는 경우에는 회사에서 정하고 있는 본인확인 또는 증빙서류를 회사에 제공하는 때에만 가능합니다.
나.판매자는 상품의 판매 또는 구매와 관련하여 예치금에 의한 수수료의 결제 또는 대금의 결제를 선택할 수 있습니다.
제26조 (수수료)
가.회사가 부과하는 거래 수수료는 상품의 광고효과 및 회사가 제공하는 시스템 이용료로서 구체적인 내용은 해당 서비스화면에 별도로 게재합니다.
나.거래 수수료는 거래 종결(구매자의 수령확인 클릭 또는 출고 후 7일 경과 시점까지 반품 의사 미통지) 주문 판매 대금의 부가세포함 10% 금액으로, 판매 대금 정산 시 해당 금액 차감 후 정산합니다. 단, 전체 반품, 취소 시에는 부과되지 않으며, 부분 반품의 경우에는 반품 후 최종 구매액을 기준으로 재계산됩니다.
다.정산 이후 특별한 사정으로 판매대금이 변경될 경우 이에 따라 차감액 조정이 이루어지며, 차감 부족 시 마이너스 예치금 등으로 처리됩니다.
라.회사는 필요한 경우 서비스 수수료를 신설, 변경할 수 있으며, 신설 또는 변경사항은 회사가 제공하는 서비스 화면의 [공지사항]란과 상품등록 서비스 화면을 통하여 시행공지 합니다. 또한, 회사는 판매 활성화를 위하여 주문의 성격, 판매실적, 판매자의 특성 등 회사가 정하는 일정한 기준과 절차에 따라 수수료 조정 또는 면제 혜택을 부여할 수 있습니다. 이 경우 회사는 미리 수수료 조정 또는 면제 혜택에 관한 주요 사항을 대상자에게 고지 또는 약정합니다.
마.거래 수수료율은 회사 방침에 따라 변동될 수 있으며 이 경우 시행 7일 이전에 이메일 또는 기타 방법으로 통지 또는 공지합니다.
바.거래 수수료는 상품판매가만을 대상으로 합니다.
제27조 (회사의 면책)
가.회사는 판매자들에게 제공하는 서비스는 온라인 거래장소(marketplace)를 제공하고 기타 부가정보를 제공함에 그치는 것이므로 판매 서비스를 통하여 이루어지는 이용자 상호 간의 거래 진행의 관리, 주문자에 대한 거래이행, 상품배송, 청약철회 또는 반품, 상품하자로 인한 분쟁 해결 등 필요한 사후처리는 거래당사자인 이용자들이 직접 수행하여야 합니다. 회사는 이에 대하여 관여하지 않으며 어떠한 책임도 부담하지 않습니다.
나.회사는 '다독 다독에 팔기' 방식의 경우 다독 다독 이용약관에 준하여 책임을 지게 됩니다.
다.회사는 천재지변 또는 이에 준하는 불가항력, 정보통신설비의 보수점검, 교체 또는 고장, 통신의 두절 등으로 인하여 일시적 또는 종국적으로 서비스를 제공할 수 없는 경우, 서비스 제공에 관한 책임이 면제됩니다. 이 경우 회사는 회사가 제공하는 인터넷사이트 화면에 게시하거나 기타의 방법으로 판매자들에게 통지합니다.
라.회사는 이용자 또는 판매자의 귀책 사유로 인한 서비스 이용의 장애에 대하여 책임을 지지 않습니다.
마.회사는 이용자간에 방식을 통하여 거래되는 상품의 하자, 상품등록정보의 오류, 미비 등으로 인하여 판매자가 입는 손해에 대해서는 책임(제조물책임 포함)을 지지 않습니다.
바.회사는 회원이 다른 판매자가 게재한 정보, 자료, 사실의 정확성 등을 신뢰함으로써 이용자가 입은 손해에 대하여 책임을 지지 않습니다.
사.회사와 피 연결회사(회사의 서비스 화면과 링크 등으로 연결된 사이트를 운영하는 회사를 말합니다)는 독자적으로 운영되며, 회사는 피 연결회사와 판매자 간에 이루어진 거래에 대하여는 책임을 지지 않습니다.
제28조 (준거법 및 관할법원)
이 약관, 회사와 판매자 간의 서비스 이용계약 및 회원 상호 간의 상품 거래에 관한 해석과 관할법원에 대하여는 대한민국 법령에 따릅니다.

제29조 (분쟁해결)
가.몰"은 이용자가 제기하는 정당한 의견이나 불만을 반영하고 그 피해를 보상처리하기 위하여 피해보상처리기구(고객지원팀)를 설치·운영합니다.
나."몰"은 이용자로부터 제출되는 불만사항 및 의견은 우선적으로 그 사항을 처리합니다. 다만, 신속한 처리가 곤란한 경우에는 이용자에게 그 사유와 처리일정을 즉시 통보해 드립니다.
다."몰"과 이용자간에 발생한 분쟁은 전자거래기본법 제28조 및 동 시행령 제15조에 의하여 설치된 전자거래분쟁조정위원회의 조정에 따를 수 있습니다.
라."몰"은 '이용자'와 '입점판매자'간에 발생하는 문제에 대해서 일체의 책임을 지지 않습니다. '이용자' 상호간 분쟁은 당사자간에 직접해결해야합니다.
제30조 이용 불편사항 신고 및 분쟁조정 신청
가.회사는 판매자가 제기하는 정당한 의견이나 불만을 반영하고 그 문제를 해결하고 이용자 상호 간의 분쟁을 조정하기 위하여 고객센터를 설치, 운영합니다. 회사는 이용자로부터 제기되는 불만 사항 및 의견이 정당하다고 판단되는 경우 이를 신속하게 처리하며, 즉시처리가 곤란한 경우에는 그 사유와 처리기간을 통보합니다.
나.본 서비스를 위반하거나 서비스 이용시 불편 사항이 발생한 경우 (주)다독 다독커뮤니케이션 고객센터의 1:1문의나 전화 1544-2514, Fax 02-6913-2600를 통해 의사를 전달할 수 있습니다.
다.회사소개
1) (주)다독 다독커뮤니케이션

라회사의 중재로도 해결이 안될 경우에는 국가에서 운영하는 전자거래분쟁조정센터(http://www.ecmc.or.kr/)의 도움을 받아보실 수 있습니다.
제31조 고지의 의무
현 개인정보처리방침은 2020년 3월 12일에 제정되었으며, 정부의 정책 또는 보안기술의 변경에 따라 내용의 추가, 삭제 및 수정이 있을 시에는 홈페이지의 '공지'란을 통해 고지할 것입니다.
		</textarea><p>
			<hr>
      		<div class="text-end">
      		<label class="form-label" for="comments"> 
          <strong >개인정보 수집 및 이용에 동의 (필수)</strong>
          </label><p>
			<input class="form-check-input"  type="checkbox" value="ck2" id="ck2" required="required">
			서비스 이용약관 (동의)
			</p>
			</div>
          <textarea rows="7" id="comments" class="form-control" disabled="disabled">
		[개인 판매자]
구분	항목	목적	보유 기간
필수	성명, 휴대전화번호, 판매자 닉네임, CI(연계정보), DI(중복정보), IP	서비스 이용을 위한 이용자식별, 중복가입방지	판매자 개인정보는 서비스 제공 기간 동안 보유 및 이용하며, 개인정보의 수집 및 이용목적의 달성 시 파기됩니다. 단, 관계 법령에 의해 보존할 경우 그 의무기간 동안 보관됩니다.
성명, 휴대전화번호, 이메일, 전화번호, 출고/반품지 주소	계약이행을 위한 연락, 서비스 이용에 따른 정보제공(고지사항 전달, 본인 의사 확인, 서비스 관련 상담, 민원사항 처리, 유의사항 등), 서비스 이용 만족도 조사
이름, 이메일, 주소, 휴대전화번호, 서비스 이용기록, 아이피 주소(IP address), 접속로그	부정 이용방지, 비인가 사용 방지, 분쟁 조정 해결을 위한 기록보존
은행 계좌정보(예금주, 계좌번호)	대금결제 서비스의 제공, 전자 금융기록 보관
[사업자 판매자]
구분	항목	목적	보유 기간
필수	상호, 사업자 등록번호, 대표자명, 법인 등록번호, 담당자명, 담당자 휴대전화번호, 판매자 닉네임, IP, 사업자등록증, 인감증명서, 법인 등기부 등본, 법인인감증명서, 통신판매 신고필증	서비스 이용을 위한 이용자식별, 사업자 확인, 중복가입방지	판매자 개인정보는 서비스 제공 기간 동안 보유 및 이용하며, 개인정보의 수집 및 이용목적의 달성 시 파기됩니다. 단, 관계 법령에 의해 보존할 경우 그 의무기간 동안 보관됩니다.
업체명, 대표자 성명, 사업자등록번호, 대표 E-Mail 주소, 휴대전화번호, 대표 유선전화번호, A/S 전화번호, 사업자등록증, 출고/반품 주소지	계약이행을 위한 연락, 서비스 이용에 따른 정보제공(고지사항 전달, 본인 의사 확인, 서비스 관련 상담, 민원사항 처리, 유의사항 등)
대표자명, 담당자명, 관리자 아이디(ID), 사업자 이메일, 주소, 담당자 이메일 주소, 휴대전화번호, 서비스 이용기록, 아이피주소(IP address), 접속로그	부정 이용방지, 비인가 사용 방지, 분쟁 조정 해결을 위한 기록보존
상호, 대표자명, 사업자등록번호, 업태, 종목	부가가치세법에 따른 세금계산서발행
통신판매업 신고번호	전자상거래법에 따른 통신판매업 신고
은행 계좌정보(예금주, 계좌번호)	대금결제 서비스의 제공, 전 자금융기록 보관
AS 전화번호	고객센터 운영 관리
개인 정보 수집 및 이용에 동의하지 않으면 회원 가입을 할 수 없습니다.
		
		</textarea><p>
		
			<hr>
      		<div class="text-end">
      		<label class="form-label" for="comments"> 
          <strong >구매 고객 개인정보 관리 약정서 (필수)</strong>
          </label><p>
			<input class="form-check-input"  type="checkbox" value="ck3" id="ck3" required="required">
			서비스 이용약관(동의)
			</p></div>
          <textarea rows="7" id="comments" class="form-control" disabled="disabled">
“입점 판매사(SCM) 또는 판매자매니저 회원"은 해당 서비스 가입 및 이용에 따라 취득한 ‘㈜다독 다독커뮤니케이션’(이하 다독 다독이라고 합니다) ‘고객’의 개인정보 취급에 있어 “입점 판매자(또는 입점 판매사)"가 지켜야 할 의무 사항을 다음과 같이 정하기로 합의합니다.
1. 기술적ㆍ관리적 보호 조치
“입점 판매사(SCM) 또는 판매자매니저 회원”은 다독 다독 상품 판매 기간을 통해 취득한 ‘고객’의 개인정보를 취급함에 있어서 개인정보가 분실ㆍ도난ㆍ유출ㆍ위조ㆍ변조 또는 훼손을 방지하고 개인정보의 안전성을 확보하기 위하여 아래 각호의 기술적ㆍ관리적 보호 대책을 강구합니다.

(1)다독 다독 ‘고객’의 개인정보 취급상품 배송 업무에 참여한 “입점 판매사(SCM)의 대표 또는 판매자매니저 회원, 대표들은 해킹이나 컴퓨터 바이러스 등에 의해 ‘고객’의 개인정보가 유출되거나 훼손되는 것을 막기 위해 최선을 다합니다. 최신 백신 프로그램을 이용하여 ‘고객’들의 개인정보나 자료가 유출되거나 손상되지 않도록 방지하며, 침입 차단 시스템 등을 이용하여 외부로부터의 무단 접근을 통제하고 기타 시스템적으로 안정성을 확보하기 위한 가능한 모든 기술적 장치를 갖추어야 합니다.
(2)“입점 판매사(SCM) 또는 판매자매니저 회원”은 다독 다독 ‘고객’의 개인정보 취급을 최소한의 업무 담당자에 한정시키며, 담당자에 대한 수시 교육을 통하여 개인정보 보호의 중요성을 항상 강조합니다. 그리고 개인정보 보호정책의 이행사항 및 담당자의 준수여부를 주기적으로 확인하여 문제가 발견될 경우 즉시 수정하고 바로 잡습니다.
(3)“입점 판매사(SCM) 또는 판매자매니저 회원”은 다독 다독 ‘고객’의 개인정보가 안전하게 관리되는 것과 관련한 다독 다독의 적절한 관리∙감독 업무(다독 다독이 배포한 「판매자 개인정보처리방침」 준수 포함)에 성실히 협조합니다.
(4)“입점 판매사(SCM) 또는 판매자매니저 회원”는 정보통신망법 제28조, 시행령 제15조 및 개인정보의 기술적∙관리적 보호조치 기준 고시(방송통신위원회 고시 제2015-3호)를 준수합니다.
2. 개인정보에 관한 비밀유지
“입점 판매사(SCM) 또는 판매자매니저 회원”은 다독 다독으로부터 제공받은 ‘고객’ 개인정보에 관한 비밀을 유지하고 공개하거나 누설하지 않습니다.

3. 개인정보의 제3자 제공 금지
“입점 판매사(SCM) 또는 판매자매니저 회원”은 다독 다독으로부터 제공받은 ‘고객’ 개인정보에 관한 비밀을 유지하고 공개하거나 누설하지 않습니다.

4. 개인정보의 목적 외 이용 금지
“입점 판매사(SCM) 또는 판매자매니저 회원”은 다독 다독 ‘고객’ 개인정보를 파트너 입점 계약에서 양사 간 합의한 서비스의 제공, 상품과 경품 배송, 고객상담 및 불만 처리 업무 목적 이외 어떠한 다른 용도로도 사용하지 않습니다.

5. 개인정보의 파기
“입점 판매사(SCM) 또는 판매자매니저 회원”은 업무상 필요에 의해 저장하거나 인쇄한 다독 다독 ‘고객’ 개인정보를 해당업무가 종료된 경우, 보유∙이용기간이 끝난 경우, 사업을 폐업하는 경우, 이용자가 동의를 철회한 경우 지체 없이 즉시 재생•복원이 불가능한 방법으로 파기하여야 하며, 파기하는 때에는 다음 각호의 방법을 따릅니다. 또한 그 파기 결과를 다독 다독에서 제공하는 방식에 따라 문서(전자문서 포함)로써 통보 하여야 합니다.

(1)종이에 출력된 개인정보: 분쇄기로 분쇄하거나 소각
(2)전자적 파일 형태로 저장된 개인정보: 기록을 재생ㆍ복원할 수 없는 기술적 방법을 사용하여 삭제
6. 개인정보 보호책임자의 지정
“입점 판매사(SCM) 또는 판매자매니저 회원”은 다독 다독 ‘고객’ 개인정보에 대한 보호 책임자 및 담당자를 지정합니다.

7. 손해배상의 의무
“입점 판매사(SCM) 또는 판매자매니저 회원”은 본 약정서의 내용을 위반하거나 ‘고객’ 개인정보를 부주의하게 관리함으로써 발생시킨 모든 문제에 대해 손해배상의 책임을 집니다.

8. 기타
본 약정서에 명시된 내용 이외의 문제에 대해서는 상호 신의에 의해 해결함을 원칙으로 하되, 원만하게 해결되지 않을 경우, 제1심 관할 법원은 서울중앙지방법원으로 합니다.
		
		
		</textarea><p>
		
		
		
	 <div class="d-grid gap-2">
	 	  <button type="submit"  class="btn btn-success mb-2" >판매 계속</button>
	 </div>
</form>

</body>
<%@ include file="../common/footerFo.jsp" %>
</html>