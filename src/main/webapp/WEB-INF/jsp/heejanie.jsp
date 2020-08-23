<%@page import="com.heejanie.weding.model.FileImgInfo"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="org.springframework.ui.Model"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<% 
	List<FileImgInfo> fileList= (List<FileImgInfo>)request.getAttribute("fileList"); 
	if(fileList == null){
		fileList = new ArrayList<FileImgInfo>();
	}


%>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css2?family=Nanum+Myeongjo&display=swap" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
  <script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=v91wlqmdfd&callback=initMap"></script>
    <script type="text/javascript">
        var map = null;

        function initMap() {
            map = new naver.maps.Map('map', {
                center: new naver.maps.LatLng(37.518176, 126.985165),
                zoom: 15
            });
			var marker = new naver.maps.Marker({
		   	 position: new naver.maps.LatLng(37.518176, 126.985165),
		   	 map: map
			    });
	    }

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
  	font-family: 'Nanum Myeongjo', cursive;
}
#txtP {
	font-family: 'Nanum Myeongjo', cursive;
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
	<img class="img-fluid" src="./main/LHYM3929_MAIN.jpg" style = "width:100%" /> 
	
	<div class="container-fluid bg-light" style="margin:0">
		<br>
	</div>
	<div class="container-md bg-white">
		<br>
	  <p class="text-center"> - </p>
   	   <h5 class="text-center"><small class="text-muted"><br>
각자 하나님의 뜻하심을 구하며<br>
열심히 달려오던 두 사람이<br>
하나님의 사랑으로 만나<br>
아름다운 가정을 꾸리려합니다.<br>
인생의 새로운 장을 시작하는<br>
그 기쁜 자리에 오셔서<br>
축복해 주시길 소망합니다.<br><br>
	  </small></h5>
		
	  <p class="text-center"> - </p>
	  </div>
	  <br>
	  <div class="container-fluid">
		 <table class="table table-borderless text-center table-sm">
		  <tbody>
		      <tr>
			<td><h5>박익수 , 주미정<small class="text-muted">의 장남 </small>희재</h5></td>
		      </tr>
		      <tr>
			<td><h5>옥동민 , 황선원<small class="text-muted">의 장녀 </small>채연</h5></td>
			
		      </tr>
		      
		   </tbody>
		  </table>
		<br>
		<h5 class="text-center"> 2020.11.07 토요일 오후 1시<br>
		서빙고 온누리교회 본당 </h5><br>			
	</div>
	<div class="container-fluid bg-light"><br>
	</div>
	<div class="container-fluid bg-white">
		<div id="imgCarousel" class="carousel slide" data-ride="carousel">
		  <!-- The slideshow -->
		  <div class="carousel-inner" >
		  	<% 
		  	int i = 0;
		  	for(FileImgInfo info : fileList){ %>
		    <div class="carousel-item <%= i==0? "active":"" %>" value="<%= i %>">
		      <div style="position:relative; width:100%; padding-bottom: 100%; ">
		      	<img src="./img/<%= info.getFileName() %>" class="carImg rounded"  style="<%= info.isWidePic()?  "width:100%" : "height:100%" %>;">
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
					<div style="margin:0; position:relative; width:98%; padding-bottom: 98%;  overflow:hidden">
			      		<img src="./img/<%= fileList.get(filesize-2).getFileName() %>"   value="<%= filesize-2 %>" class="indc img-thumbnail"   style="<%= fileList.get(filesize-2).isWidePic()?  "height:100%" : "width:100%" %>;">
			      	</div>
				</td>
				<% 
					s++;
	      		%>
				<td class="indcTable" id="indcImg<%= s %>">
					<div style="margin:0; position:relative; width:98%; padding-bottom: 98%;  overflow:hidden">
			      		<img src="./img/<%= fileList.get(filesize-1).getFileName() %>"   value="<%= filesize-1 %>" class="indc img-thumbnail"   style="<%= fileList.get(filesize-1).isWidePic()?  "height:100%" : "width:100%" %>;">
			      	</div>
				</td>
			  	<% 
			  		s++;
			  		for(FileImgInfo info : fileList){ 
			  	%>
			    <td class="indcTable <%= s>4? "d-none" : "" %>" id="indcImg<%= s %>">
					<div style="margin:0; position:relative; width:98%; padding-bottom: 98%;  overflow:hidden">
			      		<img src="./img/<%= info.getFileName() %>"   value="<%= s-2 %>" class="indc img-thumbnail"   style="<%= info.isWidePic()?  "height:100%" : "width:100%" %>;">
			      	</div>
				</td>
			    <% s++; } %>
				<td class="indcTable d-none" id="indcImg<%= s %>">
					<div style="margin:0; position:relative; width:98%; padding-bottom: 98%;  overflow:hidden">
			      		<img src="./img/<%= fileList.get(0).getFileName() %>"   value="0" class="indc img-thumbnail"   style="<%= fileList.get(0).isWidePic()?  "height:100%" : "width:100%" %>;">
			      	</div>
				</td>
				 <% s++; %>
				<td class="indcTable d-none" id="indcImg<%= s %>">
					<div style="margin:0; position:relative; width:98%; padding-bottom: 98%;  overflow:hidden">
			      		<img src="./img/<%= fileList.get(1).getFileName() %>"   value="1" class="indc img-thumbnail"   style="<%= fileList.get(1).isWidePic()?  "height:100%" : "width:100%" %>;">
			      	</div>
				</td>
		      </tr>
		  </tbody>
		</table>
	</div>
	<div class="container-fluid bg-light" style="padding:0; margin:0">
	<br>
	</div>
		<div class="container-fluid bg-white">
			<br>
			<h5> 오시는 길 </h5>
			<br><br>
		<div id="map" style="width:100%;height:200px;"></div>
			
		</div>
		<div class="container-fluid bg-white">
			 <dl>
			    <dt>온누리교회</dt>
			    	<dd>서울시 용산구 이촌로 347-11(서빙고동 241-96)</dd>
				 <br>
			    <dt>지하철</dt>
				    <dd>
				    	서빙고역 경의 중앙선<br>
				    	2번 출구 → 우측계단 → 아파트 단지를 가로질러 정문까지 이동
				    </dd>
				    <dd>
				    	이촌역 4호선<br>
				    	4번 출구 → 도로까지 이동 → 횡단보도  
				    	→ 시내버스(100,2016,3012,6211)탑승
				    	→ 서빙고 신동아 아파트 하차
				    </dd>
				    <br>
				  <dt>버스</dt>
				    <dd>
				    	100,2016,3012,6211번 → 서빙고 신동아 아파트 하차
				    </dd>
				  <br>
			    <dt>주차장</dt>
				 <dd>교회 주차장을 이용 하실 수 있습니다.그러나 교회 내 주차 공간이 부족하여 가급적 대중교통을 이용해주시면 감사하겠습니다.</dd>
			  </dl>  
		</div>
	
	<br><br>
	<div class="container-fluid bg-light" style="padding:0; margin:0">
	<br>
	</div>
	<img class="img-fluid" src="./main/SSSS.jpg" style = "width:100%" /> 
</body>
</html>
