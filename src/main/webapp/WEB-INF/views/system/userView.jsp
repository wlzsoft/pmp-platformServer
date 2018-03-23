<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		      <div class="ibox float-e-margins">
                        <div class="ibox-title">
                            <h5>管理用户查看</h5>
                        </div>
                        <div class="ibox-content">
                            <form class="form-horizontal">
                                <div class="form-group">
                                     <label class="col-lg-2 control-label">用户名名称</label>
                                     <div class="col-lg-3">
                                      <input type="text"  class="form-control" name="username" placeholder="${userOrgEntity.username}"> 
                                     </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-lg-2 control-label">真实姓名</label>
                                    <div class="col-lg-3">
                                       <input type="text"  class="form-control" name="realname" placeholder="${userOrgEntity.realname}"> 
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-lg-2 control-label">电话</label>
                                    <div class="col-lg-3">
                                       <input type="text"  class="form-control" name="phone" placeholder="${userOrgEntity.phone}"> 
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-lg-2 control-label">部门</label>
                                    <div class="col-lg-3">
                                       <input type="text"  class="form-control" name="org" placeholder="${userOrgEntity.org}"> 
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-lg-2 control-label">状态</label>
                                    <div class="col-lg-3">
                                       <input type="text"  class="form-control" name="status" placeholder="${userOrgEntity.status}"> 
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-lg-2 control-label">角色</label>
                                    <div class="col-lg-3">
                                       <input type="text"  class="form-control" name="" placeholder=""> 
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-lg-2 control-label">创建时间</label>
                                    <div class="col-lg-3">
                                       <input type="text"  class="form-control" name="createTime" placeholder="${userOrgEntity.createTime}"> 
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-lg-2 control-label">最后登录时间</label>
                                    <div class="col-lg-3">
                                       <input type="text"  class="form-control" name="lastloginTime" "> 
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-lg-offset-2 col-lg-10">
                                       <button type="button" class="btn btn-default" data-dismiss="modal" id="closeWin">返回</button>
                                    </div>
                                </div>
                            </form>
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
            $('#closeWin').click(function(){
            	window.location.href="/user/userList"
            });

        });
        

    </script>
</html>
</html>