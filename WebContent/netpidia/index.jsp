<%@page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>project</title>
<link rel="stylesheet" href="style.css">
<link href="https://fonts.googleapis.com/css?family=Bebas+Neue&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
	<%@ include file="tlogin.jsp" %>
	<%if(id != null){%>
	<%@ include file ="tbody.jsp" %>
	<%}else{%>
	<%@ include file ="tbody.jsp" %>
	<%}%>
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