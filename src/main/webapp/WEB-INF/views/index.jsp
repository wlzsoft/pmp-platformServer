<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>PMP 后台</title>

    <link href="../../css/bootstrap.min.css" rel="stylesheet">
    <link href="../../font-awesome/css/font-awesome.css" rel="stylesheet">

    <!-- Toastr style -->
    <link href="../../css/plugins/toastr/toastr.min.css" rel="stylesheet">
    <!-- Gritter -->
    <link href="../../js/plugins/gritter/jquery.gritter.css" rel="stylesheet">

    <link href="../../css/animate.css" rel="stylesheet">
    <link href="../../css/style.css" rel="stylesheet">

</head>

<script type="text/javascript">
	$(function() {
		var height=document.documentElement.clientHeight;
		document.getElementById('iframe-page-content').style.height=height+'px';
	 });
	var menuClick = function(menuUrl) {
	   $("#iframe-page-content").attr('src',menuUrl);
	};
</script>

<body>
    <div id="wrapper">
        <nav class="navbar-default navbar-static-side" role="navigation">
            <div class="sidebar-collapse" id="sidebar">
                <ul class="nav metismenu" id="side-menu">
                    <li class="nav-header">
                        <div class="dropdown profile-element"> <span>
                            <img alt="image" class="img-circle" src="../../img/profile_small.jpg" />
                             </span>
                            <a data-toggle="dropdown" class="dropdown-toggle" href="index.html#">
                            <span class="clear"> <span class="block m-t-xs"> <strong class="font-bold">David Williams</strong>
                             </span> <span class="text-muted text-xs block">Art Director <b class="caret"></b></span> </span> </a>
                            <ul class="dropdown-menu animated fadeInRight m-t-xs">
                                <li><a href="profile.html">Profile</a></li>
                                <li><a href="contacts.html">Contacts</a></li>
                                <li><a href="mailbox.html">Mailbox</a></li>
                                <li class="divider"></li>
                                <li><a href="login.html">Logout</a></li>
                            </ul>
                        </div>
                        <div class="logo-element">
                            IN+
                        </div>
                    </li>
                    <li class="active">
                        <a href=""><i class="fa fa-th-large"></i> <span class="nav-label">栏目管理</span> <span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li class="active"><a href="index.html">Brand列表</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="/bookClass/bookClassList" ><i class="fa fa-diamond"></i> <span class="nav-label">课程分类列表</span></a>
                    </li>
                    <li>
                        <a href="/book/bookList"><i class="fa fa-bar-chart-o"></i> <span class="nav-label">课程列表</span></a>
                    </li>
                    <li>
                        <a href="/subBook/subBookList"><i class="fa fa-envelope"></i> <span class="nav-label">订阅列表</span></a>
                    </li>
                    <li>
                        <a href="/userInfo/userInfoList"><i class="fa fa-pie-chart"></i> <span class="nav-label">用户列表</span></a>
                    </li>
                    <li>
                        <a href=""><i class="fa fa-flask"></i> <span class="nav-label">VIP设置</span><span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level collapse">
                            <li><a href="/vip/vipList">VIP列表</a></li>
                            <li><a href="/vip/vipPrice">VIP价格活动</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="/user/userList"><i class="fa fa-edit"></i> <span class="nav-label">管理员列表</span></a>
                    </li>
                    <li>
                        <a href="index.html#"><i class="fa fa-desktop"></i> <span class="nav-label">系统管理</span>  <span class="pull-right label label-primary">SPECIAL</span></a>
                        <ul class="nav nav-second-level collapse">
                            <li><a href="/role/roleList">角色管理</a></li>
                            <li><a href="profile.html">菜单管理</a></li>
                            <li><a href="profile.html">系统设置</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </nav>

        <div id="page-wrapper" class="gray-bg dashbard-1">
        <div class="row border-bottom">
        <nav class="navbar navbar-static-top" role="navigation" style="margin-bottom: 0">
        <div class="navbar-header">
            <a class="navbar-minimalize minimalize-styl-2 btn btn-primary " href="index.html#"><i class="fa fa-bars"></i> </a>
            <form role="search" class="navbar-form-custom" action="search_results.html">
                <div class="form-group">
                    <input type="text" placeholder="Search for something..." class="form-control" name="top-search" id="top-search">
                </div>
            </form>
        </div>
            <ul class="nav navbar-top-links navbar-right">
                <li>
                    <span class="m-r-sm text-muted welcome-message">wanlizong 欢迎登陆PMP</span>
                </li>
                <!-- 导航邮件提示 -->
                <li class="dropdown">
                    <a class="dropdown-toggle count-info" data-toggle="dropdown" href="index.html#">
                        <i class="fa fa-envelope"></i>  <span class="label label-warning">16</span>
                    </a>
                    <ul class="dropdown-menu dropdown-messages">
                        <li>
                            <div class="dropdown-messages-box">
                                <a href="profile.html" class="pull-left">
                                    <img alt="image" class="img-circle" src="../../img/profile.jpg">
                                </a>
                                <div class="media-body ">
                                    <small class="pull-right">23h ago</small>
                                    <strong>Monica Smith</strong> love <strong>Kim Smith</strong>. <br>
                                    <small class="text-muted">2 days ago at 2:30 am - 11.06.2014</small>
                                </div>
                            </div>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <div class="text-center link-block">
                                <a href="mailbox.html">
                                    <i class="fa fa-envelope"></i> <strong>Read All Messages</strong>
                                </a>
                            </div>
                        </li>
                    </ul>
                </li>
                <!-- 用户导航头消息提示 -->
                <li class="dropdown">
                    <a class="dropdown-toggle count-info" data-toggle="dropdown" href="index.html#">
                        <i class="fa fa-bell"></i>  <span class="label label-primary">8</span>
                    </a>
                    <ul class="dropdown-menu dropdown-alerts">
                        
                    </ul>
                </li>

                <li>
                    <a href="login.html">
                        <i class="fa fa-sign-out"></i> Log out
                    </a>
                </li>
            </ul>

        </nav>
        </div>
<!--    <div  class="row  border-bottom white-bg dashboard-header" >
			<iframe src="" id="iframe" width="100%" height="100%" style="border: none;">
				
			</iframe>  
        </div> -->
        <div class="row  border-bottom white-bg dashboard-header">
			<iframe id="fourIfm"  frameborder="no" border="0" style="width:100%;" src="http://www.meizu.com" scrolling="no" onload="changeFrameHeight()">
			</iframe>
		</div>
        
        <!-- 脚眉 -->
        <div class="footer">
	            <div class="pull-right">
	                10GB of <strong>250GB</strong> Free.
	            </div>
	            <div>
	                <strong>Copyright</strong> Example Company &copy; 2014-2015
	            </div>
       	</div>
       	</div>

    </div>
    <!-- Mainly scripts -->
    <script src="../../js/jquery-2.1.1.js"></script>
    <script src="../../js/bootstrap.min.js"></script>
    <script src="../../js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="../../js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

    <!-- Flot -->
    <script src="../../js/plugins/flot/jquery.flot.js"></script>
    <script src="../../js/plugins/flot/jquery.flot.tooltip.min.js"></script>
    <script src="../../js/plugins/flot/jquery.flot.spline.js"></script>
    <script src="../../js/plugins/flot/jquery.flot.resize.js"></script>
    <script src="../../js/plugins/flot/jquery.flot.pie.js"></script>

    <!-- Custom and plugin javascript -->
    <script src="../../js/inspinia.js"></script>
    <script src="../../js/plugins/pace/pace.min.js"></script>

    <!-- jQuery UI -->
    <script src="../../js/plugins/jquery-ui/jquery-ui.min.js"></script>

    <!-- Sparkline -->
    <script src="../../js/plugins/sparkline/jquery.sparkline.min.js"></script>


    <!-- Toastr -->
    <script src="../../js/plugins/toastr/toastr.min.js"></script>
    

    <script>
        $(document).ready(function() {
            setTimeout(function() {
                toastr.options = {
                    closeButton: true,
                    progressBar: true,
                    showMethod: 'slideDown',
                    timeOut: 4000
                };
                //toastr.success('Responsive Admin Theme', 'Welcome to INSPINI');
                toastr.success('Responsive Admin Theme', '欢迎进入PMP');

            }, 1300);
          
        });
    </script>
    <script>
        (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
            (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
                m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
        })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

        ga('create', 'UA-4625583-2', 'webapplayers.com');
        ga('send', 'pageview');

    </script>
   	<script type="text/javascript">
			var lis =  $('#sidebar li a');
			$('#sidebar li a').click(function(){
				if($(this).attr('href')!=''){
					lis.removeClass('active');
					if($(this).parent().parent().attr('class')!='submenu')
					{
						$(this).parent().addClass('active');
					} else {
						$(this).parent().addClass('active');
						$(this).parent().parent().parent().addClass('active');
					}
					
					$('#fourIfm').attr('src',$(this).attr('href'));
						return false	
				}
			});
			
			if(sessionStorage.href)
			{
				$('#fourIfm').attr('src',sessionStorage.href);
			}
			
		  function changeFrameHeight(){
            var ifm=document.getElementById("fourIfm"); 
            ifm.height = document.documentElement.clientHeight;
            }
            window.onresize=function(){  
                 changeFrameHeight();  
            }
	</script> 
	
	
    
</body>

</html>