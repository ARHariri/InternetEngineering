<%-- 
    Document   : Policies
    Created on : May 12, 2016, 7:23:02 PM
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
					<p class="text-info" style="background: #FFFFB2"><strong>کاربر گرامی، براي عضویت در این وب‌ سایت، لطفا قوانین استفاده از آن را به‌ دقت مطالعه فرماييد. توجه نمائید كه آغاز عضويت و شروع استفاده شما از این وب‌ سایت، به منزله موافقت شما با قوانین اعلام ‌شده برای استفاده از آن میباشد.</strong></p>
					<p>1. این وب سایت تابع قوانین جمهوری اسلامی ایران می باشد.</p>
					<p>2. کپی مطلب از این وب سایت با ذکر منبع بلامانع است.</p>
					<p>3. علیرغم اینکه مدیریت سایت نیز می تواند نظرات را  ویرایش ، حذف و تایید کند  وظیفه اصلی  این کار بر عهده خود عضو می باشد.</p>
					<p>4. توهین به هر شخص ،  نژاد ، قوم و زبانی در این سایت ممنوع می باشد.</p>
					<p>5. تمامی اعضا  باید توجه کافی را برای نگه داری از پسورد خود داشته باشند.</p>
					<p>6. پخش مطالب با محتوای نامناسب تخلف شمرده میشود.</p>
					<p>7. جاب یاب مسئولیتی در قبال آگهی های استخدام ندارد و تنها معرفی میکند</p>
					<p>8. ثبت نام و فعالیت هر شخصی در سایت با هر زبان ، نژاد و محل سکونتی در سایت  آزاد است.</p>
					<p>9. چنانچه اطلاعات ناقص از سوی کاربر ارائه گردد؛ تیم جاب یاب بر اساس صلاحدید خود اقدام به اصلاح و یا حذف اطلاعات ارائه شده می نماید</p>
					<p>10. استفاده از هرگونه کرالر (Crawler) یا ابزار مشابه جهت مرور یا کپی خودکار صفحات و اطلاعات سایت جاب یاب پیگرد قانونی خواهد داشت</p>
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
