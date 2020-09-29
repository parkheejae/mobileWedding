<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
  
  <script type="text/javascript">
	  function sendLink() {
		if(!Kakao.isInitialized()){
			Kakao.init('7f58511ef2633218d6edaead5e362301');
		}
		  
	    Kakao.Link.sendCustom({
	      templateId: 37409,
	      templateArgs: {
	          title:
	            '판교 맛집에 들르다. 다양하고 풍부한 퓨전 한정식. 깔끔한 내부 인테리어 라이언',
	          description:
	            '부담없는 가격에 푸짐하게 즐기는 점심메뉴 런치한정식, 불고기정식, 돼지 김치찌개 등',
	        },
	    })
	  }
 </script>
 
</head>
<body>
<div class="alert alert-primary " role="alert">
	 <h1 class="display-1 text-center">희재 채연 청첩장 모바일 전송</h1>
</div>
<div class="container text-center">
	<a id="kakao-link-btn" href="javascript:sendLink()">
	  <img src="https://developers.kakao.com/assets/img/about/logos/kakaolink/kakaolink_btn_medium.png" width="80%"/>
	</a>
</div>
</body>
</html>
