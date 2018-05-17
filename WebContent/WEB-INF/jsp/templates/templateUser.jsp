<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page session="true"%>
<!DOCTYPE html>
<html lang="en-US">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<meta property="og:title" content="Home" />
<meta property="og:image" content="" />
<meta property="og:url"
	content="http://demo.powerthemes.club/themes/compare/" />
<meta name="twitter:title" content="Home" />
<meta name="twitter:image" content="" />
<title>Price Compare &#8211; Price Compare &#8211; Price
	Comparison WordPress Theme</title>
<link rel='dns-prefetch' href='http://fonts.googleapis.com/' />
<link rel='dns-prefetch' href='http://s.w.org/' />
<link rel="alternate" type="application/rss+xml"
	title="Price Compare &raquo; Feed"
	href="http://demo.powerthemes.club/themes/compare/feed/" />
<link rel="alternate" type="application/rss+xml"
	title="Price Compare &raquo; Comments Feed"
	href="http://demo.powerthemes.club/themes/compare/comments/feed/" />
<link rel="alternate" type="application/rss+xml"
	title="Price Compare &raquo; Home Comments Feed"
	href="http://demo.powerthemes.club/themes/compare/home/feed/" />
<style type="text/css">
img.wp-smiley, img.emoji {
	display: inline !important;
	border: none !important;
	box-shadow: none !important;
	height: 1em !important;
	width: 1em !important;
	margin: 0 .07em !important;
	vertical-align: -0.1em !important;
	background: none !important;
	padding: 0 !important;
}
</style>
<link rel='stylesheet' id='compare-awesome-css'
	href='${pageContext.request.contextPath }/assets/user/css/font-awesome.min.css'
	type='text/css' media='all' />
<link rel='stylesheet' id='compare-bootstrap-css'
	href='${pageContext.request.contextPath }/assets/user/css/bootstrap.min.css' type='text/css'
	media='all' />
<link rel='stylesheet' id='compare-owl-carousel-css'
	href='${pageContext.request.contextPath }/assets/user/css/owl.carousel.css' type='text/css'
	media='all' />
<link rel='stylesheet' id='compare-magnific-popup-css'
	href='${pageContext.request.contextPath }/assets/user/css/magnific-popup.css' type='text/css'
	media='all' />
<link rel='stylesheet' id='compare-font-css'
	href='${pageContext.request.contextPath }/assets/user/fonts/css@family=Droid+Sans%253A100,300,400,700,900,100italic,300italic,400italic,700italic,900italic&amp;ver=1.0.0.css'
	type='text/css' media='all' />
<link rel='stylesheet' id='compare-style-css'
	href='${pageContext.request.contextPath }/assets/user/css/style.css' type='text/css' media='all' />
<style id='compare-style-inline-css' type='text/css'>
.top-bar {
	background-color: #162b32;
}
/* top bar font color - - - */
.top-bar .navbar ul li, .top-bar .navbar ul li a, .top-bar .navbar ul li a i,
	.top-bar .navbar ul li a:hover, .top-bar .navbar ul li a:focus,
	.top-bar ul li, .top-bar ul li i {
	color: #889ca3;
}

/* category search on hover font color - - - */
.search_bar .dropdown .dropdown-menu li a:hover, .search_bar .dropdown .dropdown-menu li a:hover i,
	.search_bar .dropdown .dropdown-menu li a:hover span {
	color: #ffffff;
}

.search_bar .dropdown .dropdown-menu li a:hover {
	background-color: #162b32;
}

/* subemnu background */
.navigation .navbar .navbar-collapse ul li .dropdown-menu li {
	background-color: #162b32;
}

.navigation .navbar .navbar-collapse ul li .dropdown-menu li a {
	color: #ffffff;
}

/* =Main Color
--------------------------------------------------------------------- */
/* bg color - - - */
.featured-slider-wrap .owl-controls .owl-dots .active, .newsletter .newsletter-form a,
	.white-title i, .single-product .widget-footer .widget-title:before,
	.widget-footer .widget-title:before, .tagcloud a:hover, .search-filter .white-block .white-block-content .checkbox input[type="checkbox"]:checked+label::after,
	.reset_filter:hover, .pagination ul li a:hover, .pagination ul li.active a,
	.store-name a:hover {
	background-color: #36a0c7;
	color: #ffffff;
}

.navigation .navbar .navbar-collapse ul li .dropdown-menu li:hover>a,
	.search_bar .dropdown .dropdown-menu li a:hover, blockquote {
	border-color: #36a0c7;
}

/* font color - - - */
.navigation .navbar .navbar-collapse ul li a:hover, .navigation .navbar .navbar-collapse ul li.mega_menu_li .mega_menu li.white-block ul li a:hover,
	.navigation .navbar .navbar-collapse ul .current-menu-item a,
	.search_bar .dropdown .dropdown-menu li .category_mega_menu_wrap ul li a:hover,
	.widget-title i, .search-filter i, .single-product .white-block.product-box .white-block-content h4 a:hover,
	.white-block.product-box .white-block-content h4 a:hover,
	.single-product .white-block.product-box .white-block-content .product-meta span:nth-child(2),
	.white-block.product-box .white-block-content .product-meta span:nth-child(2),
	.categories .owl-item .category-item p a:hover, .blog .white-block .white-block-content h3 a:hover,
	.shortcode-blogs .white-block .white-block-content h3 a:hover, .footer a,
	.search-filter .white-block .white-block-content .view-more,
	.search-filter .white-block .white-block-content .view-more:hover,
	.search-filter .white-block.filter-bar .white-block-content:nth-child(2) ul li a[data-value="list"].active i,
	.search-filter .white-block.filter-bar .white-block-content:nth-child(2) ul li a[data-value="grid"].active i,
	.search-filter .white-block.filter-bar .white-block-content:nth-child(2) ul li:last-child span,
	.reset_filter, .reset_filter:focus, .reset_filter:active, .pagination ul li.prev a,
	.pagination ul li.next a, .single-product .white-block .tab-content #tags .white-block-content a:hover,
	.single-product .white-block .tab-content #categories .white-block-content a:hover,
	.single-product .comments ~ .white-block .white-block-content a:hover,
	.bootstrap-table .table tbody tr td.shipping a, .bootstrap-table .table tbody tr td.shipping a:hover,
	.comment-respond .logged-in-as a, .comment-respond .logged-in-as a:hover,
	.comments .white-block-content .media .media-body .comment-reply-link,
	.comments .white-block-content .media .media-body .comment-reply-link:hover,
	.send_result .alert.alert-info, .send_result .alert.alert-info span,
	.widget ul li a:hover, .widget ul li.recentcomments a, .widget ul.children li:hover>a,
	.widget ul.sub-menu li:hover>a, .widget-footer ul li a:hover,
	.widget-footer .white-block.widget_compare_custom_menu ul li a:hover,
	.widget-footer .widget_archive ul li.recentcomments span,
	.widget-footer .widget_recent_entries ul li.recentcomments span,
	.widget-footer .widget_recent_comments ul li.recentcomments span,
	.widget-footer .widget_meta ul li.recentcomments span, .widget-footer .widget_categories ul li.recentcomments span,
	.widget-footer .widget_archive ul li.recentcomments a:hover,
	.widget-footer .widget_recent_entries ul li.recentcomments a:hover,
	.widget-footer .widget_recent_comments ul li.recentcomments a:hover,
	.widget-footer .widget_meta ul li.recentcomments a:hover,
	.widget-footer .widget_categories ul li.recentcomments a:hover,
	.widget-footer .widget_recent_comments .recentcomments .comment-author-link,
	.widget-footer .widget_recent_comments .recentcomments .comment-author-link a,
	.widget-footer .widget_recent_comments .recentcomments .comment-author-link a:hover,
	.widget-footer .widget_rss a, .post-tags-block a:hover,
	.comment-reply-title a, .comment-reply-title a:hover,
	.comment-reply-title small a, .comment-reply-title small a:hover,
	.modal .modal-body a, .modal .modal-body a:hover, .panel-group .panel-default .panel-heading .panel-title .count,
	.panel-group .panel-default .panel-collapse .panel-body ul li a:hover,
	.panel-group .panel-default .panel-collapse .panel-body ul li .count,
	.alert.alert-info, .alert.alert-info span {
	color: #36a0c7;
}

.widget-title i, .search-filter i {
	background-color: transparent;
}

/* =Green button
--------------------------------------------------------------------------------- */
/* bg - - - */
.navigation .navbar .navbar-collapse ul .register-nav a,
	.bootstrap-table .table tbody tr td:not (.shipping ) a,
	.comment-respond .form-submit .submit, .register-store .submit-form-store,
	.submit-form-contact, .input-group .form-submit .submit,
	.toggle-navigation, .toggle-categories, .small-screen-register-store {
	background-color: #00a88e;
}
/* bg on hover - - - */
.navigation .navbar .navbar-collapse ul .register-nav a:hover,
	.bootstrap-table .table tbody tr td:not (.shipping ) a:hover,
	.bootstrap-table .table tbody tr td:not (.shipping ) a:focus
.comment-respond .form-submit .submit:hover, .comment-respond .form-submit .submit:focus
.register-store .submit-form-store:hover, .register-store .submit-form-store:focus
.submit-form-contact:hover, .submit-form-contact:focus
.input-group .form-submit .submit:hover, .input-group .form-submit .submit:focus,
	.toggle-navigation:hover, .toggle-categories:hover,
	.small-screen-register-store:hover, .toggle-navigation:focus,
	.toggle-categories:focus, .small-screen-register-store:focus {
	background-color: #008470;
}

/* font color - - - */
.navigation .navbar .navbar-collapse ul .register-nav a
.bootstrap-table .table tbody tr td:not (.shipping ) a, .comment-respond .form-submit .submit,
	.register-store .submit-form-store, .submit-form-contact,
	.submit-form-contact:hover, .submit-form-contact:focus
.input-group .form-submit .submit, .toggle-navigation,
	.toggle-categories, .small-screen-register-store {
	color: #ffffff;
}
/* font color on hover - - -*/
.navigation .navbar .navbar-collapse ul .register-nav a:hover,
	.navigation .navbar .navbar-collapse ul .register-nav a:focus,
	.bootstrap-table .table tbody tr td:not (.shipping ) a:hover,
	.bootstrap-table .table tbody tr td:not (.shipping ) a:focus
.comment-respond .form-submit .submit:hover, .comment-respond .form-submit .submit:focus
.register-store .submit-form-store:hover, .register-store .submit-form-store:focus,
	.input-group .form-submit .submit:hover, .input-group .form-submit .submit:focus
.toggle-navigation:hover, .toggle-categories:hover, .toggle-navigation:focus,
	.toggle-categories:focus
.small-screen-register-store:hover, .small-screen-register-store:focus {
	color: #ffffff;
}

.footer {
	background-color: #14272d;
	color: #3b5a64;
}

.footer a {
	color: #36a0c7;
}

body, h1, h2, h3, h4, h5, h6 {
	font-family: "Droid Sans", Helvetica, Arial, sans-serif;
}

.site-logo {
	padding: 5px 0px 0px 0px;
}

.navigation .navbar .navbar-collapse ul li .dropdown-menu li:hover>a,
	.search_bar .dropdown .dropdown-menu li a:hover {
	border-bottom-color: #1a3137;
}
</style>
<link rel='https://api.w.org/'
	href='http://demo.powerthemes.club/themes/compare/wp-json/' />
<link rel="EditURI" type="application/rsd+xml" title="RSD"
	href="http://demo.powerthemes.club/themes/compare/xmlrpc.php?rsd" />
<link rel="wlwmanifest" type="application/wlwmanifest+xml"
	href="http://demo.powerthemes.club/themes/compare/wp-includes/wlwmanifest.xml" />
<meta name="generator" content="WordPress 4.9.4" />
<link rel="canonical" href="index.html" />
<link rel='shortlink' href='index.html' />
<link rel="alternate" type="application/json+oembed"
	href="http://demo.powerthemes.club/themes/compare/wp-json/oembed/1.0/embed?url=http%3A%2F%2Fdemo.powerthemes.club%2Fthemes%2Fcompare%2F" />
<link rel="alternate" type="text/xml+oembed"
	href="http://demo.powerthemes.club/themes/compare/wp-json/oembed/1.0/embed?url=http%3A%2F%2Fdemo.powerthemes.club%2Fthemes%2Fcompare%2F&#038;format=xml" />
<style type="text/css">
.recentcomments a {
	display: inline !important;
	padding: 0 !important;
	margin: 0 !important;
}
</style>
<link rel="icon"
	href="http://demo.powerthemes.club/themes/compare/${pageContext.request.contextPath }/assets/user/images/upload/cropped-favico1-32x32.png"
	sizes="32x32" />
<link rel="icon"
	href="http://demo.powerthemes.club/themes/compare/${pageContext.request.contextPath }/assets/user/images/upload/cropped-favico1-192x192.png"
	sizes="192x192" />
<link rel="apple-touch-icon-precomposed"
	href="http://demo.powerthemes.club/themes/compare/${pageContext.request.contextPath }/assets/user/images/upload/cropped-favico1-180x180.png" />
<meta name="msapplication-TileImage"
	content="http://demo.powerthemes.club/themes/compare/${pageContext.request.contextPath }/assets/user/images/upload/cropped-favico1-270x270.png" />
</head>
<body
	class="home page-template page-template-page-tpl_home_page page-template-page-tpl_home_page-php page page-id-31">
	<header class="top-bar">
		<div class="container">
			<div class="row">
				<div class="col-md-6">
					<div class="navbar navbar-default top-left-navigation"
						role="navigation">
						<ul
							class="list-unstyled list-inline nav navbar-nav clearfix top-left-nav">
							<li><a href="${pageContext.request.contextPath }/home.html"><i class="fa fa-home"></i></a></li>
							<li id="menu-item-13"
								class="menu-item menu-item-type-post_type menu-item-object-page menu-item-13"><a
								title="Contact"
								href="http://demo.powerthemes.club/themes/compare/contact/">Contact</a></li>
						</ul>
					</div>
				</div>
				<div class="col-md-6">
					<ul class="list-inline list-unstyled text-right">
						<li><a href="${pageContext.request.contextPath }/accountPanel/login.html" style="color: #889ca3;">Sign In</a></li> 
						<li class="top-bar-social"><a
							href="#"><i class="fa fa-facebook"></i></a>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</header>
	<header class="navigation " data-enable_sticky="yes">
		<div class="container">
			<div class="clearfix">
				<div class="pull-left">
					<a href="${pageContext.request.contextPath }/home.html" class="site-logo"> <img
						src="${pageContext.request.contextPath }/assets/user/images/upload/logo.png" height="23" width="147"
						title="" alt="">
					</a> <a
						href="http://demo.powerthemes.club/themes/compare/register-store/"
						class="small-screen-register-store"> <i
						class="fa fa-unlock-alt"></i>REGISTER YOUR STORE
					</a>
				</div>
				<div class="pull-right">
					<a href="javascript:" class="toggle-navigation"> <i
						class="fa fa-bars"></i>
					</a>
					<div class="navbar navbar-default" role="navigation">
						<div class="collapse navbar-collapse pull-right">
							<ul class="nav navbar-nav clearfix">
								<li id="menu-item-30"
									class="menu-item menu-item-type-custom menu-item-object-custom current-menu-item current_page_item menu-item-home menu-item-30"><a
									title="Home" href="${pageContext.request.contextPath }/home.html">Home</a></li>
								<li id="menu-item-426"
									class="menu-item menu-item-type-post_type menu-item-object-page mega_menu_li menu-item-426"><a
									title="Categories"
									href="#">Categories <i
										class="fa fa-angle-down"></i></a>
									<ul class="list-unstyled mega_menu col-2" data-child-width="50">
										<li class="widget white-block owl-parent widget_compare_categories">
											<div class="widget-title">
												<h4>Top Categories</h4>
											</div>
											<c:forEach var="brand" items="${brands }">
												<ul class="list-unstyled">
													<li>
														<a href="${pageContext.request.contextPath }/brand/${brand.name}.html?id=${brand.id}">${brand.name }<span class="count">(3)</span></a>
													</li>
												</ul>
											</c:forEach>	
										</li>					
									</ul>
								</li>
								<li id="menu-item-27"
									class="menu-item menu-item-type-post_type menu-item-object-page menu-item-27"><a
									title="Brands"
									href="${pageContext.request.contextPath }/supplier.html">Suppliers</a>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	<tiles:insertAttribute name="content"></tiles:insertAttribute>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	<footer class="widget-footer">
		<div class="container">
			<div class="row">
				<div class="col-sm-4">
					<div class="widget white-block owl-parent widget_text">
						<div class="widget-title">
							<h4>Contact Us</h4>
						</div>
						<div class="textwidget">
							<p>
								Po #223344 Box<br /> New York 2213 Street USA
							</p>
							<p>
								Phone: +333.333.222<br /> Fax: +333.333.2233
							</p>
						</div>
					</div>
				</div>
				<div class="col-sm-4">
					<div
						class="widget white-block owl-parent widget_compare_custom_menu">
						<div class="widget-title">
							<h4>Useful Links</h4>
						</div>
						<div class="white-block-content">
							<style scoped>
.list_JPUXYcTrfx {
	columns: 2;
	-moz-columns: 2;
	-webkit-columns: 2;
	-ms-columns: 2;
	-o-columns: 2;
}
</style>
							<ul class="list-unstyled list_JPUXYcTrfx">
								<li><a href="index.html"> Home </a></li>
								<li><a
									href="http://demo.powerthemes.club/themes/compare/categories/">
										Categories </a></li>
								<li><a
									href="http://demo.powerthemes.club/themes/compare/pricing/">
										Pricing </a></li>
								<li><a
									href="http://demo.powerthemes.club/themes/compare/brands/">
										Brands </a></li>
								<li><a
									href="http://demo.powerthemes.club/themes/compare/stores/">
										Stores </a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="widget white-block owl-parent widget_compare_social">
						<a href="index.html" target="_blank" class="widget-logo"><img
							src="${pageContext.request.contextPath }/assets/user/images/upload/logo_footer.png"
							class="img-responsive" alt="footer_logo"></a>
						<ul class="list-unstyled list-inline">
							<li><a href="https://www.facebook.com/powerthemesclub"
								target="_blank"><i class="fa fa-facebook"></i></a></li>
							<li><a href="https://plus.google.com/+POWERTHEMES/posts"
								target="_blank"><i class="fa fa-google-plus"></i></a></li>
							<li><a href="https://twitter.com/powerthemesclub"
								target="_blank"><i class="fa fa-twitter"></i></a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<footer class="footer">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="pull-left">
						All Rights Reserved © 2015. Proudly made in Serbia by <a
							href="index.html#">powerthemes</a>
					</div>
					<div class="pull-right">
						<img src="${pageContext.request.contextPath }/assets/user/images/upload/payments.png"
							alt="copyrights_image" width="244" height="22">
					</div>
				</div>
			</div>
		</div>
	</footer>
	<input type="hidden" id="social_connect_login_form_uri"
		value="http://demo.powerthemes.club/themes/compare/wp-login.php" />
	<script type="text/javascript" defer
		src="${pageContext.request.contextPath }/assets/user/js/autoptimize_62b34cc798dee5d8373a19d3cdcb1186.js"></script>
</body>
</html>