<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="../includes/header.jsp"%>
<div id="page-wrapper">
	<div class="row">
		<div class="col-lg-12">
			<h1 class="page-header">Board List</h1>
		</div>
		<!-- /.col-lg-12 -->
	</div>
	<!-- /.row -->
	<div class="row">
		<div class="col-lg-12">
			<div class="panel panel-default">
				<div class="panel-heading">Board Register Page</div>
				<!-- /.panel-heading -->
				<div class="panel-body">
					<form role="form" action="/board/register" method="post">
						<div class="form-group">
							<label>Title</label> 
							<input class="form-control" name="title">
						</div>
						<div class="form-group">
							<label>Text Area</label> 
							<textarea rows="3" class="form-control" name="content"></textarea>
						</div>
						<div class="form-group">
							<label>Writer</label> 
							<input class="form-control" name="writer">
						</div>
						
						<button type="submit" class="btn btn-default">Submit</button>
						<button type="submit" class="btn btn-warn">Reset</button>
					</form>
				</div>
				<!-- /.panel-body -->
			</div>
			<!-- /.panel -->
		</div>
		<!-- /.col-lg-12 -->
	</div>
	<!-- /.row -->

</div>
<!-- /#page-wrapper -->

</div>
<!-- /#wrapper -->

<%@include file="../includes/footer.jsp"%>