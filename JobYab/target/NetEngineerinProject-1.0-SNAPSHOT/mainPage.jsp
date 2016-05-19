<%-- 
    Document   : mainPage
    Created on : May 11, 2016, 7:39:09 PM
    Author     : Ali
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.jobyab.models.userModel" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8"/>
	<title>صفحه اصلی</title>
	<link rel="stylesheet" type="text/css" href="references/css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="references/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="references/css/bootstrap-theme.css">
	<link rel="stylesheet" type="text/css" href="references/css/bootstrap-theme.min.css">
	<link rel="stylesheet" type="text/css" href="references/css/FontStyle.css">
	<link rel="stylesheet" type="text/css" href="references/css/bootstrap.rtl.css">
	<link rel="stylesheet" type="text/css" href="references/css/bootstrap.rtl.min.css">
	<link rel="stylesheet" type="text/css" href="references/css/style.css">

	<script type="text/javascript" src="references/js/bootstrap.js"></script>
	<script type="text/javascript" src="references/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="references/js/npm.js"></script>
	<script type="text/javascript" src="references/js/jquery.min.js"></script>
	<script type="text/javascript" src="references/js/jquery-1.11.1.js"></script>
	<script type="text/javascript" src="references/js/bootstrap.rtl.min.js"></script>


</head>
<body>
	<!--Header bar-->
	<header>
		<nav class="navbar navbar-default navbar-fixed-top">
		    <div class="row">
		    	<div class="container-fluid">
			    	<a class="navbar-brand navbar-left" href="#" style="">
			    		<img src="references/images/logo.png" height="30" width="25" />
			    	</a>
			        <div class="collapse navbar-collapse persian-label persian-text">
						<ul class="nav tabs navbar-nav navbar-right">
							<li>
								<button id="searchButton" class="btn btn-primary" style="margin: 8px;" onclick="ShowSearch();">
									<span class="glyphicon glyphicon-search"></span>
								</button>
							</li>
							<li>
								<a href="#" class="dropdown-toggle" data-toggle="dropdown" id="UserName">
                                                                    <%
                                                                        userModel user = (userModel) request.getSession().getAttribute("user");
                                                                        out.print(user.getFirstName() + " " + user.getLastName()); 
                                                                    %>  
                                                                </a>
								<ul class="dropdown-menu">
			                        <li align="center">
										<img class="pic" src="references/images/user-default.png" width="auto" height="auto">
									</li>
									<li class="divider"></li>
									<li align="center">
										<a href="userProfile.jsp">پروفایل</a>
									</li>
									<li class="divider"></li>
									<li align="center">
			                        	<a href="">خروج</a>
			                        </li>
			                    </ul>
		                    </li>
		                    <li class="">
		                    	<a href="#">خانه</a>
		                    </li>
		                    <li name="jobSeeker">
		                    	<a href="#">جست و جو</a>
		                    </li>
							<li name="jobSeeker">
								<a href="#">ارسال رزومه</a>
							</li>
							<li name="employer">
								<a href="#">ثبت آگهی</a>
							</li>
							<li>
								<a href="#">درباره ما</a>
							</li>
							<li>
								<a href="#">قوانین سایت</a>
							</li>
						</ul>
					</div>
				</div>
		    </div>

		    <div class="row" id="SimpleSearchBox" style="display: none;">
		    	<div class="container-fluid">
		    		<div class="collapse navbar-collapse persian-label persian-text">
						<form action="#" method="get">
							<div class="form-group form-group-lg">
								<div class="col-lg-12">
									<input class="form-control" type="text" name="searchBox" placeholder="عنوان مورد نظر را برای جست و جو نوشته و enter را بزنید"/>
								</div>
							</div>
						</form>
		    		</div>
		    	</div>
		    </div>

		</nav>
	</header>

	
	<div class="" style="margin-top: 60px; margin-right: 10px; margin-left: 10px; margin-bottom: 10px;">
		<div class="row">
			<!--Right side bar-->
			<div class="col-md-3 sidebar persian-label">
				<div class="list-group panel">
			        <a href="#" class="list-group-item">
			            <i class="fa fa-comment-o"></i> پروفایل
			        </a>			        

					<a href="#Box" class="list-group-item" data-toggle="collapse">
						<i class="fa fa-envelope fa-caret-down"></i> جعبه اطلاع <span class="badge">14</span>
					</a>

					<div class="collapse" id="Box">
						<a href="#" class="list-group-item">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspجعبه ورودی</a>
            			<a href="#" class="list-group-item">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspجعبه خروجی</a>
					</div>

			    </div>

			    <div class="list-group">
			    	<span href="#" class="list-group-item active" align="center">
			            آخرین کارهای ثبت شده
			            <span class="pull-right" id="slide-submenu">
			                <i class="fa fa-times"></i>
			            </span>
			        </span>

			    	<a href="#" class="list-group-item">
			            <i class="fa fa-comment-o"></i> کار1
			        </a>
			        
			        <a href="#" class="list-group-item">
			            <i class="fa fa-comment-o"></i> کار2
			        </a>

			        <a href="#" class="list-group-item">
			            <i class="fa fa-comment-o"></i> کار3
			        </a>

			        <a href="#" class="list-group-item">
			            <i class="fa fa-comment-o"></i> کار4
			        </a>

			        <a href="#" class="list-group-item">
			            <i class="fa fa-comment-o"></i> کار5
			        </a>

			        <a href="#" class="list-group-item">
			            <i class="fa fa-comment-o"></i> کار6
			        </a>

			        <a href="#" class="list-group-item">
			            <i class="fa fa-comment-o"></i> کار7
			        </a>

			        <a href="#" class="list-group-item">
			            <i class="fa fa-comment-o"></i> کار8
			        </a>

			        <a href="#" class="list-group-item">
			            <i class="fa fa-comment-o"></i> کار9
			        </a>

			        <a href="#" class="list-group-item">
			            <i class="fa fa-comment-o"></i> کار10
			        </a>
			    </div>

			</div>

			<div class="col-md-9">
				<div class="row" style="margin: 10px;" id="jobSeekerAdv" name="jobSeeker">
					<div class="col-md-12">
						<div class="panel panel-default">
							<div class="panel-heading">
								<div class="row">
									<div class="col-md-2">
										<img src="references/images/default-co-logo.png" width="100px" height="100px" />
									</div>
									<div class="col-md-10" style="margin-top: 20px;">
										<label class="persian-label persian-heading">
											آگهی شرکت
										</label>
										<br/>
										<label class="persian-label persian-heading" style="font-size: 20px;">
											نام شرکت
										</label>
									</div>
								</div>
							</div>

							<div class="panel-body">
								<div style="margin: 15px;">
									<label class="persian-label persian-text">
										خلاصه ای از آگهی شرکت
									</label>
									<hr/>
									<a href="" class="persian-label" style="direction: ltr;">درخواست برای این آگهی</a>
								</div>
							</div>

						</div>
					</div>
				</div>

				<div class="row" style="margin: 10px; position: relative;" id="employerHeading" name="employer">
					<div class="col-md-12">
						<div class="panel panel-default">
							<div class="row">
								<div class="col-md-2">
									<img src="references/images/default-co-logo.png" width="100px" height="100px" />
								</div>
								<div class="col-md-10" style="margin-top: 20px; text-align: center;">
									<label class="persian-label persian-heading" style="color: blue;">
										نام شرکت
									</label>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="row" style="margin: 10px;" id="employerAdv" name="employer">
					<div class="col-md-12">
						<div class="panel panel-default">
							<div class="panel-heading">
								<div class="row">
									<div class="col-md-2">
										<img src="references/images/default-co-logo.png" width="100px" height="100px" />
									</div>
									<div class="col-md-10" style="margin-top: 20px;">
										<label class="persian-label persian-heading">
											آگهی شرکت
										</label>
										<br/>
										<label class="persian-label persian-heading" style="font-size: 20px;">
											نام شرکت
										</label>
									</div>
								</div>
							</div>

							<div class="panel-body">
								<div style="margin: 15px;">
									<label class="persian-label persian-text">
										خلاصه ای از آگهی شرکت
									</label>
									<hr/>
									<a href="" class="persian-label" style="direction: ltr;">ویرایش</a>
								</div>
							</div>

						</div>
					</div>
				</div>
				
			</div>

	
		</div>
	</div>

</body>


<script type="text/javascript">
	window.onload = function()
	{
		//document.getElementById("UserName").innerHTML = "Ali Alavi";

		var b = document.createElement('B');
		b.className = "caret";
		document.getElementById("UserName").appendChild(b);

		//Filter by user kind
		/*for(var i=0; i<document.getElementsByName("jobSeeker").length; i++)
		{
			document.getElementsByName("jobSeeker")[i].style.display = "none";
		}

		for(var i=0; i<document.getElementsByName("employer").length; i++)
		{
			document.getElementsByName("employer")[i].style.display = "inline";
		}*/
	};

	$(function(){

		$('#slide-submenu').on('click',function() {			        
	        $(this).closest('.list-group').fadeOut('slide',function(){
	        	$('.mini-submenu').fadeIn();	
	        });
	        
	      });

		$('.mini-submenu').on('click',function(){		
	        $(this).next('.list-group').toggle('slide');
	        $('.mini-submenu').hide();
		})
	})

	function ShowSearch()
	{
		var searchBox = document.getElementById("SimpleSearchBox").style.display;

		if(searchBox == "none")
		{
			document.getElementById("SimpleSearchBox").style.display = "inline";
		}
		else if(searchBox == "inline")
		{
			document.getElementById("SimpleSearchBox").style.display = "none";
		}
	}

</script>


</html>
