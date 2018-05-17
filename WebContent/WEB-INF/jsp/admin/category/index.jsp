<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<section class="content-header">
	<div class="row bg-title">
		<div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
			<h4 class="page-title">Category List</h4>
		</div>
		<div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
			<ol class="breadcrumb">
				<li><a
					href="${pageContext.request.contextPath }/admin/welcome.html">Dashboard</a></li>
				<li class="active">Category List</li>
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
					<c:forEach var="category" items="${categories }">
						<tr class="gradeA" role="row">
							<td>${category.id }</td>
							<td>${category.name }</td>
							<td><a
								href="${pageContext.request.contextPath }/admin/category/edit/${category.id }.html">Edit</a>
								| <a
								href="${pageContext.request.contextPath }/admin/category/delete/${category.id }.html"
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



