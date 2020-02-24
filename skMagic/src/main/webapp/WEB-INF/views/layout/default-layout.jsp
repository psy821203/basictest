<%@ page pageEncoding="utf-8" session="false"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
  	<head>
    <tiles:insertAttribute name="head" ignore="true" />
    <title>Insert title here</title>
    </head>
    <body class="hold-transition sidebar-mini layout-fixed sidebar-collapse">
    	<tiles:insertAttribute name="header" ignore="true" />
		<!-- wrapper -->
    	<div class="wrapper">  
			<tiles:insertAttribute name="menu" ignore="true" />  
			<!-- Content Wrapper. Contains page content -->
  			<div class="content-wrapper">
	        	<tiles:insertAttribute name="body" ignore="true" />
	        </div>
	        </div>
  			<!-- /.content-wrapper -->
	        <tiles:insertAttribute name="footer" ignore="true" />
    	</div>
		<!-- ./wrapper -->
    </body>
</html>