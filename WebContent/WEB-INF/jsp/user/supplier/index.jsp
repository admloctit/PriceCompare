<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<section class="contact-page" style="margin-top: 80px">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="row">
					<c:forEach var="supplier" items="${suppliers }">
						<div class="col-sm-2">
							<div class="white-block">
								<div class="store-name">
									<a href="https://${supplier.linkHomePage }"> ${supplier.name } </a>
								</div>
								<div class="embed-responsive embed-responsive-4by3">
									<div class="store-logo">
										<a href="https://${supplier.linkHomePage }">
											<img width="150" height="85"
											src="${pageContext.request.contextPath }/assets/user/images/iconSupplier/${supplier.logo }"
											class="img-responsive" alt="">
										</a>
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