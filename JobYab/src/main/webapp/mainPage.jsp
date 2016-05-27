<%-- 
    Document   : mainPage
    Created on : May 11, 2016, 7:39:09 PM
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

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.1/jquery.min.js"></script>
	<script type="text/javascript" src="references/js/bootstrap.js"></script>
	<script type="text/javascript" src="references/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="references/js/npm.js"></script>
	<script type="text/javascript" src="references/js/jquery.min.js"></script>
	<script type="text/javascript" src="references/js/jquery-1.11.1.js"></script>
	<script type="text/javascript" src="references/js/bootstrap.rtl.min.js"></script>
        <script type="text/javascript" src="references/js/loadingAds-ajax.js"></script>


</head>
<body>
	<!--Header bar-->
        <%@include file="header.jsp" %>
	
	<div class="" style="margin-top: 60px; margin-right: 10px; margin-left: 10px; margin-bottom: 10px;">
		<div class="row">
                    
                    <!--Right side bar-->
                    <%@include file="rightSideBar.jsp" %>

			<div class="col-md-9">
                            <div class="row" style="margin: 10px;" id="adsPanels">
                            </div>
			</div>

	
		</div>
	</div>

</body>


<script type="text/javascript">
	window.onload = function()
	{
            //document.getElementById("UserName").innerHTML = "Ali Alavi";
        
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

	function ShowSearch()
	{
		var searchBox = document.getElementById("SimpleSearchBox").style.display;

		if(searchBox == "none")
		{
			document.getElementById("SimpleSearchBox").style.display = "inline";
		}
		else if(searchBox == "inline")
		{
			document.getElementById("SimpleSearchBox").style.display = "none";
		}
	}

</script>


</html>
