<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>



<section>
	<div class="container">
		<div class="row" style="margin-top: 20px;">
			<div class="col-md-9">
				<div class="style1">
					<div class="white-block" style="margin-top: 20px;">
						<div class="white-block-media">
							<img width="838" height="380"
								src="${pageContext.request.contextPath }/assets/user/images/products/${product.photo }"
								class="attachment-post-thumbnail size-post-thumbnail wp-post-image"
								alt=""
								srcset="${pageContext.request.contextPath }/assets/user/images/products/${product.photo } 838w, ${pageContext.request.contextPath }/assets/user/images/products/${product.photo } 300w, ${pageContext.request.contextPath }/assets/user/images/products/${product.photo } 150w"
								sizes="(max-width: 838px) 100vw, 838px" />
						</div>
						<div class="white-block-content" style="padding-top: 10px;">
							<h1>${product.name } ${product.code }</h1>
							<i class="fa fa-star"></i><i class="fa fa-star"></i><i
								class="fa fa-star"></i><i class="fa fa-star"></i><i
								class="fa fa-star-half-o"></i><span>(2)</span>
							<hr />
							<p>-&emsp;&emsp;&emsp;Chip<span style="display:inline-block; margin-left: 70px">: &emsp;${product.chip }, ${product.cpuSpeed }</span></p>
							<p>-&emsp;&emsp;&emsp;RAM<span style="display:inline-block; margin-left: 68px"> : &emsp;${product.ram }</span></p>
							<p>-&emsp;&emsp;&emsp;Graphics<span style="display:inline-block; margin-left: 42px">: &emsp;${product.graphics }</span></p>
							<p>-&emsp;&emsp;&emsp;Hard drive<span style="display:inline-block; margin-left: 33px">: &emsp;${product.hardDrive }</span></p>
							<p>-&emsp;&emsp;&emsp;Resolution<span style="display:inline-block; margin-left: 32px">: &emsp;${product.resolution }</span></p>
							<p>-&emsp;&emsp;&emsp;Wifi<span style="display:inline-block; margin-left: 78px">: &emsp;${product.wifi }</span></p>
							<p>-&emsp;&emsp;&emsp;LAN<span style="display:inline-block; margin-left: 74px">: &emsp;${product.lan }</span></p>
							<p>-&emsp;&emsp;&emsp;Pin<span style="display:inline-block; margin-left: 82px">: &emsp;${product.pin }</span></p>
							<p>-&emsp;&emsp;&emsp;Weight<span style="display:inline-block; margin-left: 57px">: &emsp;${product.weight }</span></p>
						</div>
					</div>
					<div class="white-block" style="margin-top: 40px;">
						<div class="white-title clearfix">
							<div class="white-block-border clearfix">
								<div class="pull-left">
									<i class="fa fa-list-ul"></i>
									<ul class="nav nav-tabs" role="tablist">
										<li role="presentation" class="active"><a
											href="index.html#prices" aria-controls="prices" role="tab"
											data-toggle="tab">Compare Prices</a></li>
										<li role="presentation"><a href="index.html#description"
											aria-controls="description" role="tab" data-toggle="tab">Full
												Description</a></li>
										<li role="presentation"><a href="index.html#reviews"
											aria-controls="reviews" role="tab" data-toggle="tab">Reviews</a></li>
										<li role="presentation"><a href="index.html#tags"
											aria-controls="tags" role="tab" data-toggle="tab">Tags</a></li>
										<li role="presentation"><a href="index.html#categories"
											aria-controls="categories" role="tab" data-toggle="tab">Categories</a></li>
									</ul>
								</div>
							</div>
						</div>
						<div class="tab-content">
							<div role="tabpanel" class="tab-pane active" id="prices">
								<div class="bt-table table-responsive">
									<table data-toggle="table" data-search="false"
										data-classes="table table-striped" data-sort-name="price"
										data-sort-order="asc">
										<thead>
											<tr>
												<th data-field="logo" data-sortable="false"><i
													class="fa fa-shopping-cart"></i> STORE LOGO</th>
												<th data-field="date" data-sortable="true"><i
													class="fa fa-clock-o"></i> STORE NAME</th>
												<th data-field="price" data-sortable="true"
													data-sorter="priceSorter"><i class="fa fa-dollar"></i>
													PRICE</th>
												<th data-field="link"><i
													class="fa fa-external-link-square"></i> LINK</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="productOfSupplier" items="${productOfSuppliers }">
												<tr data-id="86">
													<td><img width="150" height="91"
														src="${pageContext.request.contextPath }/assets/user/images/iconSupplier/${productOfSupplier.logoSupplier }"
														class="attachment-full size-full" alt="" />
													</td>
													<td>${productOfSupplier.supplierName }</td>
													<td class="price">${productOfSupplier.price }&#8363;</td>
													<td><a
														href="${productOfSupplier.linkToSupplier }"
														target="_blank">Visit Store Website</a>
													</td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
							</div>
							<div role="tabpanel" class="tab-pane" id="description">
								<div class="white-block-content">
									<h2>Get a Superb Dell Alienware 13â Notebook/Laptop.</h2>
									<p>Testing performed with in-box standard AFC charger.
										Charge percentage / time to charge based on charging starting
										at 0% battery charge.</p>
									<p>Usage time based on estimates. Battery power consumption
										depends on factors such as network configuration, carrier
										network, signal strength, operating tempurature, features
										selected, vibrate mode, backlight settings, browser use,
										frequency of calls, and voice, data and other
										application-usage patterns. Your results may vary.</p>
								</div>
							</div>
							<div role="tabpanel" class="tab-pane" id="reviews">
								<div class="comments">
									<div class="white-block-content">
										<div class="media ">
											<div class="media-left">
												<a href="javascript:;"> <img
													src="../../wp-content/uploads/2015/08/2_avatar.jpg"
													class="media-object img-circle comment-avatar" title=""
													alt="">
												</a>
											</div>
											<div class="media-body">
												<div class="pull-left">
													<h4>Luis Brown</h4>
													<span>34 mins ago</span> <i class="fa fa-star"></i><i
														class="fa fa-star"></i><i class="fa fa-star"></i><i
														class="fa fa-star"></i><i class="fa fa-star"></i>
												</div>
												<div class="clearfix"></div>
												<hr />
												<p>Sed ut perspiciatis unde omnis iste natus error sit
													voluptatem accusantium doloremque laudantium, totam rem
													aperiam, eaque ipsa quae ab illo inventore veritatis et
													quasi architecto beatae vitae dicta sunt explicabo. Nemo
													enim ipsam voluptatem quia voluptas sit aspernatur aut.</p>
											</div>
										</div>
										<div class="media ">
											<div class="media-left">
												<a href="javascript:;"> <img
													src="../../wp-content/uploads/2015/08/1_avatar.jpg"
													class="media-object img-circle comment-avatar" title=""
													alt="">
												</a>
											</div>
											<div class="media-body">
												<div class="pull-left">
													<h4>John Malic</h4>
													<span>34 mins ago</span> <i class="fa fa-star"></i><i
														class="fa fa-star"></i><i class="fa fa-star"></i><i
														class="fa fa-star"></i><i class="fa fa-star-o"></i>
												</div>
												<div class="clearfix"></div>
												<hr />
												<p>Natus error sit voluptatem accusantium doloremque
													laudantium, totam rem aperiam, eaque ipsa quae ab illo
													inventore veritatis et quasi architecto beatae vitae dicta
													sunt explicabo.</p>
											</div>
										</div>
									</div>
									<div class="white-title clearfix">
										<div class="white-block-border clearfix">
											<div class="pull-left">
												<i class="fa fa-list-ul"></i>
												<h3>Leave Review</h3>
											</div>
										</div>
									</div>
									<div class="white-block-content">
										<div id="respond" class="comment-respond">
											<h3 id="reply-title" class="comment-reply-title">
												<small><a rel="nofollow"
													id="cancel-comment-reply-link" href="index.html#respond"
													style="display: none;">or cancel reply</a></small>
											</h3>
											<form
												action="http://demo.powerthemes.club/themes/compare/wp-comments-post.php"
												method="post" id="commentform" class="comment-form"
												novalidate>
												<div class="input-group">
													<label for="comment">Comment <span class="required">*</span></label>
													<textarea class="form-control" id="comment" name="comment"></textarea>
												</div>
												<div class="row">
													<div class="col-md-5">
														<div class="input-group">
															<label for="author">Name <span class="required">*</span></label>
															<input type="text" class="form-control" id="author"
																name="author">
														</div>
													</div>
													<div class="col-md-5">
														<div class="input-group">
															<label for="email">Email <span class="required">*</span></label>
															<input type="text" class="form-control" id="email"
																name="email">
														</div>
													</div>
													<div class="col-md-2">
														<div class="input-group">
															<p class="comment-review">
																<label>Rating <span class="required">*</span></label> <input
																	type="hidden" id="review" name="review" value="" /> <input
																	type="hidden" name="post_id" value="287" /> <span
																	class="bottom-ratings"> <i class="fa fa-star-o"></i>
																	<i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i>
																	<i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i>
																</span>
															</p>
														</div>
													</div>
												</div>
												<p class="form-submit">
													<input name="submit" type="submit" id="submit"
														class="submit" value="SUBMIT REVIEW" /> <input
														type='hidden' name='comment_post_ID' value='287'
														id='comment_post_ID' /> <input type='hidden'
														name='comment_parent' id='comment_parent' value='0' />
												</p>
											</form>
										</div>
									</div>
								</div>
							</div>
							<div role="tabpanel" class="tab-pane" id="tags">
								<div class="white-block-content">
									<a
										href="http://demo.powerthemes.club/themes/compare/search-page/product-tag/gaming/">gaming</a>,
									<a
										href="http://demo.powerthemes.club/themes/compare/search-page/product-tag/laptop/">laptop</a>,
									<a
										href="http://demo.powerthemes.club/themes/compare/search-page/product-tag/notebook/">notebook</a>
								</div>
							</div>
							<div role="tabpanel" class="tab-pane" id="categories">
								<div class="white-block-content">
									<a
										href="http://demo.powerthemes.club/themes/compare/search-page/product-cat/brand-computers/">Brand
										Computers</a>, <a
										href="http://demo.powerthemes.club/themes/compare/search-page/product-cat/computer/">Computer</a>,
									<a
										href="http://demo.powerthemes.club/themes/compare/search-page/product-cat/computer-cases/">Computer
										Cases</a>, <a
										href="http://demo.powerthemes.club/themes/compare/search-page/product-cat/laptop-bags/">Laptop
										Bags</a>, <a
										href="http://demo.powerthemes.club/themes/compare/search-page/product-cat/laptops/">Laptops</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-3" style="margin-top: 20px;">
				<div class="widget white-block owl-parent widget_compare_brands" style="margin-bottom: 40px;">
					<div class="widget-title white-title clearfix">
						<div class="white-block-border clearfix">
							<div class="pull-left">
								<i class="fa fa-list-ul"></i>
								<h3>Top Brands</h3>
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
							<a
								href="http://demo.powerthemes.club/themes/compare/search-page/product-brand/dellar/"><img
								width="150" height="77"
								src="../../wp-content/uploads/2015/08/criaset.jpg"
								class="attachment-full size-full" alt="" /></a><a
								href="http://demo.powerthemes.club/themes/compare/search-page/product-brand/aplle/"><img
								width="150" height="85"
								src="../../wp-content/uploads/2015/08/orfane.jpg"
								class="attachment-full size-full" alt="" /></a>
						</div>
						<div>
							<a
								href="http://demo.powerthemes.club/themes/compare/search-page/product-brand/sasung/"><img
								width="150" height="110"
								src="../../wp-content/uploads/2015/08/axiomate.jpg"
								class="attachment-full size-full" alt="" /></a><a
								href="http://demo.powerthemes.club/themes/compare/search-page/product-brand/lagrand/"><img
								width="150" height="57"
								src="../../wp-content/uploads/2015/08/wagoon.jpg"
								class="attachment-full size-full" alt="" /></a>
						</div>
						<div>
							<a
								href="http://demo.powerthemes.club/themes/compare/search-page/product-brand/panaphonic/"><img
								width="150" height="73"
								src="../../wp-content/uploads/2015/08/celestine.jpg"
								class="attachment-full size-full" alt="" /></a><a
								href="http://demo.powerthemes.club/themes/compare/search-page/product-brand/hps/"><img
								width="150" height="92"
								src="../../wp-content/uploads/2015/08/astorium.jpg"
								class="attachment-full size-full" alt="" /></a>
						</div>
						<div>
							<a
								href="http://demo.powerthemes.club/themes/compare/search-page/product-brand/chartel/"><img
								width="150" height="55"
								src="../../wp-content/uploads/2015/08/ignatus.jpg"
								class="attachment-full size-full" alt="" /></a><a
								href="http://demo.powerthemes.club/themes/compare/search-page/product-brand/bross/"><img
								width="150" height="66"
								src="../../wp-content/uploads/2015/08/yolando.jpg"
								class="attachment-full size-full" alt="" /></a>
						</div>
					</div>
				</div>
				<div class="widget white-block owl-parent widget_compare_banner" style="margin-bottom: 40px;">
					<a
						href="http://demo.powerthemes.club/themes/compare/product/dell-ultrasharp-monitor-27-5k-ultra-hd-resolution/"
						target="_blank"><img
						src="../../wp-content/uploads/2015/08/banner1.jpg"
						class="img-responsive" alt=""></a>
				</div>
				<div class="widget white-block owl-parent widget_tag_cloud">
					<div class="widget-title white-title clearfix">
						<div class="white-block-border clearfix">
							<div class="pull-left">
								<i class="fa fa-list-ul"></i>
								<h3>Tags</h3>
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
					<div class="tagcloud">
						<a href="http://demo.powerthemes.club/themes/compare/tag/cipit/"
							class="tag-cloud-link tag-link-340 tag-link-position-1"
							style="font-size: 13px;">cipit</a> <a
							href="http://demo.powerthemes.club/themes/compare/tag/codis/"
							class="tag-cloud-link tag-link-341 tag-link-position-2"
							style="font-size: 13px;">codis</a> <a
							href="http://demo.powerthemes.club/themes/compare/tag/em/"
							class="tag-cloud-link tag-link-342 tag-link-position-3"
							style="font-size: 13px;">em</a> <a
							href="http://demo.powerthemes.club/themes/compare/tag/et/"
							class="tag-cloud-link tag-link-343 tag-link-position-4"
							style="font-size: 13px;">et</a> <a
							href="http://demo.powerthemes.club/themes/compare/tag/featured/"
							class="tag-cloud-link tag-link-365 tag-link-position-5"
							style="font-size: 13px;">featured</a> <a
							href="http://demo.powerthemes.club/themes/compare/tag/hi-res/"
							class="tag-cloud-link tag-link-344 tag-link-position-6"
							style="font-size: 13px;">hi-res</a> <a
							href="http://demo.powerthemes.club/themes/compare/tag/image/"
							class="tag-cloud-link tag-link-345 tag-link-position-7"
							style="font-size: 13px;">Image</a> <a
							href="http://demo.powerthemes.club/themes/compare/tag/lor/"
							class="tag-cloud-link tag-link-346 tag-link-position-8"
							style="font-size: 13px;">lor</a> <a
							href="http://demo.powerthemes.club/themes/compare/tag/participat/"
							class="tag-cloud-link tag-link-347 tag-link-position-9"
							style="font-size: 13px;">participat</a> <a
							href="http://demo.powerthemes.club/themes/compare/tag/picture/"
							class="tag-cloud-link tag-link-348 tag-link-position-10"
							style="font-size: 13px;">picture</a> <a
							href="http://demo.powerthemes.club/themes/compare/tag/sed/"
							class="tag-cloud-link tag-link-349 tag-link-position-11"
							style="font-size: 13px;">sed</a> <a
							href="http://demo.powerthemes.club/themes/compare/tag/sticky/"
							class="tag-cloud-link tag-link-364 tag-link-position-12"
							style="font-size: 13px;">sticky</a> <a
							href="http://demo.powerthemes.club/themes/compare/tag/ut/"
							class="tag-cloud-link tag-link-350 tag-link-position-13"
							style="font-size: 13px;">ut</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>