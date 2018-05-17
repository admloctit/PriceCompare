<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form"%>

<div class="row bg-title">
	<div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
		<h4 class="page-title">Profile page</h4>
	</div>
	<div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
		<ol class="breadcrumb">
			<li><a
				href="${pageContext.request.contextPath }/admin/welcome.html">Dashboard</a></li>

			<li class="active">Profile page</li>
		</ol>
	</div>
</div>
<!-- /.row -->
<!-- .row -->
<div class="row">
	<div class="col-md-4 col-xs-12">
		<div class="white-box">
			<div class="user-bg">
				<img width="100%" alt="user"
					src="${pageContext.request.contextPath }/assets/admin/plugins/images/large/img1.jpg">
				<div class="overlay-box">
					<div class="user-content">
						<a href="javascript:void(0)"><img
							src="${pageContext.request.contextPath }/assets/user/images/accounts/${user.photo }"
							class="thumb-lg img-circle" alt="img"></a>
						<h4 class="text-white">${user.username }</h4>
						<h5 class="text-white">${user.email }</h5>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="col-md-8 col-xs-12">
		<div class="white-box">
			<ul class="nav customtab nav-tabs" role="tablist">

				<li role="presentation" class="nav-item"><a href="#profile"
					class="nav-link" aria-controls="profile" role="tab"
					data-toggle="tab" aria-expanded="false"><span
						class="visible-xs"><i class="fa fa-user"></i></span> <span
						class="hidden-xs">Profile</span></a></li>
				<li role="presentation" class="nav-item"><a href="#settings"
					class="nav-link" aria-controls="messages" role="tab"
					data-toggle="tab" aria-expanded="false"><span
						class="visible-xs"><i class="fa fa-cog"></i></span> <span
						class="hidden-xs">Setting</span></a></li>
			</ul>
			<div class="tab-content">

				<div class="tab-pane" id="profile">
					<div class="row">
						<div class="col-md-4 col-xs-8 b-r">
							<strong>Full Name</strong> <br>
							<p class="text-muted">${user.firstName }${user.lastName }</p>
						</div>
						<div class="col-md-4 col-xs-8 b-r">
							<strong>Mobile</strong> <br>
							<p class="text-muted">+ ${user.phone }</p>
						</div>
						<div class="col-md-4 col-xs-8 b-r">
							<strong>Email</strong> <br>
							<p class="text-muted">${user.email }</p>
						</div>
						<div class="col-md-4 col-xs-8 b-r">
							<strong>Birthday</strong> <br>
							<p class="text-muted">${user.birthday }</p>
						</div>
						<div class="col-md-4 col-xs-8 b-r">
							<strong>Gender</strong> <br>
							<p class="text-muted">${user.gender }</p>
						</div>
						<div class="col-md-4 col-xs-8 b-r">
							<strong>Address</strong> <br>
							<p class="text-muted">${user.address}</p>
						</div>
					</div>
					<hr>
				</div>
				<div class="tab-pane" id="settings">
					<s:form method="post" commandName="user"
						enctype="multipart/form-data"
						action="${pageContext.request.contextPath }/admin/update.html"
						class="form-horizontal form-material">
						<s:hidden path="id" />
						<s:hidden path="password" />
						<s:hidden path="enabled" />
						<div class="form-group">
							<label class="col-md-12">Username</label>
							<div class="col-md-12">
								<s:input type="text" class="form-control form-control-line"
									path="username" readonly="true"/>
							</div>
						</div>
						<div class="form-group">
							<label class="col-md-12">First Name</label>
							<div class="col-md-12">
								<s:input type="text" class="form-control form-control-line"
									path="firstName" />
							</div>
						</div>
						<div class="form-group">
							<label class="col-md-12">Last Name</label>
							<div class="col-md-12">
								<s:input type="text" class="form-control form-control-line"
									path="lastName" />
							</div>
						</div>
						<div class="form-group">
							<label for="example-email" class="col-md-12">Email</label>
							<div class="col-md-12">
								<s:input path="email" type="email"
									class="form-control form-control-line" name="example-email"
									id="example-email" />
							</div>
						</div>
						<%-- 						<div class="form-group">
							<label class="col-md-12">Password</label>
							<div class="col-md-12">
								<s:input path="password" type="password" value="password"
									class="form-control form-control-line" />
							</div>
						</div> --%>
						<div class="form-group">
							<label class="col-md-12">Phone No</label>
							<div class="col-md-12">
								<s:input path="phone" type="text"
									class="form-control form-control-line" />

							</div>
						</div>
						<div class="form-group">
							<label class="col-md-12">Birthday</label>
							<div class="col-md-12">
								<s:input path="birthday" type="text"
									class="form-control form-control-line" />

							</div>
						</div>
						<div class="form-group">
							<label class="col-md-12">Gender</label>
							<div class="col-md-12">
								<s:input path="gender" type="text"
									class="form-control form-control-line" />

							</div>
						</div>
						<div class="form-group">
							<label class="col-md-12">Address</label>
							<div class="col-md-12">
								<s:textarea path="address" rows="3"
									class="form-control form-control-line"></s:textarea>
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-12 ol-md-12 col-xs-12">
								<s:hidden path="photo" />
								<div class="white-box">
									<h3 class="box-title">Upload Image</h3>
									<input type="file" id="input-file-now-custom-1" class="dropify" name="image"
										data-default-file="${pageContext.request.contextPath }/assets/user/images/accounts/${user.photo }" />
								</div>
								<p class="help-block">${errorUpload }</p>

							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-12">
								<button type="submit" class="btn btn-success">Update
									Profile</button>
							</div>
						</div>
					</s:form>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- /.row -->