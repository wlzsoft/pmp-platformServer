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
                 <form class="form-horizontal" action="/userInfo/userInfoList" method="get">
                    <div class="col-sm-4">
                        <div class="form-group">
                            <label class="control-label" for="order_id">用户名称</label>
                            <input type="text" style="width: 300px" id="order_id" name="username"  placeholder="用户名称" class="form-control">
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="form-group">
                            <label class="control-label" for="status">会员级别</label>
                            <select class="form-control m-b" style="width: 290px" name="vipLevel">
                        	        <c:forEach var="dto"  items="${vipLevelSelect}">
                                            <option value="${dto.id}">${dto.levelName}</option>
                                    </c:forEach>
                            </select>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="form-group">
                            <button class="btn btn-sm btn-primary  m-t-n-xs" type="submit" ><strong>重置</strong></button>
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
                        </div>
                        <div class="ibox-content">
                        	<table class="footable table table-stripped toggle-arrow-tiny" data-page-size="15">
                        		<thead>
                                <tr>
                                    <th>用户ID</th>
                                    <th data-hide="phone">用户昵称</th>
                                    <th data-hide="phone">真实姓名</th>
                                    <th data-hide="phone">电话号码</th>
                                    <th data-hide="phone">注册时间</th>
                                    <th data-hide="phone" >是否为作者</th>
                                    <th data-hide="phone">会员等级</th>
                                    <th data-hide="phone">最后登录时间</th>
                                    <th data-hide="phone">状态</th>
                                    <th class="text-crent">操作</th>
                                </tr>
                                </thead>
                                <tbody>
                                  <c:forEach var="resource"  items="${userInfoEntity}">
                                	<tr>
	                                    <td>${resource.id}</td>
	                                    <td>${resource.username}</td>
	                                    <td>${resource.realname}</td>
	                                    <td>${resource.telphone}</td>
	                                    <td>${resource.registerTime}</td>
	                                    <td>${resource.isAuthor}</td>
	                                    <td>${resource.vipLevel}</td>
	                                    <td>${resource.lastloginTime}</td>
	                                    <td>
                                 			<c:if test="${resource.status=='1'}">正常</c:if>
                 							<c:if test="${resource.status=='0'}">封锁</c:if>
	                                    </td>
	                   	                <td class="text-crent">
	                                        <div class="btn-group">
	                                        	<a onclick="buyVip(${resource.id});">VIP购买明细</a> |
	                                            <a onclick="subBook(${resource.id});">订阅明细</a> |
	                                            <a onclick="updataStatus(${resource.id});">封锁</a> |
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
					<h5 class="modal-title">课程分类新增</h5>
				</div>
				<div class="modal-body">
				   <form class="form-horizontal" action="" method="get">
	                   <div class="form-group">
	                       <label class="col-sm-2 control-label">课程分类名称</label>
	                       <div class="col-sm-2" style="width: 290px"><input type="text" class="form-control"></div>
	                   </div>
	                   <div class="form-group">
	                       <label class="col-sm-2 control-label">图片</label>
	                       <div class="col-sm-2" style="width: 290px"><input type="text" class="form-control"></div>
	                   </div>
	                   <div class="form-group">
	                       <label class="col-sm-2 control-label">排序</label>
	                       <div class="col-sm-2" style="width: 290px"><input type="text" class="form-control"></div>
	                   </div>
	                   <div class="form-group">
	                       <label class="col-sm-2 control-label">是否显示</label>
	                       <div class="col-md-3">
	                            <select class="form-control m-b" style="width: 290px" name="account">
                                            <option>是</option>
                                            <option>否</option>
	                            </select>
	                        </div>
	                   </div>
            	  </form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					<button type="button" class="btn btn-primary">
						提交
					</button>
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
        
    	function updataStatus(data){
   	   		 var answer = confirm('是否封锁');
   	   		  if(answer)
   	   		  {
   	   			window.location.href="/userInfo/updateStatus?userInfoId="+data
   	   		  }
    	}
    	
    	function subBook(data){
    		window.location.href="/userInfo/userSubBook?userInfoId="+data
    	}

    	function buyVip(data){
    		window.location.href="/userInfo/userBuyVip?userInfoId="+data
    	}
    	
    </script>
</html>
</html>