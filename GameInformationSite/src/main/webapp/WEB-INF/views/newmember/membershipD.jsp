<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
     <% request.setCharacterEncoding("UTF-8");  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<style>
#Menu {
	margin-left:200px;
	height:30px;
	width:850px;
}
#Menu ul {
	list-style-type: none;
	margin: 0px;
	padding: 0px;
}

#Menu ul li {
color: white;
background-color : #2d2d2d;
float: left;
line-height:30px;
vertical-align:middle;
text-align:center;
position:relative;
}
.menuLink, .submenuLink{
text-decoration:none;
display:block;
width:150px;
font-size: 12px;
font-weight: bold;
font-family:"맑은 고딕";
}
.menuLink{
	color:white;
}

#kMenu:hover .menuLink{
	color:red;
	background-color:#4d4d4d;
}
.kMenu:hover .submenu { height: 93px;}

.submenuLink { 
	color:#2d2d2d;
	background-color:white;
	border:solid 1px black;
	margin-top: -1px;
}
.submenu{
	position:absolute;
	height: 0px;
	overflow: hidden;
	transition: height .2s;
	-webkit-transition: height .2s;
	-moz-transition: height .2s;
	-o-transition: height .2s;
}
.submenuLink:hover {
	color: red;
	background-color:#dddddd;
}


</style>
<body>
<div align="center">
<img src="http://blogfiles.naver.net/MjAxNzA1MjNfMTcz/MDAxNDk1NTMyMDYwNzI3.iAeJGiga8CRfiJIWfWbvvz-l9O6R9QOWr_O5xvCy7pIg.TkIlVpEU0VD8twYm-ZqFIletMS9qwyheOS1C2GTxlHMg.JPEG.kch797907/banne42.jpg"></img>
<nav id="Menu" > 
		<ul> 
			<li class="kMenu">
				<a class="menuLink" href="#">뉴스</a>
				<ul class="submenu">
				<li><a href="#" class="submenuLink">신작</a></li>
				<li><a href="#" class="submenuLink">핫이슈</a></li>
				</ul>
			</li>
							<li>
							ㅣ
							</li>
			<li class="kMenu">
				<a class="menuLink" href="#">PC</a>
				<ul class="submenu">
				<li><a href="#" class="submenuLink">패키지게임</a></li>
				<li><a href="#" class="submenuLink">온라인게임</a></li>
				</ul>
			</li>
							<li>
							ㅣ
							</li>
			<li class="kMenu">
				<a class="menuLink" href="#">콘솔</a>
				<ul class="submenu">
				<li><a href="#" class="submenuLink">패키지게임</a></li>
				</ul>
			</li>
							<li>
							ㅣ
							</li> 
			<li class="kMenu">
				<a class="menuLink" href="#">커뮤니티</a>
				<ul class="submenu">
					<li><a href="#" class="submenuLink">자유게시판</a></li>
					<li><a href="#" class="submenuLink">공략게시판</a></li>
				</ul>
			</li>
		</ul> 
	</nav>
</div>
<div style="margin-top:100px">
<div align="center">
<form method="post">
<table border = "1" width = "250" height = "200">
<tr bgcolor = "black">
<td align = "center"> <font size = 4 color = "white"><input type = "text" name = "id" size = "10" maxlength = "12" 
            value="<%=session.getAttribute("id") %>" ></font></td>
</tr>
<tr bgcolor = "black">
<td align = "center"> <font size = 4 color = "white">탈퇴를 축하드립니다</font></td>
</tr>
<tr bgcolor = "black">
<td align = "center"> <font size = 4 color = "white">그래 가라 탈퇴 잘했다.</font></td>
</tr>
<tr>
<td align = "center">
<input type = "submit" value = "확인">
</td>
</tr>
</table>
</form>
</div>
</div>

</body> 
</html>