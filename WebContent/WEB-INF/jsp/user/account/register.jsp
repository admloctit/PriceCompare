<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<section>
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="white-block">
					<div class="white-title clearfix">
						<div class="white-block-border clearfix">
							<div class="pull-left">
								<i class="fa fa-list-ul"></i>
								<h3>Register Store</h3>
							</div>
						</div>
					</div>
					<div class="white-block-content">
						<form:form method="post" commandName="user" class="register-store"
								action="${pageContext.request.contextPath }/accountPanel/register.html">
							<div class="row">
								<div class="col-md-6">
									<div class="input-group">
										<label for="store_name">Username <span
											class="required">*</span>
										</label> 
										<form:input path="username" type="text" class="form-control"
											 placeholder="input username"/>
									</div>
								</div>
								<div class="col-md-6">
									<div class="input-group">
										<label for="store_url">Password<span
											class="required">*</span></label> 
										<form:input path="password" type="password" class="form-control"
											placeholder="input Password"/>	
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-6">
									<div class="input-group">
										<label for="store_contact_email">Your Email <span
											class="required">*</span>
										</label> 
										<form:input path="email" type="email" class="form-control"
											 placeholder="input your email"/>
									</div>
								</div>
								<div class="col-md-6">
									<div class="input-group">
										<label for="store_contact_phone">Your Phone <span
											class="required">*</span>
										</label> 
										<form:input path="phone" type="text" class="form-control" 
											placeholder="input your phone number"/>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-6">
									<div class="input-group"> 
										<label for="store_contact_name">
											First Name
										</label> 
										<form:input path="firstName" type="text" class="form-control" 
											placeholder="input your first name"/>
									</div>
								</div>
								<div class="col-md-6">
									<div class="input-group"> 
										<label for="store_contact_name">
											Last Name
										</label> 
										<form:input path="lastName" type="text" class="form-control" 
											placeholder="input your last name"/>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-6">
									<div class="input-group"> 
										<label for="store_package">Gender</label> 
										<form:select path="gender" id="store_package" class="form-control">
											<form:option selected="selected" value="Male">Male</form:option>
											<form:option value="Female">Female</form:option>
											<form:option value="Order">Order</form:option> 
										</form:select>
									</div>
								</div>
								<div class="col-md-6">
									<div class="input-group"> 
										<label for="store_contact_name">Birthday</label> 
										<form:input path="birthday" type="date" class="form-control"/>
									</div>
								</div>
								<div class="col-md-12">
									<div class="input-group"> 
										<label for="store_contact_name">
											Address
										</label> 
										<form:input path="address" type="text" class="form-control" 
											placeholder="input your Address"/>
									</div>
								</div>
								
								<div class="col-md-12">
									<input class="btn btn green" type="submit" value="CREATE MY ACCOUNT">
								</div>
							</div>
							<input type="hidden" name="captcha" value="1">
						</form:form>
						<div class="send_result"></div>
						<div class="payments"></div>
						<div class="page-content clearfix"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>