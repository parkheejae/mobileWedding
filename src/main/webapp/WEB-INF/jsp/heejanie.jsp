<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
        	    var maxImgNo=4;
		
        	  // Enable Carousel Indicators
        	  $(".indc").click(function(){
            	  var imgNo =parseInt( $(this).attr("value") );
        	    $("#imgCarousel").carousel(imgNo);

        	    if(imgNo == maxImgNo){
        	    	$("#indcImg3").attr("value","0");
            	    $("#indcImg4").attr("value","1");
        	    }else if(imgNo == maxImgNo-1){
        	    	$("#indcImg3").attr("value",imgNo+1);
            	    $("#indcImg4").attr("value","0");
            	}else{
            		$("#indcImg3").attr("value",imgNo+1);
            	    $("#indcImg4").attr("value",imgNo+2);
                }
        	    
        	    $("#indcImg2").attr("value",imgNo);
        	    
        	    if(imgNo == "1"){
        	    	 $("#indcImg1").attr("value",imgNo-1);
        	    	 $("#indcImg0").attr("value",imgNo+4);
            	} else if (imgNo == "0"){
            		 $("#indcImg1").attr("value",imgNo+4);
        	    	 $("#indcImg0").attr("value",imgNo+4-1);
                } else {
                	 $("#indcImg1").attr("value",imgNo-1);
       	    	 	 $("#indcImg0").attr("value",imgNo-2);
                }
        	  });
        	 
        	    
        	  // Enable Carousel Controls
        	  $(".carousel-control-prev").click(function(){
        	    $("#imgCarousel").carousel("prev");
        	  });
        	  $(".carousel-control-next").click(function(){
        	    $("#imgCarousel").carousel("next");
        	  });
		  $('#imgCarousel').on('slide.bs.carousel', function () {
		  		alert(this.to());
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
	<img class="img-fluid" src="./img/LHYM3929.jpg" style = "width:100%" /> 
	
	<div class="container-fluid bg-light" style="margin:0">
		<br>
	</div>
	<div class="container-md bg-white">
		
	  <p class="text-center"> - </p>
		<br>
   	   <h6 class="text-center">
하나님이 주신 사명안에서<br>
다른 곳을 바라 보며 달려가던 저희가<br>
서로를 만나게 되었고<br>
이제는 하나님께서 주신 가정을 이루며<br>
같은 곳을 바라보며 나아가려 합니다.<br>
<br>
축하해 달라는 마아아아알<br>
마아아아알 <br>
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
			<td>Mary</td>
			<td>Moe</td>
		      </tr>
		      <tr>
			<td>July</td>
			<td>Dooley</td>
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
		    <div class="carousel-item active">
		      <div style="position:relative; width:100%; padding-bottom: 100%; ">
		      	<img src="./img/LHYM1486.jpg" class="carImg "  style="height:100%;">
		      </div>
		    </div>
		    <div class="carousel-item">
		      <div style="position:relative; width:100%; padding-bottom: 100%;">
		      	<img src="./img/LHYM2219.jpg" class="carImg"  style="height:100%;">
		      </div>
		    </div>
		    <div class="carousel-item">
		      <div style="position:relative; width:100%; padding-bottom: 100%; ">
		      	<img src="./img/LHYM2753.jpg" class="carImg "  style="height:100%;">
		      </div>
		    </div>
		    <div class="carousel-item">
		      <div style="position:relative; width:100%; padding-bottom: 100%; ">
		      	<img src="./img/LHYM3117.jpg" class="carImg " style="height:100%;">
		      </div>
		    </div>
		    <div class="carousel-item">
		      <div style="position:relative; width:100%; padding-bottom: 100%;">
		      	<img src="./img/LHYM0544.JPG" class="carImg "  style="height:100%;">
		      </div>
		    </div>
		  </div>
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
				<td>
					<div style="margin:0; position:relative; width:100%; padding-bottom: 100%;  overflow:hidden">
			      		<img src="./img/LHYM1486.jpg" id="indcImg0"  value="0" class="indc "   style="width:100%;">
			      	</div>
				</td>
				<td>
					<div style="margin:0; position:relative; width:100%; padding-bottom: 100%;  overflow:hidden">
			      		<img src="./img/LHYM2219.jpg" id="indcImg1" value="1" class="indc " style="width:100%; ">
			      	</div>
				</td>
				<td>
					<div style="margin:0; position:relative; width:100%; padding-bottom: 100%;  overflow:hidden">
			      		<img src="./img/LHYM2753.jpg" id="indcImg2" value="2" class="indc " style="width:100%; ">
			      	</div>
				</td>
		    	<td>
					<div style="margin:0; position:relative; width:100%; padding-bottom: 100%;  overflow:hidden">
			      		<img src="./img/LHYM3117.jpg" id="indcImg3" value="3" class="indc " style="width:100%; ">
			      	</div>
				</td>
				<td>
					<div style="margin:0; position:relative; width:100%; padding-bottom: 100%;  overflow:hidden">
			      		<img src="./img/LHYM0544.JPG" id="indcImg4"  value="4" class="indc " style="width:100%; ">
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
