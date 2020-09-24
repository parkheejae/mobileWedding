<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
  <script type="text/javascript">
	  function sendLink() {

		Kakao.init('7f58511ef2633218d6edaead5e362301');
		  
	    Kakao.Link.sendCustom({
	      templateId: 475723,
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