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
          <div class="ibox-content m-b-sm border-bottom">
            <div class="row">
               <form class="form-horizontal" action="/book/bookList" method="post">
                    <div class="col-sm-4">
                        <div class="form-group">
                            <label class="control-label" for="bookName">课程名称</label>
                            <input type="text" id="bookName" name="bookName"  placeholder="课程分类名称" class="form-control" style="width: 300px">
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="form-group">
                            <label class="control-label" for="bookClassName">课程分类名称</label>
                            <!-- <input type="text" id="order_id" name="bookClassName"  placeholder="课程分类名称" class="form-control" style="width: 300px"> -->
                            <select class="form-control m-b" style="width: 290px" name="bookClassName">
                        	        <c:forEach var="dto"  items="${bookClassSelect}">
                                            <option value="${dto.id}">${dto.bookClassName}</option>
                                    </c:forEach>
                            </select>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="form-group">
                            <button class="btn btn-sm btn-primary  m-t-n-xs" type="reset" ><strong>重置</strong></button>
                            <button class="btn btn-sm btn-primary  m-t-n-xs" type="submit" ><strong>查询</strong></button>
                        </div>
                    </div>
                  </form>
                </div>
          </div>
          <div class="row">
              	<div class="col-lg-12">
                    <div class="ibox">
                        <div class="ibox-title">
                        <strong>课程列表</strong>
                        </div>
                        <div class="ibox-content">
                        	<table class="footable table table-stripped toggle-arrow-tiny" data-page-size="15">
                        		<thead>
                                <tr>
                                    <th>ID</th>
                                    <th data-hide="phone">课程名称</th>
                                    <th data-hide="phone">分类</th>
                                    <th data-hide="phone">作者</th>
                                    <th data-hide="phone">创建时间</th>
                                    <th data-hide="phone">更新时间</th>
                                    <th class="text-crent">操作</th>
                                </tr>
                                </thead>
                                <tbody>
                                   <c:forEach var="resource"  items="${bookList}">
                                	<tr>
	                                    <td>${resource.id}</td>
	                                    <td>${resource.bookName}</td>
	                                    <td>${resource.bookClassName}</td>
	                                    <td>${resource.userName}</td>
	                                    <td>${resource.createTime}</td>
	                                    <td>${resource.updateDetailTime}</td>
	                                    <td class="text-crent">
	                                        <div class="btn-group">
	                                            <a onclick="view(${resource.id});">View</a> |
	                                        </div>
	                                    </td>
                                    </tr>
                                   </c:forEach>
                                </tbody>
                                <tfoot>
	                                <tr>
	                                    <td colspan="8">
	                                        <ul class="pagination pull-right"></ul>
	                                    </td>
	                                </tr>
                                </tfoot>
                        	</table>
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

        });
    	  	  
   	  	  function view(data){
   	  		window.location.href="/bookClass/bookClassView?bookClassId="+data
   	      }
   	  	  

    </script>
</html>
</html>