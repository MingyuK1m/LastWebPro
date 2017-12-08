<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <% request.setCharacterEncoding("UTF-8");  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입</title>
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


</style> <!--========================(구분선)스타일======================================================================== -->
<body>
<div align="center">
<a href="mains"><img src="http://blogfiles.naver.net/MjAxNzA1MjNfMTcz/MDAxNDk1NTMyMDYwNzI3.iAeJGiga8CRfiJIWfWbvvz-l9O6R9QOWr_O5xvCy7pIg.TkIlVpEU0VD8twYm-ZqFIletMS9qwyheOS1C2GTxlHMg.JPEG.kch797907/banne42.jpg"></img></a>
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

<body>
<form method="post">
<div style="margin-top:80px" style="marign-right:500px">
<table width = "800" border = "1" cellspacing = "0" cellpadding = "3" align = "center">
<tr>
      <td colspan = "2" height = "39" align = "center" bgcolor = "black">
      <font size = "+1" color = "white"><b>회원가입</b></font></td>
</tr>
<tr>
      <td width = "200" bgcolor = "black">
      <font size = "3" color =  "white"><b>아이디</b></font></td>
      <td width = "400" bgcolor = "black"></td>
</tr>
<tr>
      <td width = "200">사용자 ID</td>
      <td width = "400">
            <input type = "text" name = "id" size = "10" maxlength = "12">
            <!--  <input type = "button" name = "confirm_id" value = "ID중복확인"
                  onclick = "openConfirmid(this.form)"> -->
      </td>
</tr>
<tr>
      <td width = "200">비밀번호</td>
      <td width = "400">
            <input type = "password" name = "password" size = "15" maxlength = "12">
      </td>
</tr>
  <tr>
      <td width = "200">비밀번호 확인</td>
      <td width = "400">
            <input type = "password" name = "pwd_CHECK" size = "15" maxlength = "12">
      </td>
</tr>
<tr>
      <td width = "200" bgcolor = "black">
      <font size = "3" color =  "white"><b>개인정보</b></font></td>
      <td width = "400" bgcolor = "black"></td>
</tr>
<tr>
      <td width = "200">사용자 이름</td>
      <td width = "400">
            <input type = "text" name = "name" size = "15" maxlength = "10">
      </td>
</tr>

<tr>
      <td width = "200">E-Mail</td>
      <td width = "400">
            <input type = "text" name = "email" size = "40" maxlength = "30">
      </td>
</tr>

<tr>
      <td colspan = "2" align = "center" bgcolor = "black">
            <input type = "submit" value = "등  록">
            <input type = "reset" name = "reset" value = "다시입력">
            <input type = "button" value = "가입안함"
                  onclick = "location='mains'">
      </td>
</tr>
</table>
</div>
</form>
</body>
</html>