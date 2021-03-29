<%@ page  contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>project</title>
<link rel="stylesheet" href="style.css">
<link href="https://fonts.googleapis.com/css?family=Bebas+Neue&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
	<header>
		<input type="checkbox" id="chk1">
		<div class="logo">
			<img src="./image/netpidia.png" style="float: left; margin-top: 10px; margin-left:70px; width: 200px; height: 60px;"/>
		</div>
		<ul>
			<li><a href="afterlogin.jsp">Home</a></li>
			<li><a href="#">Movies</a></li>
			<li><a href="#">Review</a></li>
			<li><a href="#">My favorite</a></li>
			<li><a href="logout.jsp">Logout</a></li>
			<li><a href="update.jsp">
				<i class="fa fa-user-circle-o" aria-hidden="true"></i>
			</li>			
			<label for="chk1" class="menu-close">
				<i class="fa fa-times" aria-hidden="true"></i>
			</label>
		</ul>
		<div class="search">
			<input type="text" name="search" id="srch" style="font-family:돋움"
			required placeholder="Enter your search">
			<button type ="submit">Search</button>
		</div>
		<label for="chk1" class="menu-open">
			<i class = "fa fa-bars" aria-hidden ="true"></i>
		</label>
	</header>
	<section>
		<div class="container">
			<div class="slides">
				<img src="./image/img1.jpg" >
				<div class="content">
					<h2 style="font-weight: bold; font-family:돋움">위쳐</h2>
					<p style="font-weight: bold; font-family:돋움">리비아의 게롤트는 괴물을 사냥하며 살아가는 고독한 사내. 
					때로는 인간이 괴물보다 사악한 이 세상에서, 그는 자신이 있어야 할 자리를 찾고자 분투한다. 			
					</p>
					<a href="#" onclick="window.open('https://youtu.be/bjSnsUFPxLI','예고편','resizable=no, width=1000, height=800, left='+ popupX + ', top='+ popupY);return false"> <!-- 유튜브주소 -->					
						<i class="fa fa-play" aria-hidden="true"></i>
						Watch trailer					
					</a>
				</div>
			</div>
			<div class="slides">
				<img src="./image/img2.jpg" alt="">
				<div class="content">
					<h2 style="font-weight: bold; font-family:돋움">종이의 집</h2>
					<p style="font-weight: bold; font-family:돋움">신원미상의 '교수'라 불리는 남자가 모은 8명의 범죄자들은 
					톨레도의 한 사냥터에서 마드리드 조폐국을 털기 위해 몇 달간 숙식을 하면서 교수의 작전에 동참한다. 
					</p>
					<a href="#" onclick="window.open('https://youtu.be/mFGXuFZ-a9k','예고편','resizable=no, width=1000, height=800, left='+ popupX + ', top='+ popupY);return false">
						<i class="fa fa-play" aria-hidden="true"></i>
						Watch trailer
					</a>
				</div>
			</div>
			<div class="slides">
				<img src="./image/img3.jpg" alt="">
				<div class="content">
					<h2 style="font-weight: bold; font-family:돋움">제목</h2>
					<p style="font-weight: bold; font-family:돋움">내용내용내용
					</p>
					<a href="#">
						<i class="fa fa-play" aria-hidden="true"></i>
						Watch trailer
					</a>
				</div>
			</div>
			<div class="slides">
				<img src="./image/img4.jpg" alt="">
				<div class="content">
					<h2 style="font-weight: bold; font-family:돋움">제목</h2>
					<p style="font-weight: bold; font-family:돋움">내용
					</p>
					<a href="#">
						<i class="fa fa-play" aria-hidden="true"></i>
						Watch trailer
					</a>
				</div>
			</div>
			<div class="slides">
				<img src="./image/img5.jpg" alt="">
				<div class="content">
					<h2 style="font-weight: bold; font-family:돋움">제목</h2>
					<p style="font-weight: bold; font-family:돋움">내용
					</p>
					<a href="#">
						<i class="fa fa-play" aria-hidden="true"></i>
						Watch trailer
					</a>
				</div>
			</div>
			<div class="slides">
				<img src="./image/img6.jpg" alt="">
				<div class="content">
					<h2 style="font-weight: bold; font-family:돋움">제목</h2>
					<p style="font-weight: bold; font-family:돋움">내용
					</p>
					<a href="#">
						<i class="fa fa-play" aria-hidden="true"></i>
						Watch trailer
					</a>
				</div>
			</div>
			<div class="slides">
				<img src="./image/img7.jpg" alt="">
				<div class="content">
					<h2 style="font-weight: bold; font-family:돋움">제목</h2>
					<p style="font-weight: bold; font-family:돋움">내용
					</p>
					<a href="#">
						<i class="fa fa-play" aria-hidden="true"></i>
						Watch trailer
					</a>
				</div>
			</div>
			<div class="slides">
				<img src="./image/img8.jpg" alt="">
				<div class="content">
					<h2 style="font-weight: bold; font-family:돋움">제목</h2>
					<p style="font-weight: bold; font-family:돋움">내용
					</p>
					<a href="#">
						<i class="fa fa-play" aria-hidden="true"></i>
						Watch trailer
					</a>
				</div>
			</div>
			<div class="slides">
				<img src="./image/img9.jpg" alt="">
				<div class="content">
					<h2 style="font-weight: bold; font-family:돋움">제목</h2>
					<p style="font-weight: bold; font-family:돋움">내용
					</p>
					<a href="#">
						<i class="fa fa-play" aria-hidden="true"></i>
						Watch trailer
					</a>
				</div>
			</div>
			<div class="slides">
				<img src="./image/img10.jpg" alt="">
				<div class="content">
					<h2 style="font-weight: bold; font-family:돋움">제목</h2>
					<p style="font-weight: bold; font-family:돋움">내용
					</p>
					<a href="#">
						<i class="fa fa-play" aria-hidden="true"></i>
						Watch trailer
					</a>
				</div>
			</div>
		</div>
		<div class="row">
			<h2>recommend</h2>
			<div class="nav">
				<div class="nav-bar">
					<div class="column active">
						<img src="./image/img1.jpg" alt="">
					</div>
					<div class="column">
						<img src="./image/img2.jpg" alt="">
					</div>
					<div class="column">
						<img src="./image/img3.jpg" alt="">
					</div>
					<div class="column">
						<img src="./image/img4.jpg" alt="">
					</div>
					<div class="column">
						<img src="./image/img5.jpg" alt="">
					</div>
					<div class="column">
						<img src="./image/img6.jpg" alt="">
					</div>
					<div class="column">
						<img src="./image/img7.jpg" alt="">
					</div>
					<div class="column">
						<img src="./image/img8.jpg" alt="">
					</div>
					<div class="column">
						<img src="./image/img9.jpg" alt="">
					</div>
					<div class="column">
						<img src="./image/img10.jpg" alt="">
					</div>
				</div>
			</div>
			<div class="prev"><</div>
			<div class="next">></div>
		</div>
	</section>
	<script>
		const slides = document.querySelectorAll('.slides');
		const dots = document.querySelectorAll('.column');
		let slideIndex = 0;
		showSlide();
		function showSlide(n){
			if(slideIndex > slides.length -1){
				slideIndex = 0;
			}
			if(slideIndex < 0){
				slideIndex = slides.length -1;
			}
			for(let i=0; i<slides.length; i++){
				slides[i].style.display ="none";
			}
			for(let i=0; i<dots.length; i++){
				dots[i].className = dots[i].className.replace(" active", "");
			}
			slides[slideIndex].style.display = "block";
			dots[slideIndex].className += " active";
		}
		dots.forEach((item, index) =>{
			item.addEventListener('click', ()=>{
				showSlide(slideIndex = index);
			})
		});
		
		const nav = document.querySelector('.nav');
		const prev = document.querySelector('.prev');
		const next = document.querySelector('.next');
		next.addEventListener('click', ()=>{
			nav.scrollLeft += dots[0].offsetWidth;
			showSlide(slideIndex += 1);
			if(slideIndex === 0){
				nav.scrollLeft = 0;
			}
		})
		prev.addEventListener('click', ()=>{
			nav.scrollLeft -= dots[0].offsetWidth;
			showSlide(slideIndex -= 1);
			if(slideIndex === slides.length -1){
				nav.scrollLeft = nav.scrollWidth;
			}
		})
		
		var popupX = (document.body.offsetWidth / 2) - (1000 / 2);
		//&nbsp;만들 팝업창 좌우 크기의 1/2 만큼 보정값으로 빼주었음

		var popupY= (window.screen.height / 2) - (800 / 2);
		//&nbsp;만들 팝업창 상하 크기의 1/2 만큼 보정값으로 빼주었음
	</script>
</body>
</html>