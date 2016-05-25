<%-- 
    Document   : inbox
    Created on : May 15, 2016, 6:28:28 PM
    Author     : Ali
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.jobyab.models.userModel" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8"/>
	<title>جاب یاب</title>
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
        <%@include file="header.jsp" %>

	
	<div class="" style="margin-top: 60px; margin-right: 10px; margin-left: 10px; margin-bottom: 10px;">
		<div class="row">
			<!--Right side bar-->
                        <%@include file="rightSideBar.jsp" %>

			<div class="col-md-9">
				 <hr />
				 <div class="row" style="font-size: 17px;">
					  <div class="col-sm-9 col-md-12 persian-label">
							<!-- Tab panes -->
							<div class="tab-content">
								 <div class="tab-pane fade in active" id="home">
									  <div class="list-group">
											<a href="#" class="list-group-item">
												 <div class="checkbox">
													  <label>
															<input type="checkbox">
													  </label>
												 </div>
												<span class="name" style="min-width: 120px;
													  display: inline-block;">شرکت 1</span> <span class="">عنوان آگهی</span>
												 <span class="text-muted" style="margin-right: 45px;font-size: 11px;">شرح آگهی به همراه توضیحات</span> <span
													  class="badge">12:10 بعد از ظهر</span> <span class="pull-right"></span>
											</a>
											<a href="#" class="list-group-item">
															<div class="checkbox">
																 <label>
															<input type="checkbox">
													  </label>
												 </div>
												 <span class="name" style="min-width: 120px;
													  display: inline-block;">شرکت 2</span> <span class="">عنوان آگهی</span>
												 <span class="text-muted" style="margin-right: 45px;font-size: 11px;">شرح آگهی به همراه توضیحات</span> <span
													  class="badge">12:10 بعد از ظهر</span> <span class="pull-right"></span>
											</a>
											<a href="#" class="list-group-item">
															<div class="checkbox">
																			<label>
																				 <input type="checkbox">
																			</label>
															</div>
													<span class="name" style="min-width: 120px;
													  display: inline-block;">شرکت 2</span> <span class="">عنوان آگهی</span>
												 <span class="text-muted" style="margin-right: 45px;font-size: 11px;">شرح آگهی به همراه توضیحات</span> <span
													  class="badge">12:10 بعد از ظهر</span> <span class="pull-right"></span>
											</a>
									  </div>
								 </div>
							</div>
					  </div>
				 </div>
				 <div class="row persian-label">
					<div class="col-md-4">
						<div class="dropdown">
						  <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">عمل
						  <span class="caret"></span></button>
						  <ul class="dropdown-menu">
							 <li><a href="#">حذف</a></li>
							 <li><a href="#">ستاره دار کردن</a></li>
							 <li><a href="#">خوانده شده</a></li>
						  </ul>
						</div>
					</div>
					<div class="col-md-4">
					<ul class="pagination" style="margin-top: 0">
						  <li><a href="#">1</a></li>
						  <li><a href="#">2</a></li>
						  <li><a href="#">3</a></li>
						  <li><a href="#">4</a></li>
						  <li><a href="#">5</a></li>
						</ul>
					</div>
					<div class="col-md-4">
						<button type="button" class="btn btn-primary" style="float: left">ثـبت</button>
					</div>
				 </div>
			</div>

	
		</div>
	</div>

</body>


<script type="text/javascript">
	window.onload = function()
	{
		document.getElementById("UserName").innerHTML = "Ali Alavi";

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
