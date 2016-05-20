<%-- 
    Document   : advancedSearch
    Created on : May 12, 2016, 7:22:38 PM
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
	<div class="container" style="margin-top: 60px; margin-right: -5px;">
		<div class="row persian-label">
			<div class="col-md-3 sidebar">
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
				<div class="text-info text-center" style="background: #FFFFB2; font-size: 18px; margin-top: 15px">
				<p>کاربر گرامی، لطفا موارد زیر را به دقت پر کنید تا نتایج بهتری را دریافت کنید.</p>
				<p>در هر مورد، با استفاده از "," موارد مختلف را از هم جدا کنید</p></div>
				<div class="list-group-item">
					<h3 class="page-header text-info"><strong>کلمات کلیدی</strong></h3>
					<p class="text-info text-center bg-info" style="font-size: 18px; margin-top: 15px">نتایج خود را به لینکهایی اختصاص دهید که کلمات کلیدی خاصی را داشته باشند</p>
					<label for="username" style="font-size: 16px">شامل موارد زیر باشد: </label>
					<input type="text" class="form-control persian-textbox" placeholder="" id="coName"/>
					<label for="username" style="font-size: 16px">حداقل یکی از کلمات زیر را داشته باشد:</label>
					<input type="text" class="form-control persian-textbox" placeholder="" id="coName"/>
					<label for="username" style="font-size: 16px">موارد زیر را نداشته باشد: </label>
					<input type="text" class="form-control persian-textbox" placeholder="" id="coName"/>
					<label for="username" style="font-size: 16px">عبارت دقیق زیر را داشته باشد:</label>
					<input type="text" class="form-control persian-textbox" placeholder="" id="coName"/>

					<h3 class="page-header text-info"><strong>زمان</strong></h3>
					<p class="text-info text-center bg-info" style="font-size: 18px; margin-top: 15px">نتایج خود را به لینکهایی اختصاص دهید که در بازه زمانی خاصی منتشر شده باشند</p>
					<div class="radio"  style="font-size: 18px;">
					  <label  style= "display: block"><input type="radio" name="optradio" id="anyTime">هر زمانی</label>
					  <label><input type="radio" name="optradio" id="dateRange">بازه</label>
					</div>
						
						<div class="form-group" style="display:none;" id="fromDate"><label class="col-lg-1" for="sel1" style="font-size: 18px; clear: both">از</label>
						  <div class="col-lg-2">
						  <select class="form-control" id="sel1" name="birthYear">
							 <option value="noValue">سال ...</option>
									<option value="1">1388</option>
									<option value="2">1389</option>
									<option value="3">1390</option>
									<option value="4">1391</option>
									<option value="5">1392</option>
									<option value="6">1393</option>
									<option value="7">1394</option>
									<option value="8">1395</option>
						  </select>
						  </div><div class="col-lg-2"><select class="form-control" id="sel1" onchange="addDays();" name="birthMonth">
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
						  </div><div class="col-lg-2"><select class="form-control" name="birthDay">
							 <option value="noValue">روز ...</option>
						  </select></div>
						</div>
						<div class="form-group" style="display:none;" id="toDate"><label class="col-lg-1" for="sel1" style="clear:both; font-size: 18px;">تا</label>
						  <div class="col-lg-2">
						  <select class="form-control" id="sel1" name="birthYear">
							 <option value="noValue">سال ...</option>
									<option value="1">1388</option>
									<option value="2">1389</option>
									<option value="3">1390</option>
									<option value="4">1391</option>
									<option value="5">1392</option>
									<option value="6">1393</option>
									<option value="7">1394</option>
									<option value="8">1395</option>
						  </select>
						  </div><div class="col-lg-2"><select class="form-control" id="sel1" onchange="addDays();" name="birthMonth">
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
						  </div><div class="col-lg-2"><select class="form-control" name="birthDay">
							 <option value="noValue">روز ...</option>
						  </select></div>
						</div>
					<input type="button" value="بگرد" id="addButton" style="width:100%; margin-top: 15px;" />
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
	});
	
	$('#dateRange').on('click',function(){
        $('#fromDate').show();
        $('#toDate').show();
	});
	
	$('#anyTime').on('click',function(){
        $('#fromDate').hide();
        $('#toDate').hide();
	});
})

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

</script>


</html>
