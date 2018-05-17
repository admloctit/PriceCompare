<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
  <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" /> -->
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
  #result {
   position: absolute;
   width: 100%;
   max-width:870px;
   cursor: pointer;
   overflow-y: auto;
   max-height: 400px;
   box-sizing: border-box;
   z-index: 1001;
  }
  .link-class:hover{
   background-color:#f1f1f1;
  }
  .searchBox{
  	width: 73%;
  	height: 62px;
  	border-color: whitesmoke;
  	border: none;
  	cursor: text;
  } 
  </style> 

<header class="search_bar">
		<div class="container">
			<a href="javascript:;" class="toggle-categories"> <i
				class="fa fa-list-ul"></i>
			</a>
			<div class="dropdown always-open">
				<button class="btn btn-default dropdown-toggle" type="button"
					id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="true">
					<i class="fa fa-bars"></i> Categories
				</button>
				<ul class="dropdown-menu category_mega_menu"
					aria-labelledby="dropdownMenu1">
					<c:forEach items="${brands }" var="brand">
						<li>
							<a href="${pageContext.request.contextPath }/brand/${brand.name}.html?id=${brand.id}" style="text-align: center; padding: 0 0; height: 65px">
								<%-- <span>
									<img width="30px" height="10px" src="${pageContext.request.contextPath }/assets/user/images/iconBrand/${brand.logo }">
								</span> --%>
								<!-- <i class="fa fa-desktop fa-fw">
								</i> -->
								<img style="margin-top: 7px" height="50px" src="${pageContext.request.contextPath }/assets/user/images/iconBrand/${brand.logo }">
								<%-- ${brand.name } --%>
							</a>
						</li>
					</c:forEach>
				</ul>
			</div>
			<form action="${pageContext.request.contextPath }/search.html" method="get">
				<div>
					<input name="keyword" id="search" class="searchBox" type="text" placeholder="Search Product"> 
					<a href="#" class="submit-form"><button class="fa fa-search" type="submit"></button></a>
				</div>
			</form>
			<ul class="list-group" id="result" style="margin-left: 263px; margin-top: 62px; max-width: 832px"></ul>
		</div>
	</header>
	
	<script>
		$(document).ready(function(){
			/* $.ajaxSetup({ cache: false }); */
			$('#search').keyup(function(){
		 		$('#result').html('');
		 		var searchField = $('#search').val();
		 		var expression = new RegExp(searchField, "i");
			 	$.getJSON('http://localhost:8080/Ecommerce/product/productsJson.html', function(data) {
		  			$.each(data, function(key, value){
			   			if (value.name.search(expression) != -1 || value.code.search(expression) != -1){
			     			$('#result').append('<a href="${pageContext.request.contextPath }/product/' 
					     			+ value.name + '-' + value.code + '.html?id=' 
					     			+ value.id + '" ><li class="list-group-item link-class"><img src="${pageContext.request.contextPath }/assets/user/images/products/'
					     			+ value.photo + '" height="40" width="40" class="img-thumbnail" /> '
					     			+ value.name + value.code +' <span class="text-muted" style="color: red">' 
					     			+ value.price + ' &#x20ab;</span></li></a>');
			   			}
		  			});   
		 		});
			});
		 
		 	/* $('#result').on('click', 'li', function() {
		  		var click_text = $(this).text().split('|');
		  		$('#search').val($.trim(click_text[0]));
		 		$("#result").html('');
		 	});  */
		});
	</script>

	

	
<section>
	<div class="container">
		<div class="row">
			<div class="col-md-3"></div>
			<div class="col-md-9">
				<div class="shortcode shortcode-slider">
					<div class="featured-slider-wrap">
						<div class="featured-slider-loader embed-responsive embed-responsive-16by9">
							<div class="featured-slider-loader-holder embed-responsive-item">
								<i class="fa fa-spin fa-spinner"></i>
							</div>
						</div>
						<ul class="list-unstyled featured-slider">
							<c:forEach var="product" items="${LastedProducts }">
								<li><a
									href="${pageContext.request.contextPath }/product/${product.name }-${product.code }.html?id=${product.id }"><img
										width="847" height="486"
										src="${pageContext.request.contextPath }/assets/user/images/products/${product.photo }"
										class="attachment-compare-slider-image size-compare-slider-image"
										alt=""
										srcset="${pageContext.request.contextPath }/assets/user/images/products/${product.photo } 847w, ${pageContext.request.contextPath }/assets/user/images/products/${product.photo } 300w, ${pageContext.request.contextPath }/assets/user/images/products/${product.photo } 150w"
										sizes="(max-width: 847px) 100vw, 847px"/></a></li>
							</c:forEach>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-9">
				<c:forEach var="product" items="${newestProduct }">
				<a
					href="${pageContext.request.contextPath }/product/${product.name }-${product.code }.html?id=${product.id }"
					class="banner-link shortcode shortcode-banner"><img width="847"
					height="373" src="${pageContext.request.contextPath }/assets/user/images/products/${product.photo }"
					class="attachment-full size-full" alt=""
					srcset="${pageContext.request.contextPath }/assets/user/images/products/${product.photo } 847w, ${pageContext.request.contextPath }/assets/user/images/products/${product.photo } 300w, ${pageContext.request.contextPath }/assets/user/images/products/${product.photo } 150w"
					sizes="(max-width: 847px) 100vw, 847px" /></a>
				</c:forEach>
			</div>
			<div class="col-md-3">
				<div class="shortcode shortcode-sidebar">
					<div class="widget white-block owl-parent widget_compare_brands">
						<div class="widget-title white-title clearfix">
							<div class="white-block-border clearfix">
								<div class="pull-left">
									<i class="fa fa-list-ul"></i>
									<h3>Brands</h3>
								</div>
								<div class="pull-right">
									<a href="javascript:;" class="list-left"> <i
										class="fa fa-angle-left"></i>
									</a> <a href="javascript:;" class="list-right"> <i
										class="fa fa-angle-right"></i>
									</a>
								</div>
							</div>
						</div>
						<div class="widget-slider" data-visible-items="2">
							<div>
								<c:forEach var="i" begin="0" end="${brands.size() / 2 - 1 }">
													<a
														href="${pageContext.request.contextPath }/brand/${brands[i].name }.html?id=${brands[i].id }"><img
														width="150" height="77"
														src="${pageContext.request.contextPath }/assets/user/images/iconBrand/${brands[i].logo }"
														class="attachment-full size-full" alt="" /></a>		
										
								</c:forEach>
							</div>
							<div>
								<c:forEach var="i" begin="${brands.size() / 2 }" end="${brands.size() - 1 }">
													<a
														href="${pageContext.request.contextPath }/brand/${brands[i].name }.html?id=${brands[i].id }"><img
														width="150" height="77"
														src="${pageContext.request.contextPath }/assets/user/images/iconBrand/${brands[i].logo }"
														class="attachment-full size-full" alt="" /></a>		
										
								</c:forEach>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>		
	</div>
</section>