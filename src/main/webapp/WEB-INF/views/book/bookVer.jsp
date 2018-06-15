<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

    <link href="../../../css/bootstrap.min.css" rel="stylesheet">
    <link href="../../../font-awesome/css/font-awesome.css" rel="stylesheet">

    <!-- FooTable -->
    <link href="../../../css/plugins/footable/footable.core.css" rel="stylesheet">
    
    <link href="../../../css/animate.css" rel="stylesheet">
    <link href="../../../css/style.css" rel="stylesheet">
    <link href="../../../css/plugins/datapicker/datepicker3.css" rel="stylesheet">

</head>

<body>
  <div id="wrapper">
  <nav class="navbar navbar-static-top" role="navigation" style="margin-bottom: 0">
     <div class="wrapper wrapper-content animated fadeInRight ecommerce">
          <div class="row">
              	<div class="col-lg-12">
                    <div class="ibox">
                        <div class="ibox-title">
							<strong>课程版本列表</strong>
                        </div>
                        <div class="ibox-content">
                        	<table class="footable table table-stripped toggle-arrow-tiny" data-page-size="15">
                        		<thead>
                                <tr>
                                    <th data-hide="phone">ID</th>
                                    <th data-hide="phone">课程编码</th>
                                    <th data-hide="phone">课程名称</th>
                                    <th data-hide="phone">版本号</th>
                                    <th data-hide="phone">提交时间</th>
                                    <th data-hide="phone">状态</th>
                                    <th data-hide="phone">审核时间</th>
                                    <th data-hide="phone">审核人</th>
                                    <th data-hide="phone">操作</th>
                                    
                                    
                                </tr>
                                </thead>
                                <tbody>
                                   <c:forEach var="resource"  items="${bookVerList}">
                                	<tr>
                                		<td>${resource.id}</td>
                                		<td>${resource.bookId}</td>
	                                    <td>${resource.bookName}</td>
	                                    <td>${resource.version}</td>
	                                    <td>${resource.createTime}</td>
	                                    <td>
	                                        <c:if test="${resource.status=='1'}">待审核</c:if>
                 							<c:if test="${resource.status=='2'}">审核中</c:if>
                 							<c:if test="${resource.status=='3'}">通过</c:if>
                 							<c:if test="${resource.status=='4'}">不通过</c:if>
	                                    </td>
	                                    <td>${resource.auditorTime}</td>
	                                    <td>${resource.auditorId}</td>
                    	                <td class="text-crent">
	                                        <div class="btn-group">
	                                            <a onclick="auditorIn(${resource.id},${resource.bookId});">审核中</a> 
	                                            <a onclick="auditorPass(${resource.id},${resource.bookId});">通过</a>
	                                            <a onclick="auditorOut(${resource.id},${resource.bookId});">不通过</a>
	                                        </div>
	                                    </td>
                                    </tr>
                                   </c:forEach>
                                </tbody>
                                <tfoot>
	                                <tr>
	                                    <td colspan="9">
	                                        <ul class="pagination pull-right"></ul>
	                                    </td>
	                                </tr>
                                </tfoot>
                        	</table>
                        </div>
                       <div class="modal-footer">
						  <button type="button" class="btn btn-default" data-dismiss="modal" id="closeWin">返回</button>
					   </div>
                    </div>
                </div>
          </div>
     </div>
   </nav>
   </div>
   
</body>
    <!-- Mainly scripts -->
    <script src="../../../js/jquery-2.1.1.js"></script>
    <script src="../../../js/bootstrap.min.js"></script>
    <script src="../../../js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="../../../js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

    <!-- Custom and plugin javascript -->
    <script src="../../../js/inspinia.js"></script>
    <script src="../../../js/plugins/pace/pace.min.js"></script>

    <!-- Data picker -->
    <script src="../../../js/plugins/datapicker/bootstrap-datepicker.js"></script>
    <!-- FooTable -->
    <script src="../../../js/plugins/footable/footable.all.min.js"></script>

    <!-- Page-Level Scripts -->
    <script>
        $(document).ready(function() {

            $('.footable').footable();
            
            $('#closeWin').click(function(){
            	window.location.href="/book/bookList"
            });
        });
        
	  	function auditorIn(data,bookId){
   	  		window.location.href="/book/auditor?status=2&id="+data+"&bookId="+bookId
   	    }
	  	
	  	function auditorPass(data,bookId){
   	  		window.location.href="/book/auditor?status=3&id="+data+"&bookId="+bookId
   	    }
	  	
	  	function auditorOut(data,bookId){
   	  		window.location.href="/book/auditor?status=4&id="+data+"&bookId="+bookId
   	    }
  </script>
</html>
</html>