<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>project</title>
<link rel="stylesheet" href="style.css">
<link href="https://fonts.googleapis.com/css?family=Bebas+Neue&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<%
	String id = (String)session.getAttribute("idKey");
	
	String log="";
	if(id == null) log ="<a href=login3.jsp>LOGIN</a>";
	else log = "<a href=logout.jsp>LOGOUT</a>";

	String reg="";
	if(id == null) reg ="<a href=join.jsp>SIGNUP</a>";
	//else reg = "<a href=update.jsp>UPDATE</a>";
	else reg = "<i class='fa fa-user-circle-o' aria-hidden='true'>";
%>
</head>
	<header>
		<input type="checkbox" id="chk1">
		<div class="logo">
			<img src="./image/netpidia.png" style="float: left; margin-top: 10px; margin-left:70px; width: 200px; height: 60px;"/>
		</div>
		<ul>
			<li><a href="index.jsp">Home</a></li>
			<li><a href="#">Movies</a></li>
			<li><a href="review.jsp">Review</a></li>
			<li><a href="#">My favorite</a></li>
			<li><%=log%><li>
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