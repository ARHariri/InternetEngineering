<%-- 
    Document   : success
    Created on : May 15, 2016, 6:30:13 PM
    Author     : Ali
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <link rel="stylesheet" type="text/css" href="references/css/semanticCSS.css">
        

	<script type="text/javascript" src="references/js/bootstrap.js"></script>
	<script type="text/javascript" src="references/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="references/js/npm.js"></script>
</head>

    <body>
        <header>
		<nav class="navbar navbar-default">
			<div class="container-fluid">
				<!--<div class="navbar-header">-->
				<a class="navbar-brand" href="#">
					<img src="references/images/logo.png" height="30" width="25" />
				</a>
				<!--</div>-->
				<div class="navbar-collapse collapse">
					<!--<div class="nav navbar-nav navbar-right">-->
					<form name="loginForm" class="navbar-form navbar-right" action="login" method="post">
						<a class="control-label persian-label persian-text persian-link" href="#">رمز عبور خود را فراموش کرده ام</a>	
						<input type="text" class="form-control persian-label persian-textbox" name="loginemail" placeholder="ایمیل ..."/>
						<input type="password" class="form-control persian-label persian-textbox" id="loginPassword" name="loginpassword" placeholder="رمز عبور..."/>
						<input type="submit" class="btn btn-default persian-label persian-btn" value="ورود" />
					</form>
					<!--</div>-->
				</div>
			</div>
		</nav>
	</header>
        
        
        <div class="container-fluid" style="padding: 60px;">
		<div class="row">
                    <div class="col-sm-12">
			<div class="ui success message persian-label persian-text" style="size: 40px;">
                                <div class="header" style="font-family: persianButtonLabel;">
                                  ثبت نام شما با موفقیت انجام شد
                                </div>
                            <p>می توانید با ایمیل خود وارد شوید</p>
                        </div>
                    </div>
                </div>
                
                <div class="col-sm-12">
                    <form action="index.jsp" method="get">
                        <div class="form-group form-group-lg">
                            <div class="col-lg-12">
                                <input type="submit" class="form-control btn btn-success persian-label persian-btn" value="ثبت نام" id="submitRegisterBtn" />
                            </div>
                        </div>
                    </form>
                </div>
        </div>
    </body>
</html>
