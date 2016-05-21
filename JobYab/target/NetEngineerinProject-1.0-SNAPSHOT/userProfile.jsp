<%-- 
    Document   : userProfile
    Created on : May 12, 2016, 7:23:10 PM
    Author     : Ali
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.jobyab.models.userModel" %>
<% userModel user = (userModel) request.getSession().getAttribute("user"); %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8"/>
        <title>پروفایل</title>
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.1/jquery.min.js"></script>
        <link rel="stylesheet" type="text/css" href="references/css/FontStyle.css">
	<link rel="stylesheet" type="text/css" href="references/css/bootstrap.rtl.min.css">
	<link rel="stylesheet" type="text/css" href="references/css/style.css">

        
	<script type="text/javascript" src="references/js/jquery.min.js"></script>
	<script type="text/javascript" src="references/js/bootstrap.rtl.min.js"></script>
        <script type="text/javascript" src="references/js/app-ajax.js"></script>


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
                                                if(user.getKind().compareToIgnoreCase("jobseeker") == 0)
                                                    out.print(user.getFirstName() + " " + user.getLastName()); 
                                                else if(user.getKind().compareToIgnoreCase("employer") == 0)
                                                    out.print(user.getCompanyName() + "شرکت");
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
                                    <%
                                        if(user.getKind().compareToIgnoreCase("jobseeker") == 0){
                                    %>
                                    <li name="jobSeeker">
                                        <a href="#">جست و جو</a>
                                    </li>
                                    <li name="jobSeeker">
                                        <a href="#">ارسال رزومه</a>
                                    </li>
                                    <%  }
                                        else if(user.getKind().compareToIgnoreCase("employer") == 0) {
                                    %>
                                    <li name="employer">
                                        <a href="#">ثبت آگهی</a>
                                    </li>
                                    <% } %>
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

	<!--Right side bar-->
	<div class="container persian-label" style="margin-top: 60px; margin-right: -5px;">
		<div class="row">
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
				<div class="row">
					<div class="col-md-3">
                                                <div class="list-group-item">
                                                    <img src="references/images/user-default.png" width="130" height="130"/>
                                                    <ul class="nav" style="font-size: 15px; margin-top: 10px;">
                                                            <li><a href="#infos">اطلاعات کاربر</a></li>
                                                            <li><a href="#done">سوابق کاری</a></li>
                                                            <li><a href="#resume">رزومه</a></li>
                                                    </ul>
                                                </div>
                                                <div class="persian-text" id="ajaxRes" style="text-align: center; font-family: IRB; background: green;"></div>
					</div><div class="col-md-9">
                                            <form id="userUpdateForm" action="userProfileController" method="post">
                                                <h3 id="infos" class="page-header text-info persian-text">اطلاعات کاربر</h3>
						<label class="persian-label" for="username">نام کاربری / رایانامه</label>
                                                <input type="text" class="form-control persian-textbox" placeholder="<% out.print(user.getEmail()); %>" id="email" style="direction:ltr"/>
						<label for="pwd" style="font-size: 16px">رمز عبور</label>
						<input type="password" class="form-control persian-textbox" id="password" placeholder="*****" style="direction: ltr"/>
						<label for="firstName" style="font-size: 16px">نام</label>
						<input type="text" class="form-control persian-textbox" id="firstName" placeholder="<% out.print(user.getFirstName()); %>" style="direction: rtl"/>
						<label for="lastName" style="font-size: 16px">نام حانوادگی</label>
						<input type="text" class="form-control persian-textbox" id="lastName" placeholder="<% out.print(user.getLastName()); %>" style="direction: rtl"/>
						<label for="city" style="font-size: 16px">ساکن شهـر</label>
                                                <input type="text" class="form-control persian-textbox" id="city" placeholder="<% String city = (user.getCity() != null)? user.getCity(): ""; out.print(city); %>" style="direction: rtl"/>
						
                                                
                                                <h3 id="resume" class="page-header text-info persian-text">رزومه</h3>
						<p style="font-size: 18px;"><strong>برای ارسال رزومه <a>اینجا</a> را کلیک کنید</strong></p>
						
						<h3 id="sbmt" class="page-header text-info persian-text">ثبت اطلاعات</h3>
						<p style="font-size: 18px; background: #FFFFB2;"><strong>توجه: </strong> در صورتی که اطلاعات خود را ویرایش داده اید، ثبت اطلاعات را کلیک کنید</p>
						<input type="submit" value="ثـبّت اطلاعات" id="addButton" style="width:100%; margin-top: 15px;" onsubmit="formSubmit(); return false;" />
                                            </form>
                                        </div>
				</div>
			</div>
		</div>
	</div>
                                                

</body>


<script type="text/javascript">
	window.onload = function()
	{
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

</script>


</html>
