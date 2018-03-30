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
                            <button class="btn btn-sm btn-primary  m-t-n-xs" type="button" data-toggle="modal" data-target="#myModal"><strong>新增</strong></button>
                        </div>
                        <div class="ibox-content">
                        	<table id="priceList" class="footable table table-stripped toggle-arrow-tiny" data-page-size="15">
                        		<thead>
                                <tr>
                                    <th>ID</th>
                                    <th data-hide="phone">价格科目</th>
                                    <th data-hide="phone">价格</th>
                                    <th data-hide="phone">状态</th>
                                    <th data-hide="phone">操作</th>
                                </tr>
                                </thead>
                                <tbody>
                                   <c:forEach var="resource"  items="${vipPrice}">
                                	<tr>
                                		<td>${resource.id}</td>
	                                    <td>${resource.subjectName}个月</td>
	                                    <td>${resource.price}</td>
	                                    <td>${resource.priceStatus}</td>
	                                    <td>
	                                     <a onclick="edit(${resource.id});">Edit</a> 
	                                    </td>
	                                    
                                    </tr>
                                   </c:forEach>
                                </tbody>
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
   
    <!-- 新增模块 -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
						&times;
					</button>
					<h5 class="modal-title">价格新增</h5>
				</div>
				<div class="modal-body">
				   <form class="form-horizontal" action="/vip/vipPriceAdd" method="post">
				       <input type="hidden" name="vipLevelId" value="${vipLevelId}">
	                   <div class="form-group">
	                       <label class="col-sm-2 control-label">价格科目名称</label>
	                       <div class="col-md-3">
	                            <select class="form-control m-b" style="width: 290px" name="subjectId">
                                      <option value="1">1个月</option>
                                      <option value="2">3个月</option>
                                      <option value="3">6个月</option>
                                      <option value="4">12个月</option>
	                            </select>
	                        </div>
	                   </div>
	                   <div class="form-group">
	                       <label class="col-sm-2 control-label">价格</label>
	                       <div class="col-sm-2" style="width: 290px">
	                       		<input type="text" class="form-control" name="price">
	                       </div>
	                   </div>
	                   <div class="form-group">
	                       <label class="col-sm-2 control-label">状态</label>
	                       <div class="col-md-3">
	                            <select class="form-control m-b" style="width: 290px" name="priceStatus">
                                      <option value="1">启动</option>
                                      <option value="0">禁用</option>
	                            </select>
	                        </div>
	                   </div>
	                   <div class="modal-footer">
						  <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
						  <button type="submit" class="btn btn-primary" >保存</button>
					   </div>
            	  </form>
				</div>

			</div><!-- /.modal-content -->
		</div><!-- /.modal -->
	</nav>
	</div>
	
	 <!-- 科目价格修改 -->
	<div class="modal fade" id="editPriceModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
						&times;
					</button>
					<h5 class="modal-title">科目价格修改</h5>
				</div>
				<div class="modal-body">
				   <form class="form-horizontal" action="/vip/vipPriceUpdate" method="post">
				       <input type="hidden" name="id" id="subjectId_edit">
				       <input type="hidden" name="vipLevelId" id="vipLevelId_edit">
	                   <div class="form-group">
	                       <label class="col-sm-2 control-label">科目名称</label>
	                       <div class="col-md-3">
	                           <input type="text" class="form-control" name="subjectName" id="subjectName_edit">
	                        </div>
	                   </div>
	                   <div class="form-group">
	                       <label class="col-sm-2 control-label">价格</label>
	                       <div class="col-sm-2" style="width: 290px">
	                       		<input type="text" class="form-control" name="price" id="price_edit">
	                       </div>
	                   </div>
	                   <div class="form-group">
	                       <label class="col-sm-2 control-label">状态</label>
	                       <div class="col-md-3">
	                            <select class="form-control m-b" style="width: 290px" name="priceStatus" id="priceStatus_edit">
                                      <option value="1">启动</option>
                                      <option value="0">禁用</option>
	                            </select>
	                        </div>
	                   </div>
	                   <div class="modal-footer">
						  <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
						  <button type="submit" class="btn btn-primary" >保存</button>
					   </div>
            	  </form>
				</div>

			</div><!-- /.modal-content -->
		</div><!-- /.modal -->
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
            	window.location.href="/vip/vipList"
            });
        });
        
	  	function edit(data){
	  		$.ajax({
	  			url:"/vip/vipPriceEdit.json",
	  			data:{
	  				id:data
	  				},
	  			dataType:"json",
	  			type:"POST",
	  			success: function(dto){
	  				debugger;
	  			    var subjectId_edit =dto.id;
	  			    var vipLevelId_edit =dto.vipLevelId;
	  			    var subjectName_edit = dto.subjectName;
	  			    var price_edit =dto.price;
	  			    var priceStatus_edit = dto.priceStatus;
	  			    $("#subjectId_edit").val(subjectId_edit);
	  			    $("#vipLevelId_edit").val(vipLevelId_edit);
	  			    $("#subjectName_edit").val(subjectName_edit);
	  			    $("#price_edit").val(price_edit);
	  			    $("#priceStatus_edit").val(priceStatus_edit);
	  			    
	  			   $('#editPriceModal').modal('show') 
	  			 }
	  		});
	  		
   	    }

    </script>
</html>
</html>