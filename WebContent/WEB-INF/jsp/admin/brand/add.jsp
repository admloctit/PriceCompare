<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form"%>

<section class="content-header">
	<div class="row bg-title">
		<div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
			<h4 class="page-title">Add new brand</h4>
		</div>
		<div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
			<ol class="breadcrumb">
				<li><a
					href="${pageContext.request.contextPath }/admin/welcome.html">Dashboard</a></li>
				<li class="active">New brand</li>
			</ol>
		</div>
		<!-- /.col-lg-12 -->
	</div>
</section>
<section class="content" style="min-height: 815px;">
	<div class="row">
		<div class="col-lg-12">
			<!-- form start -->
			<s:form method="post" commandName="brand"
				class="form-horizontal form-element"
				action="${pageContext.request.contextPath }/admin/brand/add.html">
				<div class="box-body">
					<div class="form-group row">
						<label class="col-2 col-form-label"> Name</label>

						<div class="col-sm-10">
							<s:input path="name" class="form-control" id="name"
								placeholder="Dell" />
							<h5 class="text-red">
								<s:errors path="name"></s:errors>
							</h5>
							<!-- <input type="text" class="form-control" id="inputName"
									placeholder="Category Name"> -->
						</div>
					</div>
				</div>
				<!-- /.box-body -->
				<div class="box-footer">
					<li class="btn btn-default"><a
						href="${pageContext.request.contextPath }/admin/brand.html">
							Cancel</a></li>

					<button type="submit" class="btn btn-info pull-right"
						formaction="${pageContext.request.contextPath }/admin/brand/add.html">Save</button>
				</div>
				<!-- /.box-footer -->
			</s:form>
		</div>
		<!-- /.box -->
		<!-- general form elements disabled -->
	</div>

</section>
