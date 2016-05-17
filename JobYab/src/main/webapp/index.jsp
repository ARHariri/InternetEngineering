<%-- 
    Document   : index
    Created on : May 10, 2016, 6:10:21 PM
    Author     : Ali
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8"/>
	<title>Site Name</title>
	<link rel="stylesheet" type="text/css" href="references/css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="references/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="references/css/bootstrap-theme.css">
	<link rel="stylesheet" type="text/css" href="references/css/bootstrap-theme.min.css">
	<link rel="stylesheet" type="text/css" href="references/css/FontStyle.css">

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

	<div class="container-fluid" style="padding: 45px;">
		<div class="row">
			<div class="col-sm-6">
				<form class="form-horizontal persian-form" action="registerController" onsubmit="return CheckValidation();" method="post">
					<div class="form-group form-group-lg">
						<label class="col-lg-5 contol-label persian-label error-message" id="emailError" style="visibility: hidden;">خطا</label>
						<div class="col-lg-7">
							<input type="email" class="form-control persian-label persian-textbox" name="email" placeholder="ایمیل ..."/>
						</div>
					</div>

					<div class="form-group form-group-lg">
						<label class="col-lg-5 contol-label persian-label error-message" id="passwordError" style="visibility: hidden;">خطا</label>
						<div class="col-lg-7">
							<input type="password" class="form-control persian-label persian-textbox" id="registerPassword" name="password" placeholder="رمز عبور ..."/>
						</div>
					</div>

					<div class="form-group">
						<!--<div class="radio">
							<label class="persian-label persian-text" style="margin: 10px;"><input type="radio" value="jobSeeker" name="userKind" id="jobSeekeRadio" onclick="showJobSeeker();" />کارجو</label>
						</div>

						<div class="radio" >
							<label class="persian-label persian-text" style="margin: 10px;"><input type="radio" value="employer" name="userKind" id="employerRadio" onclick="showEmployer();" />کارفرما</label>
						</div>-->

						<input type="radio" value="jobSeeker" style="margin: 10px;" onclick="showJobSeeker();" id="jobSeekerRadio" name="userKind" />
						<label class="persian-label persian-text">کارجو</label>
						<br/>
						<input type="radio" value="employer" style="margin: 10px;" onclick="showEmployer();" id="employerRadio" name="userKind" />
						<label class="persian-label persian-text">کارفرما</label>
					</div>

					
					<div class="form-group" id="employer" style="display: none;">
						<div class="form-group form-group-lg">
							<label class="col-lg-5 contol-label persian-label error-message" id="companyNameError" style="visibility: hidden;">خطا</label>
							<div class="col-lg-7">
								<input type="text" class="form-control persian-label persian-textbox" name="companyName" placeholder="نام شرکت"/>
							</div>
						</div>
						
						<div class="form-group form-group-lg">
							<label class="col-lg-5 contol-label persian-label error-message" id="companyTelError" style="visibility: hidden;">خطا</label>
							<div class="col-lg-7">
								<input type="text" class="form-control persian-label persian-textbox" name="companyTel" placeholder="تلفن "/>
							</div>
							
						</div>
							
					</div>
					
					<div class="form-group" id="jobSeeker" style="display: none;">
						<div class="form-group form-group-lg">
							<label class="col-sm-5 contol-label persian-label error-message" id="firstNameError" style="visibility: hidden;">خطا</label>
							<div class="col-lg-7">
								<input type="text" class="form-control persian-label persian-textbox" name="firstName" placeholder="نام"/>
							</div>
						</div>
						
						<div class="form-group form-group-lg">
							<label class="col-lg-5 contol-label persian-label error-message" id="lastNameError" style="visibility: hidden;">خطا</label>
							<div class="col-lg-7">
								<input type="text" class="form-control persian-label persian-textbox" name="lastName" placeholder="نام خانوادگی"/>
							</div>
						</div>
							

						<div class="form-group form-group-lg persian-label">
							<label class="col-lg-3 control-label persian-label error-message" id="BirthError" style="visibility: hidden;">خطا</label>

							<div class="col-lg-2">
								<select class="form-control" name="birthDay">
									<option value="noValue">روز ...</option>
								</select>
							</div>
							
							<div class="col-lg-3">
								<select class="form-control" name="birthMonth" class="persian-label perisan-link" onchange="addDays();">
									<option value="noValue">ماه ...</option>
									<option value="1">فروردین</option>
									<option value="2">اردیبهشت</option>
									<option value="3">خرداد</option>
									<option value="4">تیر</option>
									<option value="5">مرداد</option>
									<option value="6">شهریور</option>
									<option value="7">مهر</option>
									<option value="8">آبان</option>
									<option value="9">آذر</option>
									<option value="10">دی</option>
									<option value="11">بهمن</option>
									<option value="12">اسفند</option>
								</select>
							</div>
							
							<div class="col-lg-2">
								<select class="form-control" name="birthYear" onchange="resetDropDownList();">
									<option value="noValue">سال ...</option>
								</select>
							</div>
							

							<label class="col-lg-2 persian-label persian-text">تاریخ تولد</label>

						</div>

					</div>

					<div class="form-group form-group-lg">
						<div class="col-lg-12">
							<input type="submit" class="form-control btn btn-success persian-label persian-btn" value="ثبت نام" id="submitRegisterBtn" />
						</div>
					</div>
						
				</form>
			</div>

			<div class="col-sm-6">
				<img src="references/images/pic.jpg" height="500" width="630" />
			</div>
		</div>
	</div>

</body>


<script type="text/javascript">
	window.onload = function()
	{
		//Initialize year drop down box
		var select = document.getElementsByName("birthYear")[0];

		for (var i = 1300; i <= 1420; i++)
		{
			var opt = document.createElement('option');
			opt.value = i;
			opt.innerHTML = i;
			select.appendChild(opt);
		}

		//Set disable submitRegisterBtn
		document.getElementById("submitRegisterBtn").disabled = true;


		//Add validation to log in form
		var	logInFormValidation = new Validator("loginForm");

		//Add validation to register form

	};

	function showEmployer()
	{
		document.getElementById("jobSeeker").style.display = "none";
		document.getElementById("employer").style.display = "inline";

		document.getElementById("submitRegisterBtn").disabled = false;
	}

	function showJobSeeker()
	{
		document.getElementById("employer").style.display = "none";
		document.getElementById("jobSeeker").style.display = "inline";

		document.getElementById("submitRegisterBtn").disabled = false;
	}

	function resetDropDownList()
	{
		var daySelect = document.getElementsByName("birthDay")[0];
		var dayLength = daySelect.options.length;

		for (var index = 1; index < dayLength; index++)
		{
			daySelect.remove(dayLength - index);
		}

		document.getElementsByName("birthMonth")[0].selectedIndex = 0;
	}

	function addDays()
	{
		//Clear all days (options) in birthDays dropdown box
		var select = document.getElementsByName("birthDay")[0];
		var	length = select.options.length;

		for (var i = 1; i <length ; i++)
		{
			select.remove(length - i);
		}

		//Add new days based on selected month
		for (var i = 1; i <= 29; i++)
		{
			var	opt = document.createElement("option");
			opt.value = i;
			opt.text = i;
			select.add(opt);
		}

		//Get value of selected month
		var	month = document.getElementsByName('birthMonth')[0];
		var	selectedMonth = month.options[month.selectedIndex].value;

		if(selectedMonth >= 1 && selectedMonth <= 6)
		{
			for (var i = 30; i <= 31; i++)
			{
				var	opt = document.createElement("option");
				opt.value = i;
				opt.text = i;
				select.add(opt);
			}
		}
		else if(selectedMonth >= 7 && selectedMonth <= 11)
		{
			var	opt = document.createElement("option");
			opt.value = 30;
			opt.text = 30;
			select.add(opt);
		}
		else
		{
			//Check month in kabise
			var	firstKabise = 1300;

			var	year = document.getElementsByName('birthYear')[0];
			var	selectedYear = year.options[year.selectedIndex].value;

			if( (selectedYear - firstKabise) % 4 == 0 )					//Selected year is one of the kabise year
			{
				var	opt = document.createElement("option");
				opt.value = 30;
				opt.text = 30;
				select.add(opt);
			}
		}
	}


//	function CheckValidation()
//	{
//		var email = document.getElementsByName("email")[0].value;
//		var password = document.getElementById("registerPassword").value;
//		var companyName = document.getElementsByName("companyName")[0].value;
//		var companyTel = document.getElementsByName("companyTel")[0].value;
//		var firstName = document.getElementsByName("firstName")[0].value;
//		var lastName = document.getElementsByName("lastName")[0].value;
//
//		/*var	birthYear = document.getElementsByName("birthYear")[0].value;
//		var birthMonth = document.getElementsByName("birthMonth")[0].value;
//		var	birthDay = document.getElementsByName("birthDay")[0].value;*/
//
//		var correntInfo = true;
//
//		//Check Email
//		var EmailStructure = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/
//
//		if(!EmailStructure.test(email))
//		{
//			document.getElementById("emailError").style.visibility = "visible";
//			document.getElementById("emailError").innerHTML = "ایمیل نادرست وارد شده است";
//
//			correntInfo = false;
//		}
//		else
//			document.getElementById("emailError").style.visibility = "hidden";
//
//
//		//Check Password
//		var passwordStructureAlph1 = /[a-z]/;
//		var passwordStructureAlph2 = /[A-Z]/;
//		var passwordStructureNum = /[0-9]/;
//		var passwordStructureChar = /[\~\!\@\#\$\%\^\&\*\_\+]/;
//
//		if(password.length < 8)
//		{
//			document.getElementById("passwordError").style.visibility = "visible";
//			document.getElementById("passwordError").innerHTML = "رمز عبور باید بین 8 تا 20 کاراکتر باشد";
//
//			correntInfo = false;
//		}
//		else if(password.length > 20)
//		{
//			document.getElementById("passwordError").style.visibility = "visible";
//			document.getElementById("passwordError").innerHTML = "رمز عبور باید بین 8 تا 20 کاراکتر باشد";
//
//			correntInfo = false;
//		}
//		else if(!passwordStructureAlph1.test(password))
//		{
//			document.getElementById("passwordError").style.visibility = "visible";
//			document.getElementById("passwordError").innerHTML = "رمز عبور باید شامل حداقل یک حرف کوچک باشد";
//
//			correntInfo = false;
//		}
//		else if(!passwordStructureAlph2.test(password))
//		{
//			document.getElementById("passwordError").style.visibility = "visible";
//			document.getElementById("passwordError").innerHTML = "رمز عبور باید شامل حداقل یک حرف بزرگ باشد";
//
//			correntInfo = false;
//		}
//		else if (!passwordStructureNum.test(password))
//		{
//			document.getElementById("passwordError").style.visibility = "visible";
//			document.getElementById("passwordError").innerHTML = "رمز عبور باید شامل حداقل یک عدد باشد";
//
//			correntInfo = false;
//		}
//		else if (!passwordStructureChar.test(password))
//		{
//			document.getElementById("passwordError").style.visibility = "visible";
//			document.getElementById("passwordError").innerHTML = "رمز عبور باید شامل حداقل یک علامت باشد";
//
//			correntInfo = false;
//		}
//		else
//			document.getElementById("passwordError").style.visibility = "hidden";
//
//
//		//Check which radio button checked
//		var NameStructure = /^[a-zA-Z\s]+$/;
//
//		if(document.getElementById("jobSeekerRadio").checked == true)
//		{
//			//Check first name
//			if(!NameStructure.test(firstName))
//			{
//				document.getElementById("firstNameError").style.visibility = "visible";
//				document.getElementById("firstNameError").innerHTML = "نام تنها شامل حرف می باشد";
//
//				correntInfo = false;
//			}
//			else
//				document.getElementById("firstNameError").style.visibility = "hidden";
//
//			//Check last name
//			if(!NameStructure.test(lastName))
//			{
//				document.getElementById("lastNameError").style.visibility = "visible";
//				document.getElementById("lastNameError").innerHTML = "نام خانوادگی تنها شامل حرف می باشد";
//
//				correntInfo = false;
//			}
//			else
//				document.getElementById("lastNameError").style.visibility = "hidden";
//
//			//Check birth year
//			if(document.getElementsByName("birthYear")[0].selectedIndex == 0)
//			{
//				document.getElementById("BirthError").style.visibility = "visible";
//				document.getElementById("BirthError").innerHTML = "تاریخ تولد را انتخاب کنید";
//
//				correntInfo = false;
//			}
//			else
//				document.getElementById("BirthError").style.visibility = "hidden";
//
//			//Check birth month
//			if(document.getElementsByName("birthMonth")[0].selectedIndex == 0)
//			{
//				document.getElementById("BirthError").style.visibility = "visible";
//				document.getElementById("BirthError").innerHTML = "تاریخ تولد را انتخاب کنید";
//
//				correntInfo = false;
//			}
//			else
//				document.getElementById("BirthError").style.visibility = "hidden";
//
//			//Check birth day
//			if(document.getElementsByName("birthDay")[0].selectedIndex == 0)
//			{
//				document.getElementById("BirthError").style.visibility = "visible";
//				document.getElementById("BirthError").innerHTML = "تاریخ تولد را انتخاب کنید";
//
//				correntInfo = false;
//			}
//			else
//				document.getElementById("BirthError").style.visibility = "hidden";
//		}
//		else if(document.getElementById("employerRadio").checked == true)
//		{
//			//Check compay name
//			if(!NameStructure.test(companyName))
//			{
//				document.getElementById("companyNameError").style.visibility = "visible";
//				document.getElementById("companyNameError").innerHTML = "نام شرکت تنها شامل حرف می باشد";
//
//				correntInfo = false;
//			}
//			else
//				document.getElementById("companyNameError").style.visibility = "hidden";
//
//			if(!NameStructure.test(companyTel))
//			{
//				document.getElementById("companyTelError").style.visibility = "visible";
//				document.getElementById("companyTelError").innerHTML = "شماره ی تلفن نادرست وارد شده است";
//
//				correntInfo = false;
//			}
//			else
//				document.getElementById("companyTelError").style.visibility = "hidden";
//		}
//
//		if(correntInfo == true)
//			return true;
//
//		return false;
//
//	}



</script>


</html>