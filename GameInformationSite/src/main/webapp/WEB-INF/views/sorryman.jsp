<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
font-family:"���� ���";
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
		<a href="mains"><img
			src="https://imageshack.com/i/pnXyvCtaj"></img></a>
		<nav id="Menu">
			<ul>
				<li class="kMenu"><a class="menuLink" href="#">����</a>
					<ul class="submenu">
						<li><a href="sry" class="submenuLink">����</a></li>
						<li><a href="sry" class="submenuLink">���̽�</a></li>
					</ul></li>
				<li>��</li>
				<li class="kMenu"><a class="menuLink" href="#">PC</a>
					<ul class="submenu">
						<li><a href="sry" class="submenuLink">��Ű������</a></li>
						<li><a href="sry" class="submenuLink">�¶��ΰ���</a></li>
					</ul></li>
				<li>��</li>
				<li class="kMenu"><a class="menuLink" href="#">�ܼ�</a>
					<ul class="submenu">
						<li><a href="sry" class="submenuLink">��Ű������</a></li>
					</ul></li>
				<li>��</li>
				<li class="kMenu"><a class="menuLink" href="#">Ŀ�´�Ƽ</a>
					<ul class="submenu">
						<li><a href="sry" class="submenuLink">�����Խ���</a></li>
						<li><a href="sry" class="submenuLink">�����Խ���</a></li>
					</ul></li>
			</ul>
		</nav>
	</div>
	
	
<div style="margin-top:100px">
<div align="center">
<table border = "1" width = "250" height = "200">
<tr bgcolor = "black">
<td align = "center"> <font size = 4 color = "white">�˼��մϴ�!</font></td>
</tr>
<tr bgcolor = "black">
<td align = "center"> <font size = 4 color = "white">�α����� �̿밡���մϴ�!</font></td>
</tr>
<tr>
<td align = "center">
<input type = "button" value = "Ȯ��" onclick = "location='mains'">
</td>
</tr>
</table>
</form>
</div>
</div>

</body> 
</html>