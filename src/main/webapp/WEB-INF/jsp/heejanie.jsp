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
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
  <script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=v91wlqmdfd&callback=initMap"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/clipboard.js/1.7.1/clipboard.min.js"></script>
  <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.css">
  <script src="https://unpkg.com/swiper/swiper-bundle.js"></script>
  <script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
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
        	var filter = "win16|win32|win64|mac|macintel";
        	 
            
        	 
        	if (filter.indexOf(navigator.platform.toLowerCase()) < 0) {
        	       	//MOBILE                  
        	 }else {
        	       	//PC            
        				window.location.href = "./pcerror";                                                           
        	}

		// Initialize Swiper 
		    var swiper = new Swiper('.swiper-container', {
		      slidesPerView: 4,
		      spaceBetween: 5,
		      centeredSlides: true,
		      loop : true,
		        watchSlidesVisibility : true
		    });
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
			    swiper.slideToLoop(imgNo-2);
			    
			  });

			  $("#accountBtn1").click(function(){
				  $("#accountModal1").modal('show');
        	    
        	  });
			  $("#accountBtn2").click(function(){
				  $("#accountModal2").modal('show');
        	    
        	  });

        	 var clipboard1 = new Clipboard('#copyBtn1');
             clipboard1.on('success', function(e) {
                 alert("복사되었습니다.");
                 window.getSelection().removeAllRanges();
             
             });
             var clipboard2 = new Clipboard('#copyBtn2');
             clipboard2.on('success', function(e) {
                 alert("복사되었습니다.");
                 window.getSelection().removeAllRanges();
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
.swiper-container {
    width: 100%;
    margin-top : 10px;
    margin-bottom : 10px;
}
</style>
  <title>HeeJanie mobile Wedding Invitation</title>
	
</head>
<body>
	<div class="text-center">
		<img id="mainImg"src="./main/LHYM3929_MAIN3.jpg"  class="img-fluid" style = "margin:0; overflow:hidden; width:100%" />
	</div>
	<div class="container-fluid bg-light" style="margin:0; padding:5px"></div>
	<div class="container-md bg-white">
		<br><br>
		<img class="mx-auto d-block" src="./main/leaf.png" style = "margin:0; width:15%;" /> 
		<br><br>
		<h5 class="text-center">Invitation</h5>
		<br>
	  	<p class="text-center"> - </p>
   	   	<h5 class="text-center">
   	   		<small class="text-muted"><br>
			각자 하나님의 뜻하심을 구하며<br>
			열심히 달려오던 두 사람이<br>
			하나님의 사랑으로 만나<br>
			아름다운 가정을 꾸리려합니다.<br>
			인생의 새로운 장을 시작하는<br>
			그 기쁜 자리에 오셔서<br>
			축복해 주시길 소망합니다.<br><br>
	  		</small>
	  	</h5>
		
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
			<h5 class="text-center"> 
			2020.11.07 토요일 오후 1시<br>
			서빙고 온누리교회 본당 </h5>
			<br><br>				
		</div>
		<div class="container-fluid bg-light" style="margin:0; padding:5px"></div>
		<div class="container-fluid bg-white">
			<br><br>
			<img class="mx-auto d-block" src="./main/leaf.png" style = "margin:0; width:15%;" /> 
			<br><br>
			<h5 class="text-center">Photo Gallery</h5><br><br>
		</div>
			<div id="imgCarousel" class="carousel slide bg-light" data-ride="carousel" style = "padding:10px; width:100%;">
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
				  	<a class="carousel-control-prev" href="#imgCarousel" data-slide="prev">
				    	<span class="carousel-control-prev-icon"></span>
				  	</a>
				  	<a class="carousel-control-next" href="#imgCarousel" data-slide="next">
				    	<span class="carousel-control-next-icon"></span>
				 	</a>
				</div>
			</div>
		<!-- Swiper -->
		  <div class="swiper-container">
		    <div class="swiper-wrapper">
			    <% 
				  int s = 0;
				  for(FileImgInfo info : fileList){ 
			    %>
				  <div  class="swiper-slide" style="margin:0; position:relative; width:28%; padding-bottom: 28%;  overflow:hidden">
					 <img src="./img/<%= info.getFileName() %>"   value="<%= s %>" class="indc"   style="<%= info.isWidePic()?  "height:100%" : "width:100%" %>;">
				  </div>
			    <% s++; } %>
		    </div>
		  </div>
	
		<div class="container-fluid bg-light" style="margin:0; padding:5px"></div>
		<div class="container-fluid bg-white">
			<br><br>
			<img class="mx-auto d-block" src="./main/leaf.png" style = "margin:0; width:15%;" /> 
			<br><br>
			<h5 class="text-center"> Directions </h5>
			<br><br>
		<div id="map" style="width:100%;height:200px;"></div>
			
		</div>
		<div class="container-fluid bg-light">
			<p><b>온누리교회</b><br>서울시 용산구 이촌로 347-11(서빙고동 241-96)<br>
			<a href="http://naver.me/IIxz6fLm"><img src="./main/naver.jpg" class="rounded " style="height:30px; margin-right:5px; margin-bottom:10px"></a>
			<a href="https://apis.openapi.sk.com/tmap/app/routes?appKey=l7xxad1d969b946240db81ac695cbde1d142&name=서빙고 온누리교회&lon=126.985165&lat=37.518176"><img src="./main/tmap.png" class="rounded " style="height:30px; margin-right:5px; margin-bottom:10px"></a>
			<a href="https://place.map.kakao.com/m/9717455"><img src="./main/kakao.png" class="rounded " style="height:30px; margin-right:5px; margin-bottom:10px"></a>
		</div>
		<div class="container-fluid bg-white">
			<br>
			 <dl>
			    <dt>지하철  <i class="fas fa-subway text-muted"></i></dt>
				    <dd>
				    	서빙고역 경의 중앙선<br>
				    	2번 출구로 이동 → 우측계단 <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;→ 아파트 단지를 가로질러 정문까지 이동
				    </dd>
				    <dd>
				    	이촌역 4호선<br>
				    	4번 출구로 나와 도로까지 이동 → 횡단보도<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;→ 시내버스 100,2016,3012,6211번 탑승<br>
					    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;→ 서빙고 신동아 아파트 하차
				    </dd>
				    <dd><br></dd>
				  <dt>버스  <i class="fas fa-bus text-muted"></i></dt>
				    <dd>
				    	시내버스 100,2016,3012,6211번 탑승 <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;→ 서빙고 신동아 아파트 하차
				    </dd>
				  	<dd><br></dd>
			    <dt>주차장  <i class="fas fa-car text-muted"></i></dt>
				 <dd>교회 주차장을 이용 하실 수 있습니다.<br>그러나 교회 내 주차 공간이 부족하니 가급적<br> 대중교통을 이용해주시면 감사하겠습니다.</dd>
			  </dl>  
		</div>
	
	<br>
	
	<div class="container bg-white text-center" style="margin:0; padding:5px">
				<div class="card">
				  <div class="card-body">
				    <h5 class="card-title">안내의 말씀</h5>
				    <p class="card-text font-weight-lighter" >코로나 19가 장기화 되면서 고민끝에<br>결혼식을 진행하게 되었습니다.<br>
				              참석하기 어려우시더라도<br> 저희 두 사람의 새로운 걸음을<br>축복하여주시고 기도해주세요</p>
				    <p>저희 두 사람의 결혼예배는<br>코로나 확산 방지와<br>사회적 거리두기 방침으로 인하여 <br>식사 제공이 아닌 답례품으로 대체됩니다.<br>감사합니다.
				    </p>
				  </div>
				</div>
		<br>
			<!-- Button trigger modal -->
			<button type="button" id="accountBtn1" class="btn btn-outline-secondary  btn-sm" data-toggle="modal" data-target="#exampleModal">
			  	신랑 계좌번호 보기
			</button><br><br>
			<!-- Button trigger modal -->
			<button type="button" id="accountBtn2" class="btn btn-outline-secondary  btn-sm" data-toggle="modal" data-target="#exampleModal">
			  	신부 계좌번호 보기
			</button>
	</div>
	
	<br>
	<img class="img-fluid" src="./main/SSSS.jpg" style = "width:100%" /> 
	
	<!-- Modal -->
	<div class="modal fade" id="accountModal1" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
	  <div class="modal-dialog modal-dialog-centered">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h6 class="modal-title" id="exampleModalLabel">신랑 계좌번호 보기</h6>
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	          <span aria-hidden="true">&times;</span>
	        </button>
	      </div>
	      <div class="modal-body">
	        	<div id ="acc1">하나은행 365-910318-78507 <br></div>
	        	예금주 : 박희재       <button type="button" id="copyBtn1" class="btn btn-primary btn-sm" data-clipboard-target="#acc1">클립보드 저장</button>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
	      </div>
	    </div>
	  </div>
	</div>
	
	<!-- Modal -->
	<div class="modal fade" id="accountModal2" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
	  <div class="modal-dialog modal-dialog-centered">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h6 class="modal-title" id="exampleModalLabel">신부 계좌번호 보기</h6>
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	          <span aria-hidden="true">&times;</span>
	        </button>
	      </div>
	      <div class="modal-body">
	        	<div id ="acc2">하나은행 850-910157-84207 <br></div>
	        	예금주 : 옥채연 <button type="button" id="copyBtn2"class="btn btn-primary btn-sm" data-clipboard-target="#acc2">클립보드 저장</button><br>
	      </div>
	      <div class="modal-footer">
	        
	        <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
	      </div>
	    </div>
	  </div>
	</div>
</body>
</html>
