<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <script type="text/javascript">
	  function sendLink() {
	    Kakao.Link.sendCustom({
	      templateId: 3135,
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
<a id="kakao-link-btn" href="javascript:sendLink()">
  <img src="https://developers.kakao.com/assets/img/about/logos/kakaolink/kakaolink_btn_medium.png" />
</a>
</body>
</html>