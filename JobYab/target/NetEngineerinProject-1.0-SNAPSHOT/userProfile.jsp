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
        <title>جاب یاب</title>
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
        <%@include file="header.jsp" %>

	
	<div class="container persian-label" style="margin-top: 60px; margin-right: -5px;">
		<div class="row">
                    
                    <!--Right side bar-->
                    <%@include file="rightSideBar.jsp" %>
                    
			<div class="col-md-9">
				<div class="row">
					<div class="col-md-3">
                                                <div class="list-group-item">
                                                    <img src="references/images/user-default.png" width="130" height="130"/>
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
                                                <p style="font-size: 18px;"><strong>برای ارسال رزومه <a href="userResume.jsp">اینجا</a> را کلیک کنید</strong></p>
						
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
