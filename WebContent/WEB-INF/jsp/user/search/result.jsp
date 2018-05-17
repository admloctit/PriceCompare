<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<section class="contact-page">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="row">
					<c:forEach var="product" items="${productsSearchResult }">
						<div class="col-sm-4" style="width: 25%">
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