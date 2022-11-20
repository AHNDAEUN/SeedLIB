<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>열람실 현황 조회</title>
	<style>
		.seatArea{
			display: inline-block;
			margin-left: 30px;
		}
		.seatList{
			float:left;
			width:70px;
			height:60px;
			background:#000;
			color:#fff; 
			text-align: center;
			margin-right: 5px;
    		margin-bottom: 10px;
		}
		.seatList:nth-of-type(12n-11){
			background:rgb(255, 0, 0);
			content:"";
			clear:left;
		}
		.seatBlank{
			width:30px;
		}
	</style>
</head>
<body>
	<!-- header -->
    <c:import url="../temp/header.jsp"></c:import>
<div class="sVisualWrap">
	<div class="sVisual">
		<h3>열람실 현황 조회</h3>
	</div>
</div>
<div id="contentGroup">
       <c:import url="../sideBar/BsideBar.jsp"></c:import>
<div id="contentcore">
	<div class="naviandtitle">
		<h3>열람실 현황 조회</h3>
		<div class="navi"><a href="../" title="홈으로 이동" class="home"><span class="blind">홈</span></a><i class="arrow"></i> 문화참여 <i class="arrow"></i>열람실 예약<i class="arrow"></i>현황 조회
		</div>
	</div>

<div id="contents" class="contentArea">				
	<!--Forced tab Show Que-->
	<div class="ttabWrap" style="display: block;">
		<div id="virtSelect" style="display: none;"><a href="#script">탭메뉴</a></div>
		<ul id="ttab3" class="tnb clearfix"> 
	    <li id="tnb1_7_1" class="choiced"><a href="/studyroom/roomInfo" class="current" title="선택된 탭" style="min-width: 479px;">좌석 현황조회</a> </li> 
	    <li id="tnb1_7_2"><a href="/studyroom/setSeat" style="min-width: 479px;">좌석 예약하기</a> </li> 
	   </ul>
	</div>
	<!--Forced tab Show Que-->

<div style="display: inline-block; width:100%; text-align: center;">
		<!-- style="width:100%; word-break:break-all;word-wrap:break-word;" -->
		<ul class="seatArea">
			<c:forEach items="${list}" var="r" varStatus="status">
				<li class="seatList">${r}
					<div>
						<button class="resBtn" data-res-num="${r}">예약</button>
					</div>
				</li>
				<c:if test="${(status.index+1)%5 eq 0}">
					<li class="seatBlank seatList">통</li>
				</c:if>
			</c:forEach>
		</ul>
</div>
<div>
	<dl class="linkBox">
		<dt class="txtArea">열람실 좌석 신청 또는 조회를 하려면 버튼을 누르세요</dt>
		<dd class="btnArea"><a class="btn" href="/mypage/roomStat">신청조회</a> <a class="btn write themeBtn" href="/studyroom/setSeat">신청하기</a></dd>
	</dl>
</div>
					<!-- End Of the Real Contents-->

		</div>
	</div>
</div>
<!-- footer -->
<c:import url="../temp/footer.jsp"></c:import>
<!-- //footer -->	
<script src="/js/studyroomRes.js"></script>		
</body>
</html>