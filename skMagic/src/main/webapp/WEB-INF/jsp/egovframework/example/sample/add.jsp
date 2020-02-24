<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>add</title>
	<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.form/4.2.2/jquery.form.min.js" integrity="sha384-FzT3vTVGXqf7wRfy8k4BiyzvbNfeYjK+frTVqZeNDFl8woCbF0CYG6g2fMEFFo/i" crossorigin="anonymous"></script>
	
  </head>
  <script>

	$(document).ready(function(){
		
	});
	function fn_save(){
		//if(!fn_validationCheck()) return false;
		if(confirm("저장을")){
			$("#addForm").ajaxSubmit({
				type:"POST",
				url:"<c:url value='/addAjax.do'/>",
				//data:{},
				async: false,
				//dataType:JSON,
				success:function(data){
					alert("등록되었습니다.");
					location.href = "<c:url value='/egovSampleList.do'/>" 
				}
			});
		}
	}
</script>
 	<div id="contents">
		<div>
			<h3>add</h3>
			<form id ="addForm">
				<table>
					<tbody>
						<tr>
							<th>nm</th>
							<td><input type="text" id="nm" name="nm" value=""/></td>
						</tr>
						<tr>
							<th>id</th>
							<td><input type="text" id="id" name="id" value="" /></td>
						</tr>
					</tbody>
				</table>
			</form>	
			
			<div>
				<a href="javascript:void(0);" onclick="fn_save();">등록</a>
				<a href="javascript:void(0);" onclick="fn_list();">목록</a>
			</div>
		</div>
</html>