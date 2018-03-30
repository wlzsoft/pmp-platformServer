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
    
    <link href="../../../css/plugins/daterangepicker/daterangepicker-bs3.css" rel="stylesheet">

</head>

<body>
  <div id="wrapper">
  <nav class="navbar navbar-static-top" role="navigation" style="margin-bottom: 0">
     <div class="wrapper wrapper-content animated fadeInRight ecommerce">
          <div class="ibox-content m-b-sm border-bottom">
            <div class="row">
             	 <form class="form-horizontal" action="/subBook/subBookList" method="get">
                    <div class="col-sm-4">
                        <div class="form-group">
                            <label class="control-label" for="username">用户名称</label>
                            <input type="text" style="width: 300px" id="order_id" name="username" value="" placeholder="用户名称" class="form-control">
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="form-group">
                            <label class="control-label" for="bookName">课程名称</label>
                            <input type="text" style="width: 300px" id="bookName" name="bookName" value="" placeholder="课程名称" class="form-control">
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="form-group">
                            <label class="control-label" for="vipLevel">会员级别</label>
                            <select class="form-control m-b" style="width: 290px" name="vipLevel">
                        	        <c:forEach var="dto"  items="${vipLevelSelect}">
                                            <option value="${dto.id}">${dto.levelName}</option>
                                    </c:forEach>
                            </select>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="form-group" id="data_1">
                            <label class="control-label" for="startTime">订阅开始时间</label>
                            <div class="input-group date">
                              <span class="input-group-addon"><i class="fa fa-calendar"></i></span><input type="text"  style="width: 260px" class="form-control" id="startTime" name="startTime" value="03/04/2014">
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="form-group" id="data_2">
                            <label class="control-label" for="endTime">订阅结束时间</label>
                            <div class="input-group date">
                              <span class="input-group-addon"><i class="fa fa-calendar"></i></span><input type="text"  style="width: 260px" class="form-control" id="endTime" name="endTime" value="03/04/2014">
                            </div>
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
                            <strong>用户订阅列表</strong>
                        </div>
                        <div class="ibox-content">
                        	<table class="footable table table-stripped toggle-arrow-tiny" data-page-size="15">
                        		<thead>
                                <tr>
                                    <th data-hide="phone">用户ID</th>
                                    <th data-hide="phone">用户昵称</th>
                                    <th data-hide="phone">课程名称</th>
                                    <th data-hide="phone,tablet" >订阅时间</th>
                                    <th data-hide="phone">是否到期</th>
                                </tr>
                                </thead>
                                <tbody>
                                  <c:forEach var="resource"  items="${subBookList}">
                                	<tr>
	                                    <td>${resource.userInfoId}</td>
	                                    <td>${resource.username}</td>
	                                    <td>${resource.bookName}</td>
	                                    <td>${resource.subTime}</td>
	                                    <td> 
     <%--                             		<c:if test="${resource.status=='1'}">是</c:if>
                 							<c:if test="${resource.status=='0'}">否</c:if> --%>
	                                    </td>
                                    </tr>
                                   </c:forEach>
                                </tbody>
                                <tfoot>
	                                <tr>
	                                    <td colspan="5">
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

            $('#date_added').datepicker({
                todayBtn: "linked",
                keyboardNavigation: false,
                forceParse: false,
                calendarWeeks: true,
                autoclose: true
            });

            $('#date_modified').datepicker({
                todayBtn: "linked",
                keyboardNavigation: false,
                forceParse: false,
                calendarWeeks: true,
                autoclose: true
            });
            
            $('#buttonView').click(function(){
            	window.location.href="/bookClass/bookClassView"
            });
            
            $('#buttonEdit').click(function(){
            	window.location.href="/bookClass/bookClassEdit"
            });
            
            $('#data_1 .input-group.date').datepicker({
                todayBtn: "linked",
                keyboardNavigation: false,
                forceParse: false,
                calendarWeeks: true,
                autoclose: true
            });
            
            $('#data_2 .input-group.date').datepicker({
                todayBtn: "linked",
                keyboardNavigation: false,
                forceParse: false,
                calendarWeeks: true,
                autoclose: true
            });
            
        });

    </script>
</html>
</html>