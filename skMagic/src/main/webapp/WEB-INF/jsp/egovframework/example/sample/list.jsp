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
    <title>템플릿</title>
	<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
  </head>
  <script>

	$(document).ready(function(){
		
	});
	function fn_page(pageIndex){
		var test = $("#search_name").val();
		location.href = "<c:url value='/list.do?pageIndex="+pageIndex+"&search_name="+test+"'/>" 
	}
	function fn_goAdd(){
		 location.href = "<c:url value='/add.do'/>" 
	}
	// 1.모두 체크
	  function allChk(obj){
	      var chkObj = document.getElementsByName("chk");
	      var rowCnt = chkObj.length - 1;
	      var check = obj.checked;
	      if (check) {﻿
	          for (var i=0; i<=rowCnt; i++){
	           if(chkObj[i].type == "checkbox")
	               chkObj[i].checked = true;
	          }
	      } else {
	          for (var i=0; i<=rowCnt; i++) {
	           if(chkObj[i].type == "checkbox"){
	               chkObj[i].checked = false;
	           }
	          }
	      }
	  } 

	﻿ ﻿ //체크 삭제 
	function fn_userDel(){
		
		var memberChk = document.getElementsByName("chk");
		var chked = false;
		var indexid = false;
		var checkArray = new Array(); 
		for(i = 0; i <memberChk.length; i++){
			if(memberChk[i].checked){
				checkArray.push(memberChk[i].value);
				indexid = true;
			}
		}
		
		if(!indexid){
			alert("삭제할 사용자를 체크하세요");
			return;
		}
		var agree = confirm("삭제하시겠습니까");
		
		if(agree){
			$.ajax({
				type:"POST",
				url:"<c:url value='delAjax.do'/>",
				data :{checkArray : checkArray},
				async: false,
				success:function(data){
					alert("삭제되었습니다.");
					location.href = "<c:url value='list.do'/>" 
				}
			});
		}
	}
	
	function fn_goView(mNo){
		location.href = "<c:url value='/view.do?mNo="+mNo+"'/>"
	}
	
</script>
  <body>
  	<div class="panel panel-default">
		<div>
		<!--검색  -->
		 <form id="searchForm">
		 	<fieldset>
		 		<legend>
		 			<table class="table">
		 				<colgroup>
		 					<col style="width:100px"/>
		 					<col style="width:100px"/>
		 					<col style="width:100px"/>
							</col>
							<col style="width:100px"/>
		 				</colgroup>
		 			
		 				<tbody class="table table-striped">
		 				</tbody>
		 			</table>
		 		</legend>
		 	
		 	</fieldset>
		 </form>
	</div>
	<!-- //검색 -->
	
	<div>
		<input type="button" class="btn btn-primary" onclick ="fn_goAdd()" value="add"/>
		<input type="button" class="btn btn-danger" onclick ="fn_userDel()" value="del"/>
	</div>
	<table class="table-bordered">
		<colgroup>
			<%-- <col width="10%">
			<col width="10%">
			<col width="13%">
			<col width="10%">
			<col width="10%">
			<col width="13%"> --%>
		</colgroup>
		<thead>
		<tr>
			<th><input type="checkbox" id="chkAll" name="chkAll" onclick="allChk(this);"/></th>
			<th scope="col">NO</th>
			<th scope="col">고유번호</th>
			<th scope="col">이름</th>
			<th scope="col">성별</th>
			<th scope="col">나이</th>
			<th scope="col">가입일</th>
		</tr>
		</thead>
		
		<tbody>
			<c:forEach items="${list}" var ="data" varStatus="status">
			<tr>
				<td><input type="checkbox" id="chk" name="chk" value="${data.no}" /></td>
				<td><c:out value="${data.no}"/></td>
			</tr>
			</c:forEach>
		
			<c:if test="${empty list }">
			<tr>
				<td colspan="6" >data null</td>	
			</tr>
			</c:if>		
		</tbody>
	</table>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
  </body>
</html>