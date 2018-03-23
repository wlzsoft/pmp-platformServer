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
                    <div class="col-sm-4">
                        <div class="form-group">
                            <label class="control-label" for="status">会员级别</label>
                            <select class="form-control m-b" style="width: 290px" name="account">
                                            <option>普通用户</option>
                                            <option>VIP用户</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="form-group">
                            <button class="btn btn-sm btn-primary  m-t-n-xs" type="submit" ><strong>重置</strong></button>
                            <button class="btn btn-sm btn-primary  m-t-n-xs" type="submit" ><strong>查询</strong></button>
                        </div>
                    </div>
                </div>
          </div>
          <div class="row">
              	<div class="col-lg-12">
                    <div class="ibox">
                        <div class="ibox-title">
                            <button class="btn btn-sm btn-primary  m-t-n-xs" type="submit" data-toggle="modal" data-target="#myModal"><strong>新增</strong></button>
                        </div>
                        <div class="ibox-content">
                        	<table class="footable table table-stripped toggle-arrow-tiny" data-page-size="15">
                        		<thead>
                                <tr>
                                    <th>ID</th>
                                    <th data-hide="phone">VIP名称</th>
                                    <th data-hide="phone">创建时间</th>
                                    <th data-hide="phone">状态</th>
                                    <th class="text-crent">操作</th>
                                </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="resource"  items="${vipLeveList}">
	                                	<tr>
		                                    <td>${resource.id}</td>
		                                    <td>${resource.levelName}</td>
		                                    <td>${resource.createTime}</td>
		                                    <td>${resource.status}</td>
		                                    <td class="text-crent">
		                                        <div class="btn-group">
		                                            <a onclick="pricedetail(${resource.id});">价格</a> |
		                                            <a onclick="edit(${resource.id});">Edit</a> |
		                                            <a onclick="del(${resource.id});">Del</a>
		                                        </div>
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
   
   <!-- 新增模块 -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
						&times;
					</button>
					<h5 class="modal-title">VIP新增</h5>
				</div>
				<div class="modal-body">
				   <form class="form-horizontal" action="/vip/vipAdd" method="get">
	                   <div class="form-group">
	                       <label class="col-sm-2 control-label">VIP名称</label>
	                       <div class="col-sm-2" style="width: 290px"><input type="text" class="form-control" name="levelName"></div>
	                   </div>
	                   <div class="form-group">
	                       <label class="col-sm-2 control-label">状态</label>
	                       <div class="col-md-3">
	                            <select class="form-control m-b" style="width: 290px" name="status">
                                            <option value="1">启用</option>
                                            <option value="0">禁用</option>
	                            </select>
	                        </div>
	                   </div>
	                   <div class="modal-footer">
						 <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
						 <button type="submit" class="btn btn-primary">提交</button>
					   </div>
            	  </form>
				</div>
			</div><!-- /.modal-content -->
		</div><!-- /.modal -->
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
        
	   function pricedetail(data){
   	  		window.location.href="/vip/vipPrice?vipLevelId="+data
   	    }
	  	  
	  	function edit(data){
   	  		window.location.href="/vip/vipEdit?vipLevelId="+data
   	    }
	  	
  	    function del(data){
	  	   var answer = confirm('是否删除');
	  		  if(answer)
	  		  {
	  				window.location.href="/vip/vipDel?vipLevelId="+data
	  		  }
  		}

    </script>
</html>
</html>