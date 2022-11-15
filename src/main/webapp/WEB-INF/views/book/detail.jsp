<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/css/common.css">
    <link rel="stylesheet" href="/css/default.css">
    <link rel="stylesheet" href="/css/board.css">
    <link rel="stylesheet" href="/css/button.css">
    <link rel="stylesheet" href="/css/layout.css">
    <link rel="stylesheet" href="/css/sub.css">
    
    <script defer src="/js/common.js"></script>
    
	<title>���հ˻� : ���ϵ�����</title>
</head>
<body>
	<div class = "vsc-initialized">
		<div class="container" class="sub">
			<div class="sVisualWrap">
				<div class="sVisual">
					<h3>���հ˻�</h3>
				</div>
			</div>
			
			<div id="contentGroup">
				<!-- ���̵�� -->
		       <c:import url="../sideBar/BsideBar.jsp"></c:import>
				
				<!-- ���� ���� -->
				<div id="contentcore">
					<!-- ��� �޴� -->
					<div class="naviandtitle">
						<h3>���հ˻�</h3>
						
						<div class="navi">
							<a href="/" title="Ȩ���� �̵�" class="home"><span class="blind">Ȩ</span></a>
							<i class="arrow"></i> �ڷ�˻�
							<i class="arrow"></i>�����ڷ�˻�
							<i class="arrow"></i>���հ˻�
						</div>
						
						<div class="snsFarm">
							<ul class="snsBtnArea clearfix">
								<li>
									<a href="#snsGroup" id="sns" title="SNS �����ϱ�(Ȯ���)" class="snsShare"><span class="blind">SNS �����ϱ�</span></a>
									<div id="snsGroup" class="snsList clearfix" style="display: block; right: 45px; opacity: 1;">
										<a href="#sns1" id="sns1" title="����URL �����ϱ�" class="snsUrl" onclick="fnShorturlCopy();" data-clipboard-text="https://me2.do/FNlmGWJe">
											<span class="blind">����URL</span>
										</a>
										<a href="#sns3" id="sns3" onclick="javascript:fnShareKakaoStory(''); return false;" title="īī�����丮�� �����ϱ� ��â����" class="snsStory">
											<span class="blind">īī�����丮</span>
										</a>
										<a href="#sns4" id="sns4" onclick="javascript:fnShareTwitter(''); return false;" title="Ʈ���Ϳ� �����ϱ� ��â����" class="snsTwitter">
											<span class="blind">Ʈ����</span>
										</a>
										<a href="#sns5" id="sns5" onclick="javascript:fnShareFaceBook(''); return false;" title="���̽��Ͽ� �����ϱ� ��â����" class="snsFacebook">
											<span class="blind">���̽���</span>
										</a>
									</div>
								</li>
								<li class="mobileHide"><a href="#print" id="pprint" title="�μ�" class="snsPrint" onclick="javascript:fnPrintPopup('seed'); return false;"><span class="blind">����ȭ�� ����Ʈ</span></a></li>
							</ul>
						</div>
					</div> <!-- ��� �޴� �� -->
					
					<!-- ���� �ٵ� -->
					<div id="contents" class="contentArea">
						<!-- Forced tab Show -->
						<div class="ttabWrap">
							<div class="virtSelect">
								<a href="#script">�Ǹ޴�</a>
							</div>
							<ul id="ttab3" class="tnb clearfix">
								<li class="ttabLast"></li>
							</ul>
						</div>
						<div class="popblackBG" style="display:none;"></div>
						
						<!-- å ������ -->
						<div class="bookDetailInformation">
							<div class="bookInforWrap cate_volume">
								<!-- ��� å ���� -->
								<div>
								</div>
								<!-- ��� å ���� �� -->
							</div>
						</div>
						<!-- å ������ �� -->
					</div>
					
				</div>
			</div>
		</div>
	</div>

</body>
</html>