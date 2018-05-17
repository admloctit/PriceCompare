<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<section class="content-header">
	<div class="row bg-title">
		<div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
			<h4 class="page-title">Supplier List</h4>
		</div>
		<div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
			<ol class="breadcrumb">
				<li><a
					href="${pageContext.request.contextPath }/admin/welcome.html">Dashboard</a></li>
				<li class="active">Supplier List</li>
			</ol>
		</div>
		<!-- /.col-lg-12 -->
	</div>
</section>

<section class="content" style="min-height: 815px;">
	<div class="white-box">
	<h4 class="text-red">${errors }</h4>
	
		<div class="table-responsive">
			<table id="myTable" class="table table-striped no-footer" role="grid">
				<thead>
					<tr>
						<th>Id</th>
						<th>Name</th>
						<th>Option</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="supplier" items="${suppliers }">
						<tr class="gradeA" role="row">
							<td>${supplier.id }</td>
							<td>${supplier.name }</td>
							<td><a
								href="${pageContext.request.contextPath }/admin/supplier/edit/${supplier.id }.html">Edit</a>
								| <a
								href="${pageContext.request.contextPath }/admin/supplier/delete/${supplier.id }.html"
								onclick="return confirm('Are you sure?')">Delete</a></td>
						</tr>
					</c:forEach>
				</tbody>
				<tfoot>
					<tr>
						<th>Id</th>
						<th>Name</th>
						<th>Option</th>

					</tr>
				</tfoot>
			</table>
		</div>
	</div>


</section>



