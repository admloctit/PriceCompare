<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<form action="http://demo.powerthemes.club/themes/compare/search-page/"
	class="search-filter">
	<section>
		<div class="container">
			<div class="row">
				<div class="col-md-3">
					<div class="search-overlay sidebar">
						<i class="fa fa-spin fa-spinner"></i>
						<p>Loading results...</p>
					</div>
					<div class="white-block">
						<div class="white-title clearfix clearfix">
							<div class="white-block-border clearfix">
								<div class="pull-left">
									<i class="fa fa-list-ul"></i>
									<h3>Search Filter</h3>
								</div>
								<div class="pull-right">
									<a href="javascript:;" class="list-left filter-collapse"> <i
										class="fa fa-angle-up"></i>
									</a>
								</div>
							</div>
						</div>
						<div class="filter-wrap">
							<div class="white-block-content">
								<h3>Term</h3>
								<div class="search-input">
									<input type="text" class="form-control" name="keyword" value=""
										placeholder="Type term..."> <i class="fa fa-search"></i>
								</div>
							</div>
							<div class="white-block-content">
								<div class="clearfix">
									<div class="pull-left">
										<h3>Categories</h3>
									</div>
									<div class="pull-right">
										<a href="javascript:;" class="view-more closed"
											data-target=".category-filter" data-visible="10"
											data-less="VIEW LESS">VIEW MORE <i
											class="fa fa-angle-down"></i></a>
									</div>
								</div>
								<ul class="list-unstyled category-filter"
									style="overflow: hidden; height: 930px;">
									<li class=""><div class="checkbox checkbox-inline">
											<input type="checkbox" id="product-cat-cameras-accessories"
												name="product-cat[]" value="cameras-accessories"> <label
												for="product-cat-cameras-accessories"> Cameras &amp;
												Accessories </label>
										</div></li>
									<li class=""><div class="checkbox checkbox-inline">
											<input type="checkbox" id="product-cat-cloth"
												name="product-cat[]" value="cloth"> <label
												for="product-cat-cloth"> Cloth </label>
										</div></li>
									<li class=""><div class="checkbox checkbox-inline">
											<input type="checkbox" id="product-cat-clothing"
												name="product-cat[]" value="clothing"> <label
												for="product-cat-clothing"> Clothing </label>
										</div></li>
									<li class=""><div class="checkbox checkbox-inline">
											<input type="checkbox" id="product-cat-computer"
												name="product-cat[]" value="computer" checked="checked">
											<label for="product-cat-computer"> Computer </label>
										</div>
										<ul class="list-unstyled">
											<li><div class="checkbox checkbox-inline">
													<input type="checkbox"
														id="product-cat-all-in-one-computers" name="product-cat[]"
														value="all-in-one-computers"> <label
														for="product-cat-all-in-one-computers"> All In One
														Computers </label>
												</div></li>
											<li><div class="checkbox checkbox-inline">
													<input type="checkbox" id="product-cat-all-in-one-printers"
														name="product-cat[]" value="all-in-one-printers">
													<label for="product-cat-all-in-one-printers">
														All-in-One Printers </label>
												</div></li>
											<li><div class="checkbox checkbox-inline">
													<input type="checkbox" id="product-cat-antivirus-software"
														name="product-cat[]" value="antivirus-software"> <label
														for="product-cat-antivirus-software"> Antivirus
														Software </label>
												</div></li>
											<li><div class="checkbox checkbox-inline">
													<input type="checkbox" id="product-cat-brand-computers"
														name="product-cat[]" value="brand-computers"> <label
														for="product-cat-brand-computers"> Brand Computers
													</label>
												</div></li>
											<li><div class="checkbox checkbox-inline">
													<input type="checkbox" id="product-cat-cloud-storage"
														name="product-cat[]" value="cloud-storage"> <label
														for="product-cat-cloud-storage"> Cloud Storage </label>
												</div></li>
											<li><div class="checkbox checkbox-inline">
													<input type="checkbox"
														id="product-cat-color-laser-printers" name="product-cat[]"
														value="color-laser-printers"> <label
														for="product-cat-color-laser-printers"> Color
														Laser Printers </label>
												</div></li>
											<li><div class="checkbox checkbox-inline">
													<input type="checkbox" id="product-cat-computer-cases"
														name="product-cat[]" value="computer-cases"> <label
														for="product-cat-computer-cases"> Computer Cases </label>
												</div></li>
											<li><div class="checkbox checkbox-inline">
													<input type="checkbox"
														id="product-cat-digital-voice-recorders"
														name="product-cat[]" value="digital-voice-recorders">
													<label for="product-cat-digital-voice-recorders">
														Digital Voice Recorders </label>
												</div></li>
											<li><div class="checkbox checkbox-inline">
													<input type="checkbox"
														id="product-cat-external-hard-drives" name="product-cat[]"
														value="external-hard-drives"> <label
														for="product-cat-external-hard-drives"> External
														Hard Drives </label>
												</div></li>
											<li><div class="checkbox checkbox-inline">
													<input type="checkbox" id="product-cat-laptop-bags"
														name="product-cat[]" value="laptop-bags"> <label
														for="product-cat-laptop-bags"> Laptop Bags </label>
												</div></li>
											<li><div class="checkbox checkbox-inline">
													<input type="checkbox" id="product-cat-laptops"
														name="product-cat[]" value="laptops"> <label
														for="product-cat-laptops"> Laptops </label>
												</div></li>
											<li><div class="checkbox checkbox-inline">
													<input type="checkbox" id="product-cat-large-monitors"
														name="product-cat[]" value="large-monitors"> <label
														for="product-cat-large-monitors"> Large Monitors </label>
												</div></li>
											<li><div class="checkbox checkbox-inline">
													<input type="checkbox" id="product-cat-printers"
														name="product-cat[]" value="printers"> <label
														for="product-cat-printers"> Printers </label>
												</div></li>
											<li><div class="checkbox checkbox-inline">
													<input type="checkbox" id="product-cat-scanners"
														name="product-cat[]" value="scanners"> <label
														for="product-cat-scanners"> Scanners </label>
												</div></li>
											<li><div class="checkbox checkbox-inline">
													<input type="checkbox" id="product-cat-sound-bars"
														name="product-cat[]" value="sound-bars"> <label
														for="product-cat-sound-bars"> Sound Bars </label>
												</div></li>
											<li><div class="checkbox checkbox-inline">
													<input type="checkbox" id="product-cat-voip"
														name="product-cat[]" value="voip"> <label
														for="product-cat-voip"> VoIP </label>
												</div></li>
											<li><div class="checkbox checkbox-inline">
													<input type="checkbox" id="product-cat-web-browsers"
														name="product-cat[]" value="web-browsers"> <label
														for="product-cat-web-browsers"> Web Browsers </label>
												</div></li>
											<li><div class="checkbox checkbox-inline">
													<input type="checkbox" id="product-cat-web-hosting"
														name="product-cat[]" value="web-hosting"> <label
														for="product-cat-web-hosting"> Web Hosting </label>
												</div></li>
											<li><div class="checkbox checkbox-inline">
													<input type="checkbox" id="product-cat-wireless-headphones"
														name="product-cat[]" value="wireless-headphones">
													<label for="product-cat-wireless-headphones">
														Wireless Headphones </label>
												</div></li>
											<li><div class="checkbox checkbox-inline">
													<input type="checkbox" id="product-cat-wireless-routers"
														name="product-cat[]" value="wireless-routers"> <label
														for="product-cat-wireless-routers"> Wireless
														Routers </label>
												</div></li>
											<li><div class="checkbox checkbox-inline">
													<input type="checkbox" id="product-cat-wireless-speakers"
														name="product-cat[]" value="wireless-speakers"> <label
														for="product-cat-wireless-speakers"> Wireless
														Speakers </label>
												</div></li>
										</ul></li>
									<li class=""><div class="checkbox checkbox-inline">
											<input type="checkbox" id="product-cat-electronics"
												name="product-cat[]" value="electronics"> <label
												for="product-cat-electronics"> Electronics </label>
										</div></li>
									<li class=""><div class="checkbox checkbox-inline">
											<input type="checkbox" id="product-cat-flowers-gifts"
												name="product-cat[]" value="flowers-gifts"> <label
												for="product-cat-flowers-gifts"> Flowers &amp; Gifts
											</label>
										</div></li>
									<li class=""><div class="checkbox checkbox-inline">
											<input type="checkbox" id="product-cat-furniture"
												name="product-cat[]" value="furniture"> <label
												for="product-cat-furniture"> Furniture </label>
										</div></li>
									<li class=""><div class="checkbox checkbox-inline">
											<input type="checkbox" id="product-cat-grocery-gourmet"
												name="product-cat[]" value="grocery-gourmet"> <label
												for="product-cat-grocery-gourmet"> Grocery &amp;
												Gourmet </label>
										</div></li>
									<li class=""><div class="checkbox checkbox-inline">
											<input type="checkbox" id="product-cat-health-beauty"
												name="product-cat[]" value="health-beauty"> <label
												for="product-cat-health-beauty"> Health &amp; Beauty
											</label>
										</div></li>
									<li class=""><div class="checkbox checkbox-inline">
											<input type="checkbox" id="product-cat-home-improvement"
												name="product-cat[]" value="home-improvement"> <label
												for="product-cat-home-improvement"> Home Improvement
											</label>
										</div></li>
									<li class=""><div class="checkbox checkbox-inline">
											<input type="checkbox" id="product-cat-indoor-living"
												name="product-cat[]" value="indoor-living"> <label
												for="product-cat-indoor-living"> Indoor Living </label>
										</div></li>
									<li class=""><div class="checkbox checkbox-inline">
											<input type="checkbox" id="product-cat-industrial-supply"
												name="product-cat[]" value="industrial-supply"> <label
												for="product-cat-industrial-supply"> Industrial
												Supply </label>
										</div></li>
									<li class=""><div class="checkbox checkbox-inline">
											<input type="checkbox" id="product-cat-jewerly-watches"
												name="product-cat[]" value="jewerly-watches"> <label
												for="product-cat-jewerly-watches"> Jewerly &amp;
												Watches </label>
										</div></li>
									<li class=""><div class="checkbox checkbox-inline">
											<input type="checkbox"
												id="product-cat-monitor-cardiaco-frequencimetro"
												name="product-cat[]" value="monitor-cardiaco-frequencimetro">
											<label for="product-cat-monitor-cardiaco-frequencimetro">
												Monitor Cardíaco / Frequencímetro </label>
										</div></li>
									<li class=""><div class="checkbox checkbox-inline">
											<input type="checkbox" id="product-cat-movies"
												name="product-cat[]" value="movies"> <label
												for="product-cat-movies"> Movies </label>
										</div></li>
									<li class=""><div class="checkbox checkbox-inline">
											<input type="checkbox" id="product-cat-travel"
												name="product-cat[]" value="travel"> <label
												for="product-cat-travel"> Travel </label>
										</div></li>
								</ul>
							</div>
							<div class="white-block-content">
								<div class="clearfix">
									<div class="pull-left">
										<h3>Brands</h3>
									</div>
									<div class="pull-right">
										<a href="javascript:;" class="view-more closed"
											data-target=".brand-filter" data-visible=""
											data-less="VIEW LESS">VIEW MORE <i
											class="fa fa-angle-down"></i></a>
									</div>
								</div>
								<ul class="list-unstyled brand-filter"
									style="overflow: hidden; height: 300px;">
									<li class=""><div class="checkbox checkbox-inline">
											<input type="checkbox" id="product-brand-aplle"
												name="product-brand[]" value="aplle"> <label
												for="product-brand-aplle"> Aplle </label>
										</div></li>
									<li class=""><div class="checkbox checkbox-inline">
											<input type="checkbox" id="product-brand-apple"
												name="product-brand[]" value="apple"> <label
												for="product-brand-apple"> apple </label>
										</div></li>
									<li class=""><div class="checkbox checkbox-inline">
											<input type="checkbox" id="product-brand-bross"
												name="product-brand[]" value="bross"> <label
												for="product-brand-bross"> Bross </label>
										</div></li>
									<li class=""><div class="checkbox checkbox-inline">
											<input type="checkbox" id="product-brand-chartel"
												name="product-brand[]" value="chartel"> <label
												for="product-brand-chartel"> Chartel </label>
										</div></li>
									<li class=""><div class="checkbox checkbox-inline">
											<input type="checkbox" id="product-brand-dellar"
												name="product-brand[]" value="dellar"> <label
												for="product-brand-dellar"> Dellar </label>
										</div></li>
									<li class=""><div class="checkbox checkbox-inline">
											<input type="checkbox" id="product-brand-hps"
												name="product-brand[]" value="hps"> <label
												for="product-brand-hps"> HPS </label>
										</div></li>
									<li class=""><div class="checkbox checkbox-inline">
											<input type="checkbox" id="product-brand-jordin"
												name="product-brand[]" value="jordin"> <label
												for="product-brand-jordin"> Jordin </label>
										</div></li>
									<li class=""><div class="checkbox checkbox-inline">
											<input type="checkbox" id="product-brand-lagrand"
												name="product-brand[]" value="lagrand"> <label
												for="product-brand-lagrand"> LaGrand </label>
										</div></li>
									<li class=""><div class="checkbox checkbox-inline">
											<input type="checkbox" id="product-brand-pacote"
												name="product-brand[]" value="pacote"> <label
												for="product-brand-pacote"> Pacote </label>
										</div></li>
									<li class=""><div class="checkbox checkbox-inline">
											<input type="checkbox" id="product-brand-panaphonic"
												name="product-brand[]" value="panaphonic"> <label
												for="product-brand-panaphonic"> Panaphonic </label>
										</div></li>
									<li class=""><div class="checkbox checkbox-inline">
											<input type="checkbox" id="product-brand-sasung"
												name="product-brand[]" value="sasung"> <label
												for="product-brand-sasung"> Sasung </label>
										</div></li>
									<li class=""><div class="checkbox checkbox-inline">
											<input type="checkbox" id="product-brand-simple"
												name="product-brand[]" value="simple"> <label
												for="product-brand-simple"> Simple </label>
										</div></li>
								</ul>
							</div>
							<div class="white-block-content filter-ratings">
								<h3>Ratings</h3>
								<div class="checkbox checkbox-inline">
									<input type="checkbox" id="product-ratings-5"
										name="product-ratings[]" value="5"> <label
										for="product-ratings-5"> <i class="fa fa-star"></i><i
										class="fa fa-star"></i><i class="fa fa-star"></i><i
										class="fa fa-star"></i><i class="fa fa-star"></i>
									</label>
								</div>
								<div class="checkbox checkbox-inline">
									<input type="checkbox" id="product-ratings-4"
										name="product-ratings[]" value="4"> <label
										for="product-ratings-4"> <i class="fa fa-star"></i><i
										class="fa fa-star"></i><i class="fa fa-star"></i><i
										class="fa fa-star"></i>
									</label>
								</div>
								<div class="checkbox checkbox-inline">
									<input type="checkbox" id="product-ratings-3"
										name="product-ratings[]" value="3"> <label
										for="product-ratings-3"> <i class="fa fa-star"></i><i
										class="fa fa-star"></i><i class="fa fa-star"></i>
									</label>
								</div>
								<div class="checkbox checkbox-inline">
									<input type="checkbox" id="product-ratings-2"
										name="product-ratings[]" value="2"> <label
										for="product-ratings-2"> <i class="fa fa-star"></i><i
										class="fa fa-star"></i>
									</label>
								</div>
								<div class="checkbox checkbox-inline">
									<input type="checkbox" id="product-ratings-1"
										name="product-ratings[]" value="1"> <label
										for="product-ratings-1"> <i class="fa fa-star"></i>
									</label>
								</div>
							</div>
							<div class="white-block-content">
								<h3>Price Range</h3>
								<div class="checkbox checkbox-inline">
									<input type="checkbox" id="price-0" name="price[]"
										value="0-100"> <label for="price-0"> $0.00 -
										$100.00 </label>
								</div>
								<div class="checkbox checkbox-inline">
									<input type="checkbox" id="price-1" name="price[]"
										value="101-500"> <label for="price-1"> $101.00
										- $500.00 </label>
								</div>
								<div class="checkbox checkbox-inline">
									<input type="checkbox" id="price-2" name="price[]"
										value="501-1000"> <label for="price-2">
										$501.00 - $1,000.00 </label>
								</div>
								<div class="checkbox checkbox-inline">
									<input type="checkbox" id="price-3" name="price[]" value="1000">
									<label for="price-3"> $1,000.00+ </label>
								</div>
							</div>
							<a href="javascript:;" class="reset_filter">Clear Filters</a>
						</div>
					</div>
				</div>
				<div class="col-md-9 ajax-container">
					<div class="shortcode shortcode-slider">
						<div class="featured-slider-wrap">
							<div
								class="featured-slider-loader embed-responsive embed-responsive-16by9"
								style="display: none;">
								<div class="featured-slider-loader-holder embed-responsive-item">
									<i class="fa fa-spin fa-spinner"></i>
								</div>
							</div>
							<ul
								class="list-unstyled featured-slider owl-carousel owl-theme owl-loaded"
								style="display: block;">
								<div class="owl-stage-outer">
									<div class="owl-stage"
										style="transform: translate3d(0px, 0px, 0px); transition: 0s; width: 2094px;">
										<div class="owl-item active"
											style="width: 698px; margin-right: 0px;">
											<li><a
												href="http://demo.powerthemes.club/themes/compare/product/samsung-galaxy-s6-black-sapphire-limited-mega-edition"><img
													width="847" height="486"
													src="http://demo.powerthemes.club/themes/compare/wp-content/uploads/2015/07/slide_3.jpg"
													class="attachment-compare-slider-image size-compare-slider-image"
													alt=""
													srcset="http://demo.powerthemes.club/themes/compare/wp-content/uploads/2015/07/slide_3.jpg 847w, http://demo.powerthemes.club/themes/compare/wp-content/uploads/2015/07/slide_3-300x172.jpg 300w, http://demo.powerthemes.club/themes/compare/wp-content/uploads/2015/07/slide_3-150x86.jpg 150w"
													sizes="(max-width: 847px) 100vw, 847px"></a></li>
										</div>
										<div class="owl-item" style="width: 698px; margin-right: 0px;">
											<li><a
												href="http://demo.powerthemes.club/themes/compare/product/apple-iphone-6-4-7-inch-white-case-3/"><img
													width="847" height="486"
													src="http://demo.powerthemes.club/themes/compare/wp-content/uploads/2015/07/slide_2.jpg"
													class="attachment-compare-slider-image size-compare-slider-image"
													alt=""
													srcset="http://demo.powerthemes.club/themes/compare/wp-content/uploads/2015/07/slide_2.jpg 847w, http://demo.powerthemes.club/themes/compare/wp-content/uploads/2015/07/slide_2-300x172.jpg 300w, http://demo.powerthemes.club/themes/compare/wp-content/uploads/2015/07/slide_2-150x86.jpg 150w"
													sizes="(max-width: 847px) 100vw, 847px"></a></li>
										</div>
										<div class="owl-item" style="width: 698px; margin-right: 0px;">
											<li><a
												href="http://demo.powerthemes.club/themes/compare/product/chanel-coco-mademoiselle-eau-de-parfume-35ml/"><img
													width="847" height="486"
													src="http://demo.powerthemes.club/themes/compare/wp-content/uploads/2015/07/slide_1.jpg"
													class="attachment-compare-slider-image size-compare-slider-image"
													alt=""
													srcset="http://demo.powerthemes.club/themes/compare/wp-content/uploads/2015/07/slide_1.jpg 847w, http://demo.powerthemes.club/themes/compare/wp-content/uploads/2015/07/slide_1-300x172.jpg 300w, http://demo.powerthemes.club/themes/compare/wp-content/uploads/2015/07/slide_1-150x86.jpg 150w"
													sizes="(max-width: 847px) 100vw, 847px"></a></li>
										</div>
									</div>
								</div>
								<div class="owl-controls">
									<div class="owl-nav">
										<div class="owl-prev" style="">
											<i class="fa fa-angle-double-left"></i>
										</div>
										<div class="owl-next" style="">
											<i class="fa fa-angle-double-right"></i>
										</div>
									</div>
									<div class="owl-dots" style="">
										<div class="owl-dot active">
											<span></span>
										</div>
										<div class="owl-dot">
											<span></span>
										</div>
										<div class="owl-dot">
											<span></span>
										</div>
									</div>
								</div>
							</ul>
						</div>
					</div>
					<div class="white-block filter-bar">
						<div class="white-block-content ">
							<h1>Computer</h1>
						</div>
						<div class="white-block-content">
							<ul class="list-unstyled list-inline">
								<li>Pick view</li>
								<li><a href="javascript:;" data-value="list" class=" view"><i
										class="fa fa-list-ul"></i></a></li>
								<li><a href="javascript:;" data-value="grid"
									class="active view"><i class="fa fa-th"></i></a> <input
									type="hidden" value="" name="product-view" id="product-view"></li>
								<li>Sort by</li>
								<li><select name="product-sort"><option
											value="date-asc" selected="selected">Date Ascending</option>
										<option value="date-desc">Date Descending</option>
										<option value="price-asc">Price Ascending</option>
										<option value="price-desc">Price Descending</option>
								</select></li>
								<li><span>6</span> matches</li>
							</ul>
						</div>
					</div>
					<div class="products-box">
						<div class="search-overlay row">
							<i class="fa fa-spin fa-spinner"></i>
							<p>Loading results...</p>
						</div>
						<c:forEach var="product" items="${products }">
							<div class="col-sm-4">
								<div class="white-block product-box">
									<div class="white-block-border">
										<div class="white-block-media">
											<div class="embed-responsive embed-responsive-4by3">
												<img width="400" height="300"
													src="${pageContext.request.contextPath }/assets/user/images/products/${product.photo }"
													class="embed-responsive-item wp-post-image" alt=""
													srcset="${pageContext.request.contextPath }/assets/user/images/products/${product.photo } 400w, ${pageContext.request.contextPath }/assets/user/images/products/${product.photo } 250w"
													sizes="(max-width: 400px) 100vw, 400px">
											</div>
											<a class="overlay"
												href="${pageContext.request.contextPath }/product/${product.name}-${product.code }.html?id=${product.id }">
												<i class="fa fa-compress"></i>
											<h3>COMPARE</h3>
											</a>
										</div>
										<div class="white-block-content">
											<p class="product-ratings">
												<i class="fa fa-star"></i><i class="fa fa-star"></i><i
													class="fa fa-star-o"></i><i class="fa fa-star-o"></i><i
													class="fa fa-star-o"></i><span>(4)</span>
											</p>
											<h4>
												<a
													href="http://demo.powerthemes.club/themes/compare/product/apple-mac-pro-3-5ghz-2015-edition/">
													Laptop ${product.name } ${product.code }</a>
											</h4>
											<p class="product-meta">
												Price: <span><fmt:formatNumber pattern="#,##0" value="${product.price }"></fmt:formatNumber> &#x20ab;</span>
											</p>
										</div>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
				</div>
			</div>
		</div>
	</section>
</form>