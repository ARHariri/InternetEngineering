<%-- 
    Document   : aboutUs
    Created on : May 12, 2016, 7:22:03 PM
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

	
	<div class="container" style="margin-top: 60px; margin-right: -5px;">
		<div class="row">
                    
                    <!--Right side bar-->
                    <%@include file="rightSideBar.jsp" %>
                    
			<div class="col-md-9">
				<div class="list-group-item persian-label" style="font-size: 18px;">
					<div class="row">
						<div class="col-md-6 align-right" style="font-size: 50px; font-family:IRB">
							<p>جاب‌یاب</p>
							<p style="font-size:25px; font-family: persianButtonLabel">پیداکردن شغل مناسب شما، تخصص ماست</p>
						</div>
						<div class="col-md-6" style="text-align: left;">
							<a href="#"><img height="150" width="114" src="references/images/logo.png" /></a>
						</div>
					</div>
				</div>
				<div class="list-group-item persian-label" style="font-size: 18px">
					<p class="text-info" style="background: #FFFFB2"><strong>راه‌اندازی اولیه:</strong></p>
					<p>طرح اولیه‌ی جاب‌یاب در سال 1395 توسط سه تن از دانشجویان نرم‌افزار دانشگاه شهید بهشتی اجرا شده است. طرح اولیه‌ی این سایت در ابتدا، یک پروژه درسی در همین دانشگاه بوده است که بعدها گسترش یافته است.</p>
					<p>در برنامه‌نویسی این سایت از تکنولوژی‌های Java2E و JavaScript استفاده شده است. در توسعه فایلهای استایل با فرمت CSS نیز از چارچوب bootstrap که چارچوبی شناخته‌شده برای CSS3 است، استفاده شده است.</p>
					<p>جاب‌یاب امیدوار است بتواند قدمی نو و مؤثر در استخدامی‌های کشوری بردارد. </p>
					<p class="text-info" style="background: #FFFFB2"><strong>جاب‌یاب از دید کارفرمایان:</strong></p>
					<p>جاب‌یاب یک سایت مناسب برای کارفرمایان به منظور ثبت آگهی‌های استخدام شرکتی میباشد. کارفرمایان محترم می‌توانند با ثبت‌نام در سامانه‌ی جاب‌یاب، آگهی‌های خود را به اطلاع کارجویان برسانند.</p>
					<p class="text-info" style="background: #FFFFB2"><strong>جاب‌یاب از دید کارجویان:</strong></p>
					<p>جاب‌یاب جامعه‌ی جوانان جویای کار را مورد هدف قرار داده است. کارجویان محترم نیز می¬توانند با ثبت¬نام در سیستم جاب¬یاب، فرصتهای شغلی متنوعی را مشاهده کرده و در صورت علاقه آنها را انتخاب کنند</p>
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

</script>


</html>
