<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
  <script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=v91wlqmdfd&callback=initMap"></script>
    <script type="text/javascript">
        var map = null;

        function initMap() {
            map = new naver.maps.Map('map', {
                center: new naver.maps.LatLng(37.518176, 126.985165),
                zoom: 5
            });
	var marker = new naver.maps.Marker({
   	 position: new naver.maps.LatLng(37.518176, 126.985165),
   	 map: map
	    });

        }
    </script>	
  <title>HeeJanie mobile Wedding Invitation</title>
	
</head>
<body>
	<img class="img-fluid" src="./img/LHYM3929.jpg" style = "width:100%"> 
	<div class="container-fluid bg-light" style="margin:0">
		<br>
	<div class="container-md bg-white">
		
	  <p class="text-center"> - </p>
		<br>
   	  <pre class="text-center"> 
하나님이 주신 사명안에서
다른 곳을 바라 보며 달려가던 저희가
서로를 만나게 되었고
이제는 하나님께서 주신 가정을 이루며
같은 곳을 바라보며 나아가려 합니다.

축하해 달라는 마아아아알
마아아아알
	  </pre>
		
	  <p class="text-center"> - </p>
	  </div>
	  <div class="container bg-white">
		<div class="row">
				<div class="col-sm-6">
<p="text-center> 
신랑측<br>
부 가나다 <br>
모 가나다 <br>
<h2>박희재</h2>
</p>
				</div>
				<div class="col-sm-6">
<p class="text-center> 
신부측<br>
부 가나다 <br>
모 가나다 <br>
<h2>옥채연</h2>
</p>
				</div>
		 </div>
	</div>
		<br>
	</div>	
	
	<div class="container">
		<p class="text-center"> 사진이 들어간다아아</p>
	</div>
	
	<div class="container-fluid bg-secondary" style="padding:0; margin:0"><br>
		<div class="container bg-white">
			
		<div id="map" style="width:100%;height:200px;"></div>
			
		</div>
		<div class="container bg-light">
			 <dl>
			    <dt>온누리교회</dt>
			    	<dd>서울시 용산구 이촌로 347-11</dd>
			    <dt>오시는 길</dt>
				    <dd>3012</dd>
				    <dd>2016</dd>
				    <dd>6211</dd>
				    <dd>서빙고역</dd>
				    <dd>이촌역</dd>
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
