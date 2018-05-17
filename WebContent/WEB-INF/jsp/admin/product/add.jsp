<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form"%>

<section class="content-header">
	<div class="row bg-title">
		<div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
			<h4 class="page-title">Add new Product</h4>
		</div>
		<div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
			<ol class="breadcrumb">
				<li><a
					href="${pageContext.request.contextPath }/admin/welcome.html">Dashboard</a></li>
				<li class="active">New Product</li>
			</ol>
		</div>
		<!-- /.col-lg-12 -->
	</div>
</section>
<section class="content" style="min-height: 815px;">

	<div class="row">
		<div class="col-md-12">
			<div class="panel panel-info">
				<div class="panel-heading">Add new Product</div>
				<div class="panel-wrapper collapse in" aria-expanded="true">
					<div class="panel-body">
						<s:form method="post" commandName="product"
							enctype="multipart/form-data"
							action="${pageContext.request.contextPath }/admin/product/add.html">
							<div class="form-body">
								<h3 class="box-title">About Product</h3>
								<hr>
								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<label class="control-label">Product Name</label>
											<s:input path="name" type="text" id="firstName"
												class="form-control" placeholder="Lenovo IdeaPad " />
										</div>
									</div>
									<!--/span-->
									<div class="col-md-6">
										<div class="form-group">
											<label class="control-label">Product Code</label>
											<s:input path="code" type="text" class="form-control"
												placeholder="120S 11IAP N3350" />
										</div>
									</div>
<%-- 									<div class="col-md-6">
										<div class="form-group">
											<label class="control-label">Supplier</label>
											<s:select class="form-control"
												data-placeholder="Choose a Supplier" path="supplier.id"
												cssClass="form-control" items="${suppliers }" itemValue="id"
												itemLabel="name"></s:select>
										</div>
									</div> --%>

									<!--/span-->
								</div>
								<!--/row-->
								<!--/row-->
								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<label class="control-label">Category</label>
											<s:select class="form-control"
												data-placeholder="Choose a Category" path="category.id"
												cssClass="form-control" items="${categories }"
												itemValue="id" itemLabel="name"></s:select>
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group">
											<label class="control-label">Brand</label>
											<s:select class="form-control"
												data-placeholder="Choose a Brand" path="brand.id"
												cssClass="form-control" items="${brands }" itemValue="id"
												itemLabel="name"></s:select>
										</div>

									</div>
								</div>

								<h3 class="box-title m-t-40">Product Description</h3>
								<div class="row">
									<div class="col-md-12 ">
										<div class="form-group">
											<s:textarea path="description" class="form-control" rows="4"
												placeholder="High-end gaming desktop with up to 18-core Intel® processors and dual liquid-cooled NVIDIA GPUs. 
Re-engineered with new 2nd gen triad full-tower chassis now with tool-less graphics." />
										</div>
									</div>
								</div>
								<!--/row-->
								<div class="row">
<%-- 									<div class="col-md-6">
										<div class="form-group">
											<label class="control-label">Product Code</label>
											<s:input path="code" type="text" class="form-control"
												placeholder="120S 11IAP N3350" />
										</div>
									</div> --%>
									<%-- 									<div class="col-md-6">
										<div class="form-group">
											<label class="control-label">Product Price</label>
											<s:input path="price" type="text" class="form-control"
												placeholder="15.000.000VND" />
										</div>
									</div> --%>
									<!--/span-->
									<div class="col-md-6">
										<div class="form-group">
											<label>Product Chip</label>
											<s:input type="text" path="chip" class="form-control"
												placeholder="Intel Core i5 7th Gen" />
											<p class="help-block">
												<s:errors path="chip"></s:errors>
											</p>
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group">
											<label>CPU Speed</label>
											<s:input type="text" path="cpuSpeed" class="form-control"
												placeholder="2.8 GHz" />
											<p class="help-block">
												<s:errors path="cpuSpeed"></s:errors>
											</p>
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group">
											<label>Hard Drive</label>
											<s:input type="text" path="hardDrive" class="form-control"
												placeholder="128GB SSD" />
											<p class="help-block">
												<s:errors path="hardDrive"></s:errors>
											</p>
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group">
											<label>Ram</label>
											<s:input type="text" path="ram" class="form-control"
												placeholder="8Gb" />
											<p class="help-block">
												<s:errors path="ram"></s:errors>
											</p>
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group">
											<label>Graphics</label>
											<s:input type="text" path="graphics" class="form-control"
												placeholder="NVIDIA Geforce GTX 1050Ti" />
											<p class="help-block">
												<s:errors path="graphics"></s:errors>
											</p>
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group">
											<label>Resolution</label>
											<s:input type="text" path="resolution" class="form-control"
												placeholder="1980x1080" />
											<p class="help-block">
												<s:errors path="resolution"></s:errors>
											</p>
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group">
											<label>Lan</label>
											<s:input type="text" path="lan" class="form-control"
												placeholder="10/100/1000 Mbps" />
											<p class="help-block">
												<s:errors path="lan"></s:errors>
											</p>
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group">
											<label>Wifi</label>
											<s:input type="text" path="wifi" class="form-control"
												placeholder="802.11AC" />
											<p class="help-block">
												<s:errors path="wifi"></s:errors>
											</p>
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group">
											<label>Operating System</label>
											<s:input type="text" path="operatingSystem"
												class="form-control" placeholder="MC DOS" />
											<p class="help-block">
												<s:errors path="operatingSystem"></s:errors>
											</p>
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group">
											<label>Pin</label>
											<s:input type="text" path="pin" class="form-control"
												placeholder="6 Cells" />
											<p class="help-block">
												<s:errors path="pin"></s:errors>
											</p>
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group">
											<label>Weight</label>
											<s:input type="text" path="weight" class="form-control"
												placeholder="2.5kg" />
											<p class="help-block">
												<s:errors path="weight"></s:errors>
											</p>
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group">
											<label>Warranty Period</label>
											<s:input type="text" path="warrantyPeriod"
												class="form-control" placeholder="1 year" />
											<p class="help-block">
												<s:errors path="warrantyPeriod"></s:errors>
											</p>
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group">
											<label>Fingerprint Sensor</label>
											<s:checkbox path="fingerprintSensor" id="checkbox1" />
											<p class="help-block">
												<s:errors path="fingerprintSensor"></s:errors>
											</p>
											<%-- <label>Keyboard Light</label>
											<s:checkbox path="keyboardLight" id="checkbox1" />
											<p class="help-block">
												<s:errors path="keyboardLight"></s:errors>
											</p> --%>
										</div>
									</div>
																		<div class="col-md-6">
										<div class="form-group">
											<label>Keyboard Light</label>
											<s:checkbox path="keyboardLight" id="checkbox1" />
											<p class="help-block">
												<s:errors path="keyboardLight"></s:errors>
											</p>
										</div>
									</div>

									<!--/span-->
									<div class="col-sm-6 ol-md-6 col-xs-12">
										<h3 class="box-title">Upload Image</h3>
										<input type="file" id="input-file-now" class="dropify"
											name="image" />
									</div>
									<p class="help-block">${errorUpload }</p>
								</div>
								<hr>
							</div>
							<div class="form-actions m-t-40">
								<button type="submit" class="btn btn-success">
									<i class="fa fa-check"></i> Save
								</button>
								<a href="${pageContext.request.contextPath }/admin/product.html"
									type="button" class="btn btn-default">Cancel</a>
							</div>
						</s:form>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
