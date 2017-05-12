<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>滨海光华化工有限公司-主营硫丹醇生产及销售</title>
<meta name="keywords" content="硫丹醇 滨海光华 光华化工 滨海光华化工有限公司" />
<meta name="description" content="滨海光华化工有限公司官方网站">
<meta name="author" content="fhadmin">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<link rel="stylesheet" href="fh_static_1/css/style.css">
<link rel="stylesheet" type="text/css"
	href="fh_static_1/css/settings.css" media="screen" />
<!-- JS -->
<script src="fh_static_1/js/jquery-1.8.2.min.js" type="text/javascript"></script>
<!-- jQuery -->
<script src="fh_static_1/js/jquery.easing.1.3.js" type="text/javascript"></script>
<!-- jQuery easing -->
<script src="fh_static_1/js/modernizr.custom.js" type="text/javascript"></script>
<!-- Modernizr -->
<script src="fh_static_1/js/jquery-ui-1.10.1.custom.min.js"
	type="text/javascript"></script>
<!-- tabs, toggles, accordion -->
<script src="fh_static_1/js/custom.js" type="text/javascript"></script>
<!-- jQuery initialization -->
<!-- Responsive Menu -->
<script src="fh_static_1/js/jquery.meanmenu.js"></script>
<script>
	jQuery(document).ready(function() {
		jQuery('header nav').meanmenu();
	});
</script>
<!-- Revolution Slider -->
<script src="fh_static_1/js/jquery.themepunch.plugins.min.js"></script>
<script src="fh_static_1/js/jquery.themepunch.revolution.min.js"></script>
<script src="fh_static_1/js/revolution-slider-options.js"></script>
<!-- Prety photo -->
<script src="fh_static_1/js/jquery.prettyPhoto.js"></script>
<script>
	$(document).ready(function() {
		$("a[data-gal^='prettyPhoto']").prettyPhoto();
	});
</script>
<!-- Tooltip -->
<script src="fh_static_1/js/tooltip.js"></script>
<!-- Flexisel -->
<script type="text/javascript" src="fh_static_1/js/jquery.flexisel.js"></script>
<!-- Filtering -->
<script type="text/javascript" src="fh_static_1/js/filter.js"></script>
<script type="text/javascript" src="fh_static_1/js/jquery.isotope.min.js"></script>
<!-- Favicons  -->
<link rel="shortcut icon" href="fh_static_1/images/favicon.ico">
<link rel="apple-touch-icon"
	href="fh_static_1/images/apple-touch-icon.png">
<link rel="apple-touch-icon" sizes="72x72"
	href="fh_static_1/images/apple-touch-icon-72x72.png">
<link rel="apple-touch-icon" sizes="114x114"
	href="fh_static_1/images/apple-touch-icon-114x114.png">
</head>
<body>
	<%@ include file="../../../../index_top.html"%>
	<div class="container">
		<div class="container">
			<div class="sixteen columns page-title">
				<div class="eight columns alpha">
					<h3>
						<span>产品展示</span>
					</h3>
				</div>
				<div class="eight columns omega">
					<nav class="breadcrumbs">
						<!-- <ul>
							<li></li>
							<li><a href="#" onclick="get();">全部</a></li>
							<li><a href="#" onclick="get(1);">OLED</a></li>
							<li><a href="#" onclick="get(2);">有机锂电池材料</a></li>
							<li><a href="#" onclick="get(3);">中间体</a></li>
							<li></li>
						</ul> -->
						<ul>
						<li></li>
						<li>
						<a href="/index.html">首页</a>
						</li>
						<li>产品展示</li>
						</ul>
					</nav>
				</div>
				<div class="clearfix"></div>
			</div>
			<!-- page-title -->
				<div class="sixteen columns">
			<ul class="filter-list">
				<li data-filter="*" class="active">全部</li>
				<li data-filter=".identity1">OLED</li>
				<li data-filter=".identity2">有机锂电池材料</li>
				<li data-filter=".identity3">中间体</li>
			</ul>
	</div>
		</div>
		<!-- container -->
		<div class="row port works">
					<form action="product" method="post" name="Form" id="Form">
						<input name="PROTYPE" id="PROTYPE" value="${pd.PROTYPE }" type="hidden" />
			<c:choose>
				<c:when test="${not empty varList}">
					<c:forEach items="${varList}" var="var" varStatus="vs">
						<div class="row-item four columns identity${var.PROTYPE }">
							<div class="work">
								<a href="${var.IMAGE}" data-gal="prettyPhoto"
									class="work-image"> <img src="${var.IMAGE}"
									alt="${var.TITLE}">
									<div class="link-overlay fa fa-search"></div>
								</a> <a href="http://localhost:8080/SKWEB/webproductdetail.html?NEWID=${var.NEWS_ID}" class="work-name">${var.TITLE}</a>
								<div class="tags">${var.BZ}</div>
							</div>
						</div>
					</c:forEach>
				</c:when>
				<c:otherwise>
					<tr class="main_info">
						<td colspan="100" class="center">没有相关数据</td>
					</tr>
				</c:otherwise>
			</c:choose>
			</form>
		</div>
	</div>
	<%@ include file="../../../../index_bottom.html"%>
	<script type="text/javascript">
	function get(protype){
		$('#PROTYPE').val(protype);
		$("#Form").submit();
	}
	$(window).load(function() {
		$("#Product").addClass("current_page_item"); 
	});
	</script>
</body>
</html>