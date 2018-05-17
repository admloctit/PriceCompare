<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<section class="content-header">
	<div class="row bg-title">
		<div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
			<h4 class="page-title">Product List</h4>
		</div>
		<div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
			<ol class="breadcrumb">
				<li><a
					href="${pageContext.request.contextPath }/admin/welcome.html">Dashboard</a></li>
				<li class="active">Product List</li>
			</ol>
		</div>
		<!-- /.col-lg-12 -->
	</div>
</section>

<section class="content" style="min-height: 815px;">
	<div class="white-box">
	<h4 class="text-red">${errors }</h4>
	
		<div class="table-responsive">
			<table class="table table-striped no-footer" id="myTable">
					<thead>
						<tr>
							<th>ID</th>
							<th>Name</th>
							<th>Code</th>
							<th>Photo</th>
							<th>Price</th>
							<th>Category Name</th>
							<th>Supplier Name</th>
							<th>Brand Name</th>
							<th>Actions</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="product" items="${products }">
							<tr class=odd role="row">
								<td class="sorting_1">${product.id}</td>
								<td>${product.name}</td>
								<td>${product.code}</td>
								<td><img
									src="${pageContext.request.contextPath }/assets/user/images/products/${product.photo }"
									alt="iMac" width="80" height="60"></td>
								<td><fmt:formatNumber pattern="#,##0" value="${product.price }"></fmt:formatNumber> &#x20ab;</td>
								<td>${product.category.name}</td>
								<td>${product.supplier.name}</td>
								<td>${product.brand.name}</td>
								<td><a
									href="${pageContext.request.contextPath }/admin/product/edit/${product.id }.html">Edit</a>
									| <a
									href="${pageContext.request.contextPath }/admin/product/delete/${product.id }.html"
									onclick="return confirm('Are you sure?')">Delete</a></td>
							</tr>
						</c:forEach>


					</tbody>
				</table>
		</div>
	</div>


</section>



