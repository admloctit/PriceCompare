<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<section>
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="white-block">
					<div class="white-title clearfix">
						<div class="white-block-border clearfix">
							<div class="pull-left">
								<i class="fa fa-list-ul"></i>
								<h3>Login Your Account</h3>
							</div>
						</div>
					</div>
					<div class="white-block-content">
						
						<form class="register-store" name="loginForm" action=<c:url value = "/account/process-login.html"/> method="post">
							<div class="row">
								<div class="col-md-6" style="margin-left: 25%;">
									<div class="input-group" style="margin-bottom: 15px;">
										<c:if test="${msg != null }">
											<label style="color: red;">${msg }</label>
											<br>
										</c:if>
										<label for="store_name">username</label> 
										<input type="text" class="form-control" name="username" placeholder="username">
									</div>
								</div>
								
							</div>
							<div class="row">
								<div class="col-md-6" style="margin-left: 25%">
									<div class="input-group" style="margin-bottom: 15px">
										<label for="store_xml_feed">Password</label> 
										<input type="password" class="form-control" name="password" placeholder="password">
										<p class="field-description"><a href="#">Fogot Password</a></p>
									</div>
								</div>
								<div class="col-md-6" style="margin-left: 25%">
									<input class="btn btn green" name="submit" type="submit" value="SIGN IN">
									<!-- <a class="btn btn green" href="javascript:;">SIGN IN</a> -->
									<p class="">
										<br>
										Not have Account? | 
										<a href="${pageContext.request.contextPath }/accountPanel/register.html">
											Register Here
										</a>
									</p>
								</div>
							</div>
						</form>
						<div class="send_result"></div>
						<div class="payments"></div>
						<div class="page-content clearfix"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>