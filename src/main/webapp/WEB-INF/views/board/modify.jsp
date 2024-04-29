<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../includes/header.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<div class="row">
	<div class="col-lg-12">
		<h1 class="page-header">수정 / 삭제 페이지</h1>
	</div>
	<!-- /.col-lg-12 -->
</div>
<!-- /.row -->
<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">Board Modify page</div>
			<!-- /.panel-heading -->
			<div class="panel-body">
				<form role="form" action="/board/modify" method="post">
					<input type="hidden" name="pageNum" value="${cri.pageNum }">
					<input type="hidden" name="ampunt" value="${cri.amount }">
					<input type="hidden" name="type" value="${pageMaker.cri.type}"> 
					<input type="hidden" name="keyword" value="${pageMaker.cri.keyword}">
					<div class="form-group">
						<label>Bno</label> <input name="bno" class="form-control"
							value="${board.bno }" readonly="readonly">
					</div>
					<div class="form-group">
						<label>Title</label> <input name="title" class="form-control"
							value="<c:out value='${board.title }'/>">
					</div>
					<div class="form-group">
						<label>Text Area</label>
						<textarea name="content" rows="3" class="form-control">${board.content }</textarea>
					</div>
					<div class="form-group">
						<label>Writer</label> <input name="writer" class="form-control"
							value="${board.writer }" readonly="readonly">
					</div>
					<button type="submit" data-oper='modify' class="btn btn-default">Modify</button>
					<button type="submit" data-oper='remove' class="btn btn-danger">Remove</button>
					<button type="submit" data-oper='list' class="btn btn-info">List</button>
				</form>
			</div>
			<!-- /.panel-body -->
		</div>
		<!-- /.panel -->
	</div>
	<!-- /.col-lg-12 -->
</div>
<!-- /.row -->
<script>
 	$(document).ready(function(){
 		
 		let formObj = $("form");
 		
 		$('button').on("click", function(e){
 			e.preventDefault();  //<form role="form" action="/board/modify" method="post"> 이동 중지
 			
 			let operation = $(this).data("oper");
 			
 			if(operation === 'remove'){
 				formObj.attr("action", "/board/remove"); 				
 			}else if(operation === 'list'){
 				formObj.attr("action", "/board/list").attr("method","get");
 				
 				let pageNumTag = $("input[name='pageNum']").clone();
 				let amountTag = $("input[name='amount']").clone();
 				let typeTag = $("input[name='type']").clone();
 				let keywordTag = $("input[name='keyword']").clone();
 				
 				formObj.empty();
 				
 				formObj.append(pageNumTag);
 				formObj.append(amountTag);
 				formObj.append(typeTag);
 				formObj.append(keywordTag);
 			}
 			formObj.submit();
 		});
 		
 	});
 </script>



<%@ include file="../includes/footer.jsp"%>