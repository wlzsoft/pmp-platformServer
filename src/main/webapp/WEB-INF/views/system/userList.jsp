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
                <form class="form-horizontal" action="/user/userList" method="get">
                    <div class="col-sm-4">
                        <div class="form-group">
                            <label class="control-label" for="order_id">用户名称</label>
                            <input type="text" style="width: 300px" id="order_id" name="username" style="width: 300px" placeholder="用户名称" class="form-control">
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="form-group">
                            <label class="control-label" for="roleId">角色</label>
                               <select class="form-control m-b" style="width: 290px" name="roleId">
                                     <option value="1">管理员</option>
                                     <option value="0">操作员</option>
	                            </select>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="form-group">
                            <label class="control-label" for="status">状态</label>
                            	<select class="form-control m-b" style="width: 290px" name="status">
                                     <option value="1">正常</option>
                                     <option value="0">封锁</option>
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
                            <strong>用户列表</strong>
                            <button class="btn btn-sm btn-primary  m-t-n-xs" type="submit" data-toggle="modal" data-target="#myModal"><strong>新增</strong></button>
                        </div>
                        <div class="ibox-content">
                        	<table class="footable table table-stripped toggle-arrow-tiny" data-page-size="15">
                        		<thead>
                                <tr>
                                    <th>用户ID</th>
                                    <th data-hide="phone">用户昵称</th>
                                    <th data-hide="phone">真实姓名</th>
                                    <th data-hide="phone">电话号码</th>
                                    <th data-hide="phone">部门</th>
                                    <th data-hide="phone" >角色</th>
                                    <th data-hide="phone">最后登录时间</th>
                                    <th data-hide="phone">创建时间</th>
                                    <th data-hide="phone">状态</th>
                                    <th class="text-crent">操作</th>
                                </tr>
                                </thead>
                                <tbody>
                                  <c:forEach var="resource"  items="${userOrgList}">
                                	<tr>
	                                    <td>${resource.id}</td>
	                                    <td>${resource.username}</td>
	                                    <td>${resource.realname}</td>
	                                    <td>${resource.phone}</td>
	                                    <td>${resource.org}</td>
	                                    <td></td>
	                                    <td>${resource.lastlogTime}</td>
	                                    <td>${resource.createTime}</td>
	                                    <td>
                                 			<c:if test="${resource.status=='1'}">正常</c:if>
                 							<c:if test="${resource.status=='0'}">封锁</c:if>
	                                    </td>
	                                    <td class="text-crent">
	                                        <div class="btn-group">
	                                            <a onclick="view(${resource.id});">View</a> |
	                                            <a onclick="edit(${resource.id});">Edit</a> |
	                                            <a onclick="updataStatus(${resource.id});">封锁</a> |
	                                            <a onclick="del(${resource.id});">Delete</a>
	                                        </div>
	                                    </td>
                                    </tr>
                                   </c:forEach>
                                </tbody>
                                <tfoot>
	                                <tr>
	                                    <td colspan="10">
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
					<h5 class="modal-title">管理用户新增</h5>
				</div>
				<div class="modal-body">
				   <form class="form-horizontal" action="/user/userAdd" method="get">
	                   <div class="form-group">
	                       <label class="col-sm-2 control-label">用户名</label>
	                       <div class="col-sm-2" style="width: 290px"><input type="text" class="form-control" name="username"></div>
	                   </div>
	                   <div class="form-group">
	                       <label class="col-sm-2 control-label">真实姓名</label>
	                       <div class="col-sm-2" style="width: 290px"><input type="text" class="form-control" name="realname"></div>
	                   </div>
	                   <div class="form-group">
	                       <label class="col-sm-2 control-label">电话号码</label>
	                       <div class="col-sm-2" style="width: 290px"><input type="text" class="form-control" name="phone"></div>
	                   </div>
	                   <div class="form-group">
	                       <label class="col-sm-2 control-label">部门</label>
	                       <div class="col-sm-2" style="width: 290px"><input type="text" class="form-control" name="org"></div>
	                   </div>
	                   <div class="form-group">
	                       <label class="col-sm-2 control-label">角色</label>
	                       <div class="col-sm-2" style="width: 290px"><input type="text" class="form-control"></div>
	                   </div>
	                   <div class="form-group">
	                       <label class="col-sm-2 control-label">状态</label>
	                       <div class="col-md-3">
	                            <select class="form-control m-b" style="width: 290px" name="status">
                                            <option value="1">正常</option>
                                            <option value="0">封锁</option>
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

            $('#buttonView').click(function(){
            	window.location.href="/bookClass/bookClassView"
            });
            
            $('#buttonEdit').click(function(){
            	window.location.href="/bookClass/bookClassEdit"
            });

        });

  	  function del(data){
  		var answer = confirm('是否删除');
  		  if(answer)
  		  {
  				window.location.href="/user/userDel?userOrgId="+data
  		  }
  		}
  	  
  	  function view(data){
  		window.location.href="/user/userView?userOrgId="+data
      }
  	  
  	  function edit(data){
  		window.location.href="/user/userEdit?userOrgId="+data
      }
  	  
  	  function updataStatus(data){
   		 var answer = confirm('是否封锁');
   		  if(answer)
   		  {
   			window.location.href="/user/updateStatus?userOrgId="+data
   		  }
      }
    </script>
</html>
</html>