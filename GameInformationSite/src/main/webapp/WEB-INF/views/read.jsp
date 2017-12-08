<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<style>
#Menu {
	margin-left: 200px;
	height: 30px;
	width: 850px;
}

#Menu ul {
	list-style-type: none;
	margin: 0px;
	padding: 0px;
}

#Menu ul li {
	color: white;
	background-color: #2d2d2d;
	float: left;
	line-height: 30px;
	vertical-align: middle;
	text-align: center;
	position: relative;
}

.menuLink, .submenuLink {
	text-decoration: none;
	display: block;
	width: 150px;
	font-size: 12px;
	font-weight: bold;
	font-family: "맑은 고딕";
}

.menuLink {
	color: white;
}

#kMenu:hover .menuLink {
	color: red;
	background-color: #4d4d4d;
}

.kMenu:hover .submenu {
	height: 93px;
}

.submenuLink {
	color: #2d2d2d;
	background-color: white;
	border: solid 1px black;
	margin-top: -1px;
}

.submenu {
	position: absolute;
	height: 0px;
	overflow: hidden;
	transition: height .2s;
	-webkit-transition: height .2s;
	-moz-transition: height .2s;
	-o-transition: height .2s;
}

.submenuLink:hover {
	color: red;
	background-color: #dddddd;
}
body{width:1600px; margin-left: 120px } 
.container{background:#fffurl(bg.gif)repeat-ytopright;width:1600px;}
.sidebar{width:250px; height:auto; float:left; margin-left: 50px;} 
.content{width:1300px; height:auto; float:right;}
.TNT{width:200px; height:auto; float:left;}
.TNTLEFT{width:700px; height:auto; float:left;} 
.footer{height:100px;background:White; color: White; font-weight: bold; text-align: center; margin-top: 20px} 
.clear{clear:both;}

</style>

	<title>게시판 읽는 중...</title>
	
	<body>

	<div align="center">
		<a href="loginground.jsp"><img
			src="resources/img/cores.gif" style="width: 1200px; height: 150px"></img></a>
		<nav id="Menu">
			<ul>
				<li class="kMenu"><a class="menuLink" href="#">뉴스</a>
					<ul class="submenu">
						<li><a href="list" class="submenuLink">신작</a></li>
						<li><a href="news/hotgame/list.jsp" class="submenuLink">핫이슈</a></li>
					</ul></li>
				<li>ㅣ</li>
				<li class="kMenu"><a class="menuLink" href="#">PC</a>
					<ul class="submenu">
						<li><a href="PC/packagegame/list.jsp" class="submenuLink">패키지게임</a></li>
						<li><a href="PC/online/list.jsp" class="submenuLink">온라인게임</a></li>
					</ul></li>
				<li>ㅣ</li>
				<li class="kMenu"><a class="menuLink" href="#">콘솔</a>
					<ul class="submenu">
						<li><a href="Console/packagegame2/list.jsp" class="submenuLink">패키지게임</a></li>
					</ul></li>
				<li>ㅣ</li>
				<li class="kMenu"><a class="menuLink" href="#">커뮤니티</a>
					<ul class="submenu">
						<li><a href="CM/FreeBulletin/list.jsp" class="submenuLink">자유게시판</a></li>
						<li><a href="CM/AttackBulletin/list.jsp" class="submenuLink">공략게시판</a></li>
					</ul></li>
			</ul>
		</nav>
	</div>


	<!-- 상단메뉴바 끝지점 -->
	<!-- DIV 주의 지점시작 -->
	<div class="container">

		<div class="sidebar">
			<div style="margin-top: 50px">
				<form action="loginground.jsp" method="post">
					<table border="1" width="180" height="120">
					<tr bgcolor="black">
						<td align="left"><font size=3 color="white">반갑습니다 <%=(String)session.getAttribute("id") %>님
						</font></td> 
					<tr bgcolor="black">
						<td align="left"><input type="button" value="회원수정" onclick = "location='membershipU'"></td>
					</tr>
					<tr>
					<td>
					 <input type="button" value="로그아웃"
								onclick="location='mains'">
								</td>
					</tr>
				</table>
				</form>
				
				
				<a href="http://df.nexon.com/df/pg/mayupdate17" target="_blank"> <img
					width="200" height="100"
					src="https://imageshack.com/i/po3pja9Jg"
					border="0"></a>
					
					<a href="https://playoverwatch.com/ko-kr"
					target="_blank"> 
					<img width="200" height="100" title="오버워치"
					src="https://imageshack.com/i/poji6fvEg"></a>

				<a href="http://www.leagueoflegends.co.kr" target="_blank"> 
				<img
					width="200" height="100" title="리그오브레전드"
					src="https://imageshack.com/i/poqkROocg"></a>

				<a href="http://sa.nexon.com/channeling/Gate.aspx" target="_blank">
					<img width="200" height="100"
					src="https://imageshack.com/i/pmPwIX3Bg">
				</a>

			</div>

		</div>		<!--  사이드바  -->
		<div class="content">
		
		<div class="TNTLEFT" style="margin-left:150px">
		<script src="/resources/plugins/jQuery/jQuery-2.1.4.min.js"></script>
		
<section>
	<div class="row">
		<div class="col-md-12">
			<div class="box box-primary">
				<div class="box-header">
					<h3 class="box-title">조회</h3>
				</div>
				<form role="form" method="post">
					<input type='hidden' name='no' value="${boardVO.no}">
				</form>
				<div class="box-body" style="border-right-style: solid; border-left-style: solid; border-bottom-style: solid; border-top-style: solid">
					<div class="form-group" style="border-top-style: solid; border-right-style: solid; border-left-style: solid; border-bottom-style: solid">
						<label for="InputTitle" style="font-size: 24px">제목</label>
						<input type="text" name='title' class="form-control" value="${boardVO.title}"
							readonly="readonly">
					</div>
					<div class="form-group" style="border-right-style: solid; border-left-style: solid; border-bottom-style: solid">
						<label for="InputContent" style="font-size: 24px">내용</label>
						<textarea class="form-control" name="content" rows="3"
							readonly="readonly">${boardVO.content}</textarea>
					</div>
					<div class="form-group" style="border-right-style: solid; border-left-style: solid; border-bottom-style: solid">
						<label for="InputWriter" style="font-size: 24px">Writer</label>
						<input type="text" name="writer" class="form-control" value="${boardVO.writer}"
							readonly="readonly">
					</div>
				</div>
				<div class="box-footer">
					<!--  <button type="submit" onclick="location='update'">수정</button>
					<button type="submit" class="btn btn-delete">삭제</button> -->
					<button type="button" onclick="location='list'">목록</button>
				</div>
				
			</div>
		</div>
	</div>
</section>
		
		
		</div>
		
		<div class="TNT" style="margin-left: 200px" align="right" >
		<iframe width="200" height="300" src="https://www.youtube.com/embed/FA5ZUw0Lt2g" frameborder="0" allowfullscreen></iframe>
		</div>
		
		</div>

		<div class="clear">			
		</div>

		<div class="clear"></div>

		<div class="footer">

			<img
				src="https://imageshack.com/i/pnETR3DXj">
		</div>



	</div>
	<!-- 컨테이너  -->
</body>
	
	
