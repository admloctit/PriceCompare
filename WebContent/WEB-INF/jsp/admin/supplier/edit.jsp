<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form"%>

<
<section class="content-header">
	<div class="row bg-title">
		<div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
			<h4 class="page-title">Edit Supplier</h4>
		</div>
		<div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
			<ol class="breadcrumb">
				<li><a
					href="${pageContext.request.contextPath }/admin/welcome.html">Dashboard</a></li>
				<li class="active">Edit Supplier</li>
			</ol>
		</div>
		<!-- /.col-lg-12 -->
	</div>
</section>
<section class="content">
	<div class="white-box" style="min-height: 815px;">
		<s:form method="post" commandName="supplier"
			class="form-horizontal form-element"
			action="${pageContext.request.contextPath }/admin/supplier/edit.html">
			<div class="box-body">
				<div class="form-group row">
					<label class="col-2 col-form-label">Id</label>
					<div class="col-sm-10">
						<s:input path="id" readonly="true" id="id" class="form-control" />
					</div>

				</div>
				<div class="form-group row">
					<label class="col-2 col-form-label"> Name</label>

					<div class="col-sm-10">
						<s:input path="name" class="form-control" id="name"
							placeholder="Phong Vu" />
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
					href="${pageContext.request.contextPath }/admin/supplier.html">
						Cancel</a></li>

				<button type="submit" class="btn btn-info pull-right">Save</button>
			</div>
			<!-- /.box-footer -->
		</s:form>
	</div>
</section>