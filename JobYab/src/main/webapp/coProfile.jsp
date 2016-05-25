<%-- 
    Document   : coProfile
    Created on : May 12, 2016, 7:22:51 PM
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
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>


</head>
<body>
	<!--Header bar-->
        <%@include file="header.jsp" %>

	
	<div class="container persian-label" style="margin-top: 60px; margin-right: -5px;">
		<div class="row">
                    <!--Right side bar-->
                    <%@include file="rightSideBar.jsp" %>
                    
			<div class="col-md-9">
				<div class="row">
					<div class="col-md-3 list-group-item">
						<img id="logo" src="references/images/default-co-logo.png" width="130" height="130" style="cursor:pointer"/>
						<input type="file" id="logo_change" style="display: none;" />
						<ul class="nav" style="font-size: 15px; margin-top: 10px;">
							<li><a href="#infos">اطلاعات شرکت</a></li>
							<li><a href="#done">حوزه فعالیت</a></li>
						</ul>
					</div><div class="col-md-9">
						<h3 id="infos" class="page-header text-info">اطلاعات شرکت</h3>
						<label for="username" style="font-size: 16px">نام کاربری</label>
						<input type="text" class="form-control persian-textbox" placeholder="AliAlavi" id="username" style="direction:ltr"/>
						<label for="pwd" style="font-size: 16px">رمز عبور</label>
						<input type="password" class="form-control persian-textbox" id="pwd" placeholder="*****" style="direction: ltr"/>
						<label for="username" style="font-size: 16px">نام شرکت</label>
						<input type="text" class="form-control persian-textbox" placeholder="ایران مایکروسافت" id="coName"/>
						<label for="email" style="font-size: 16px">رایانامه</label>
						<input type="text" class="form-control persian-textbox" id="email" placeholder="microsoft.iran@gmail.com" style="direction: ltr"/>
						<label for="addr" style="font-size: 16px">آدرس شرکت</label>
						<input type="text" class="form-control persian-textbox" id="addr" placeholder="تهران، اوین، دانشگاه شهید بهشتی"/>
						
						<h3 id="done" class="page-header text-info">حوزه فعالیت</h3>
						<label for="username" style="font-size: 16px">در زمینه</label>
							<input type="text" class="form-control persian-textbox" placeholder="توسعه وبسایتهای اینترنتی" id="done1"/>
						<h3 id="sbmt" class="page-header text-info">ثبت اطلاعات</h3>
						<p style="font-size: 16px; background: #FFFFB2;"><strong>توجه: </strong> کارفرمای محترم در صورتی که صحت اطلاعات را تائید میکنید گزینه ثبت تغییرات را بفشارید</p>
						<input type="button" value="ثبت تغیــیرات" id="addButton" style="width:100%; margin-top: 15px;" />
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
	
	$("#logo").click(function() {
    $("input[id='logo_change']").click();
	});
})


</script>


</html>
