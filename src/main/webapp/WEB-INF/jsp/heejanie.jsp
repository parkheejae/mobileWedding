<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="org.springframework.ui.Model"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<% 
	List<String> fileList= (List<String>)request.getAttribute("fileList"); 
	if(fileList == null){
		fileList = new ArrayList<String>();
	}


%>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&display=swap" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
  <script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=v91wlqmdfd&callback=initMap"></script>
    <script type="text/javascript">
        var map = null;

   /*      function initMap() {
            map = new naver.maps.Map('map', {
                center: new naver.maps.LatLng(37.518176, 126.985165),
                zoom: 15
            });
			var marker = new naver.maps.Marker({
		   	 position: new naver.maps.LatLng(37.518176, 126.985165),
		   	 map: map
			    });
	    } */

        $(document).ready(function(){

        	  // Activate Carousel
        	  $("#imgCarousel").carousel();
		
        	  // Enable Carousel Indicators
        	  $(".indc").click(function(){
            	  var imgNo =parseInt( $(this).attr("value") );
        	    $("#imgCarousel").carousel(imgNo);

        	    
        	  });
        	 
        	    
        	  // Enable Carousel Controls
        	  $(".carousel-control-prev").click(function(){
        	    $("#imgCarousel").carousel("prev");
        	  });
        	  $(".carousel-control-next").click(function(){
        	    $("#imgCarousel").carousel("next");
        	  });
		  $('#imgCarousel').on('slid.bs.carousel', function () {
		     var imgNo =parseInt( $(".carousel-item.active").attr("value") ) + 2; //indc 이미지는 이전 이미지 2개가 노출 됨으로 +2

		     $(".indcTable").addClass("d-none");
		     $("#indcImg"+(imgNo-2)).removeClass("d-none");
		     $("#indcImg"+(imgNo-1)).removeClass("d-none");
		     $("#indcImg"+(imgNo)).removeClass("d-none");
		     $("#indcImg"+(imgNo+1)).removeClass("d-none");
		     $("#indcImg"+(imgNo+2)).removeClass("d-none");
		    
		  });
        });
    </script>	
	<style>
body {
  	font-family: 'Gamja Flower', cursive;
}
#txtP {
	font-family: 'Gamja Flower', cursive;
}
.carImg, .indc {
	position:absolute;
	left:50%;
	top:50%; 
	-ms-transform: translate(-50%, -50%);
	-webkit-transform: translate(-50%, -50%);
	-moz-transform: translate(-50%, -50%);
	transform: translate(-50%, -50%);
}

</style>
  <title>HeeJanie mobile Wedding Invitation</title>
	
</head>
<body>
	<img class="img-fluid" src="./main/LHYM3929.jpg" style = "width:100%" /> 
	
	<div class="container-fluid bg-light" style="margin:0">
		<br>
	</div>
	<div class="container-md bg-white">
		
	  <p class="text-center"> - </p>
		<br>
   	   <h6 class="text-center">
각자 하나님의 뜻하심을 구하며<br>
열심히 달려오던 두 사람이<br>
하나님의 사랑으로 만나<br>
아름다운 가정을 꾸리려합니다.<br>
인생의 새로운 장을 시작하는<br>
그 기쁜 자리에 오셔서<br>
축복해 주시길 소망합니다.<br>
	  </h6>
		
	  <p class="text-center"> - </p>
	  </div>
	  <div class="container-fluid">
		 <table class="table table-borderless text-center table-sm">
		  <tbody>
		      <tr>
			<td>신랑측</td>
			<td>신부측</td>
		      </tr>
		      <tr>
			<td>박익수</td>
			<td>옥동민</td>
		      </tr>
		      <tr>
			<td>주미정</td>
			<td>황선원</td>
		      </tr>
		       <tr>
			<td><h2>박희재</h2></td>
			<td><h2>옥채연</h2></td>
		      </tr>
		   </tbody>
		  </table>
		
		
	</div>
	<div class="container-fluid bg-light">
		<div id="imgCarousel" class="carousel slide" data-ride="carousel">
		  <!-- The slideshow -->
		  <div class="carousel-inner" >
		  	<% 
		  	int i = 0;
		  	for(String filename : fileList){ %>
		    <div class="carousel-item <%= i==0? "active":"" %>" value="<%= i %>">
		      <div style="position:relative; width:100%; padding-bottom: 100%; ">
		      	<img src="./img/<%= filename %>" class="carImg "  style="height:100%;">
		      </div>
		    </div>
		    <% i++; } %>
		    
		  <!-- Left and right controls -->
		  <a class="carousel-control-prev" href="#imgCarousel" data-slide="prev">
		    <span class="carousel-control-prev-icon"></span>
		  </a>
		  <a class="carousel-control-next" href="#imgCarousel" data-slide="next">
		    <span class="carousel-control-next-icon"></span>
		  </a>
		</div>
	</div>
	<div class="container-fluid bg-light" style="padding:0; margin:0">
	<table class="table table-borderless table-sm">
		  <tbody>
		      <tr>
	      		<% 
	      			int s = 0;
	      			int filesize = fileList.size();
	      		%>
	      		<td class="indcTable" id="indcImg<%= s %>">
					<div style="margin:0; position:relative; width:80%; padding-bottom: 80%;  overflow:hidden">
			      		<img src="./img/<%= fileList.get(filesize-2) %>"   value="<%= filesize-2 %>" class="indc"   style="width:100%;">
			      	</div>
				</td>
				<% 
					s++;
	      		%>
				<td class="indcTable" id="indcImg<%= s %>">
					<div style="margin:0; position:relative; width:80%; padding-bottom: 80%;  overflow:hidden">
			      		<img src="./img/<%= fileList.get(filesize-1) %>"   value="<%= filesize-1 %>" class="indc"   style="width:100%;">
			      	</div>
				</td>
			  	<% 
			  		s++;
			  		for(String filename : fileList){ 
			  	%>
			    <td class="indcTable <%= s>4? "d-none" : "" %>" id="indcImg<%= s %>">
					<div style="margin:0; position:relative; width:80%; padding-bottom: 80%;  overflow:hidden">
			      		<img src="./img/<%= filename %>"   value="<%= s-2 %>" class="indc"   style="width:100%;">
			      	</div>
				</td>
			    <% s++; } %>
				<td class="indcTable d-none" id="indcImg<%= s %>">
					<div style="margin:0; position:relative; width:80%; padding-bottom: 80%;  overflow:hidden">
			      		<img src="./img/<%= fileList.get(0) %>"   value="0" class="indc"   style="width:100%;">
			      	</div>
				</td>
				 <% s++; %>
				<td class="indcTable d-none" id="indcImg<%= s %>">
					<div style="margin:0; position:relative; width:80%; padding-bottom: 80%;  overflow:hidden">
			      		<img src="./img/<%= fileList.get(1) %>"   value="1" class="indc"   style="width:100%;">
			      	</div>
				</td>
		      </tr>
		  </tbody>
		</table>
	</div>
	<div class="container-fluid bg-light" style="padding:0; margin:0">
		<div class="container-fluid bg-white">
			<br>
			<h2> 오시는 길 </h2>
		<div id="map" style="width:100%;height:200px;"></div>
			
		</div>
		<div class="container-fluid bg-white">
			 <dl>
			    <dt>온누리교회</dt>
			    	<dd>서울시 용산구 이촌로 347-11</dd>
				 <br>
			    <dt>대중 교통</dt>
				    <dd>3012</dd>
				    <dd>2016</dd>
				    <dd>6211</dd>
				    <dd>서빙고역</dd>
				    <dd>이촌역</dd>
				  <br>
			    <dt>자가용 안내</dt>
				 <dd>교회 내 주차 공간이 부족하여 가급적 대중교통을 이용해주시면 감사하겠습니다.</dd>
			  </dl>  
		</div>
	</div>
	<div class="container bg-light">
		<p> 방명록 넣을까?</p>
	</div>
</body>
</html>
