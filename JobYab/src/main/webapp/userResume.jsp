<%-- 
    Document   : userProfile
    Created on : May 12, 2016, 7:23:10 PM
    Author     : Ali
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.jobyab.models.userModel" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8"/>
        <title>رزومه</title>
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
                                                </div>
                                                <div class="persian-text" id="ajaxRes" style="text-align: center; font-family: IRB; background: green;"></div>
					</div><div class="col-md-9">
                                            <form id="userResumeForm" action="resumeController" method="post">
                                                <h3 id="infos" class="page-header text-info persian-text">مهارتهای کاربر</h3>
                                                <p class="persian-text">در این قسمت مهارتهای خود را بنویسید</p>
                                                <p class="persian-text" style="background: #FFFFB2;">توجه داشته باشید که برای دریافت بازخورد درست از سایت، مهارتهایتان را با "," از هم جدا کنید.</p>                                                
                                                <label class="persian-label" for="skills">مهارتهای کاربر</label>
                                                <textarea class="form-control persian-textbox" id="skills" style="direction:rtl; height: 200px; padding-top: 5px; padding-right: 5px; font-size: 20px"></textarea>
                                               
                                                <h3 id="resume" class="page-header text-info persian-text">زبانها</h3>
                                                <p class="persian-text">در این قسمت زبانهایی را که بلد هستید بنویسید</p>
                                                <p class="persian-text" style="background: #FFFFB2;">زبانها را نیز همانند قسمت بالا از هم جدا کنید</p>
                                                <label class="persian-label" for="langs">زبانهای کاربر</label>
                                                <textarea class="form-control persian-textbox" value="" id="langs" style="direction:rtl; height: 200px; padding-top: 5px; padding-right: 5px; font-size: 20px"><% out.print(user.getEmail()); %></textarea>                                                
						
						<h3 id="sbmt" class="page-header text-info persian-text">ثبت رزومه</h3>
						<p style="font-size: 18px; background: #FFFFB2;"><strong>توجه: </strong>چنانچه رزومه خود را ثبت کرده و یا تغییر داده اید بر روی ثبت رزومه کلیک کنید و منتظر نتیجه بمانید</p>
						<input type="submit" value="ثبت رزومه" id="addButton" style="width:100%; margin-top: 15px;" onsubmit="formSubmit(); return false;" />
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
