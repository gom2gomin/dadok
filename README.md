<div align=left><h2>🚩도서 구매 및 중고거래 플랫폼🚩</h2></div>

### 💡PPT
[곽승현_DADOK_EVENT.pdf](https://github.com/gom2gomin/dadok/files/13901692/_DADOK_EVENT.pdf)

### 💡개요
+ 일반 도서사이트와 구별하여 신규 및 중고 도서를 판매해, 사용자들이 가지고 있
던 기존 도서들을 구매하여 다시 중고로 판매하는 기능을 추가하여, 더욱 많은 사람에게
도서의 진입장벽을 낮춰주는 역할에 기여하기 위한 사이트 창설했습니다

### ⏰ 개발 기간
* 2023.10.27(금) ~ 2023.11.29(수)
</div>

<div align=left><h2>📚 STACK</h2></div>

<div align=left><h3>📕 Environment</h3></div>

<div>
  <img src="https://img.shields.io/badge/github-181717?style=for-the-badge&logo=github&logoColor=white">
  <img src="https://img.shields.io/badge/git-F05032?style=for-the-badge&logo=git&logoColor=white">
</div>

<div align=left><h3>📗 Development</h3></div>



<div>
  <img src="https://img.shields.io/badge/java-007396?style=for-the-badge&logo=java&logoColor=white">
  <img src="https://img.shields.io/badge/springboot-6DB33F?style=for-the-badge&logo=Spring Boot&logoColor=white">
  <img src="https://img.shields.io/badge/html5-E34F26?style=for-the-badge&logo=html5&logoColor=white"> 
  <img src="https://img.shields.io/badge/css-1572B6?style=for-the-badge&logo=css3&logoColor=white"> 
  <img src="https://img.shields.io/badge/javascript-F7DF1E?style=for-the-badge&logo=javascript&logoColor=black"> 
  <img src="https://img.shields.io/badge/jquery-0769AD?style=for-the-badge&logo=jquery&logoColor=white">
  <img src="https://img.shields.io/badge/oracle-F80000?style=for-the-badge&logo=oracle&logoColor=white">
  <img src="https://img.shields.io/badge/gradle-02303A?style=for-the-badge&logo=gradle&logoColor=white">
  <img src="https://img.shields.io/badge/jsp-E6700C?style=for-the-badge&logo=jsp&logoColor=white">
  <img src="https://img.shields.io/badge/mybatis-251C1D?style=for-the-badge&logo=mybatis&logoColor=white">
  <img src="https://img.shields.io/badge/bootstrap-7952B3?style=for-the-badge&logo=bootstrap&logoColor=white">
</div>

<div align=left><h2>🔥 역할🔥</h2>
  
**🧑‍🤝‍🧑 곽승현** 
+ 사이트 내에서 포인트에 관한 파트를 담당
  + 사용자 화면에서는 포인트를 얻을 수 있는 이벤트(출석, 퀴즈)페이지 생성 및 이벤트 목록 구현
  + 관리자 페이지 내에서는 이벤트 생성, 수정 및 삭제 구현
  + 개별 멤버 포인트 및 이벤트 참여 멤버를 조회할 수 있는 기능 구현
</div>

<div align=left><h2>💻 화면 구성</h2>
  
__[이벤트페이지]__
![EventList](https://github.com/gom2gomin/dadok/assets/144098758/06b53a26-1a4e-43cf-a861-581141d8f977)

__[출석이벤트]__
![foAtt](https://github.com/gom2gomin/dadok/assets/144098758/073c75b0-bb2e-4cee-8c9e-e6abcc26aaa1)

__[퀴즈 이벤트]__
![foQuiz](https://github.com/gom2gomin/dadok/assets/144098758/396e006b-cf63-4e13-af1f-0a75b4b422f6)

__[관리자 이벤트 리스트]__
![boList](https://github.com/gom2gomin/dadok/assets/144098758/18319b17-a5e6-4ef5-bdb1-0fa65815f8d1)
</div>

<div align=left><h2>💡 구현 기능</h2>

#### Ajax를 활용

+ warehouse, item, price를 **outer join**하여 중복코드의 갯수를 합하여 각 품목의 재고와 가격을 리스트로 구하는 쿼리 작성
+ List를 controller에서 **mapper**에 담은 후 view단에 전송
+ 해당 월의 매입/매출 합계를 구하고 **전월 대비 증감률**을 구하는 기능 구현

#### Java Script & jQuery의 기능을 활용

+ **이벤트 핸들러** 기능을 적극 활용하여 각 컬럼의 불필요한 문자를 사용할 경우 ''로 replace하는 기능 구현
+ \<select\>태그 내의 옵션 값을 옆 \<input\>태그의 출력하는 함수 구현
+ 카카오 **주소 API** 기능 사용
+ 이메일 주소 및 비밀번호 조건 불충족 시 안내 메시지 출력하는 기능 구현
+ 등록 시, **유효성 검사**하여 이상 없을 경우에 등록이 가능하도록 기능 구현   

####  jstl 기능 활용

+ List타입으로 넘어온 변수를 이용하여 table 생성
+ 사원 부서와의 값이 동일 시, 해당 내용 출력
+ 년월일시분초 값을 가진 Date타입의 변수를 받아와 년월일 format으로 변형

</div>

<div align=left><h2>❗ 프로젝트 회고</h2>
  
### ✨ 아쉬운 점

1. 완성도
이벤트 페이지 제작을 하는데 명확한 형식이 없어 코딩 전 페이지 제작하는데 예상보다 많은 시간이 소모되어 짧은 제작 시간내 코딩시간 비율이 줄어든 것에 아쉬움이 있습니다.

2. 활용 기능
비록 첫 프로젝트이긴 하지만 한정적인 기능 밖에 활용하지 못하고 그 와중에도 에러가 많이 발생시킨 현제 코딩 실력을 돌아보는 시간이 되었습니다. 

### ✨ 느낀 점

활용한 기술들을 구현하기 위해 인터넷과 유튜브를 통해 사용하는 상황들과 작용 방법
등을 찾아보고 다른 개발자분들이 만들어 놓은 예시를 꾸준히 찾아보았습니다. 잘 만들
어 놓은 것 같다 가도, 어느 날 오류가 발생되어 있어, 콘솔을 뒤져보고, 메소드가 넘어가
는 마디 마디에 정보가 출력되게 하여 어느 부분에서 오류가 발생하는지 일일이 찾아봤
습니다. 그리고 정보를 못 찾거나 어려워 이해가 되지 않는 선에서만 GPT 를 사용하려 했
습니다. 이런 방식으로 작업을 하니 프로그램의 흐름과 오류 캐치 등의 코드 작성 외의
프로그래머로서의 부가적인 능력 또한 상승할 수 있었습니다. 이 프로젝트를 통해 프로
그래머는 완성될 수 없고 항상 성장하기 위해 노력하고 공부하는 직업임을 느낄 수 있는
중요한 계기가 또한 되었습니다
</div>

<div align=left><h2></h2></div>
