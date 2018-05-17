<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<div class="row bg-title">
	<div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
		<h4 class="page-title">Ecom-Dashboard</h4>
	</div>
	<div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">

		<ol class="breadcrumb">
			<li><a href="#">Dashboard</a></li>
			<li class="active">Ecom-Dashboard</li>
		</ol>
	</div>
	<!-- /.col-lg-12 -->
</div>
<!-- /.row -->
<div class="row">
	<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
		<div class="white-box">
			<h3 class="box-title">
				<i class="ti-shopping-cart text-success"></i> Total Supplier
			</h3>

			<h1>${countSupplier }</h1>
		</div>

	</div>
		<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
		<div class="white-box">
			<h3 class="box-title">
				<i class="ti-shopping-cart text-success"></i> Total Brand
			</h3>

			<h1>${countBrand }</h1>
		</div>

	</div>
		<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
		<div class="white-box">
			<h3 class="box-title">
				<i class="ti-shopping-cart text-success"></i> Total Category
			</h3>

			<h1>${countCategory }</h1>
		</div>

	</div>
		<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
		<div class="white-box">
			<h3 class="box-title">
				<i class="ti-shopping-cart text-success"></i> Total Product
			</h3>

			<h1>${countProduct }</h1>
		</div>

	</div>
</div>



