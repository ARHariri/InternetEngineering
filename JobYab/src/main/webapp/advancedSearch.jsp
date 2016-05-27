<%-- 
    Document   : advancedSearch
    Created on : May 12, 2016, 7:22:38 PM
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
		<div class="row persian-label">
                        
                        <!--Right side bar-->
                        <%@include file="rightSideBar.jsp" %>
                        
		<div class="col-md-9">
				<div class="text-info text-center" style="background: #FFFFB2; font-size: 18px; margin-top: 15px">
				<p>کاربر گرامی، لطفا موارد زیر را به دقت پر کنید تا نتایج بهتری را دریافت کنید.</p>
				<p>در هر مورد، با استفاده از "," موارد مختلف را از هم جدا کنید</p></div>
				<div class="list-group-item">
					<h3 class="page-header text-info"><strong>کلمات کلیدی</strong></h3>
					<p class="text-info text-center bg-info" style="font-size: 18px; margin-top: 15px">نتایج خود را به لینکهایی اختصاص دهید که کلمات کلیدی خاصی را داشته باشند</p>
                                        <form class="form-horizontal persian-form" action="" method="get">
                                            <label for="username" style="font-size: 16px">عنوان آگهی: </label>
                                            <input type="text" class="form-control persian-textbox" placeholder="شامل موارد" id="coName" name="titleInclude"/>
                                            <label for="username" style="font-size: 16px">محتوای آگهی: </label>
                                            <input type="text" class="form-control persian-textbox" placeholder="شامل موارد" id="coName" name="bodyInclude"/>
                                            <label for="username" style="font-size: 16px">شرکت متقاضی: </label>
                                            <input type="text" class="form-control persian-textbox" placeholder="نام شرکت" id="coName" name="companyName"/>
                                            <label for="username" style="font-size: 16px">موارد زیر را نداشته باشد: </label>
                                            <input type="text" class="form-control persian-textbox" placeholder="" id="coName"/>
                                            <label for="username" style="font-size: 16px">عبارت دقیق زیر را داشته باشد:</label>
                                            <input type="text" class="form-control persian-textbox" placeholder="" id="coName"/>

                                            <h3 class="page-header text-info"><strong>میزان حقوق</strong></h3>
                                            <input type="number" class="form-control" placeholder="کمترین" name="minSalary"/>
                                            <input type="number" class="form-control" placeholder="بیشترین" name="maxSalary"/>
                                            
                                            <input type="submit" value="بگرد" id="addButton" style="width:100%; margin-top: 15px;" />
                                        </form>
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
