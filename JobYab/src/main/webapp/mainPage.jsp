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

	
	<div class="" style="margin-top: 60px; margin-right: 10px; margin-left: 10px; margin-bottom: 10px;">
		<div class="row">
                    
                    <!--Right side bar-->
                    <%@include file="rightSideBar.jsp" %>

			<div class="col-md-9">
				<div class="row" style="margin: 10px;" id="jobSeekerAdv" name="jobSeeker">
					<div class="col-md-12">
						<div class="panel panel-default">
							<div class="panel-heading">
								<div class="row">
									<div class="col-md-2">
										<img src="references/images/default-co-logo.png" width="100px" height="100px" />
									</div>
									<div class="col-md-10" style="margin-top: 20px;">
										<label class="persian-label persian-heading">
											آگهی شرکت
										</label>
										<br/>
										<label class="persian-label persian-heading" style="font-size: 20px;">
											نام شرکت
										</label>
									</div>
								</div>
							</div>

							<div class="panel-body">
								<div style="margin: 15px;">
									<label class="persian-label persian-text">
										خلاصه ای از آگهی شرکت
									</label>
									<hr/>
									<a href="" class="persian-label" style="direction: ltr;">درخواست برای این آگهی</a>
								</div>
							</div>

						</div>
					</div>
				</div>

				<div class="row" style="margin: 10px; position: relative;" id="employerHeading" name="employer">
					<div class="col-md-12">
						<div class="panel panel-default">
							<div class="row">
								<div class="col-md-2">
									<img src="references/images/default-co-logo.png" width="100px" height="100px" />
								</div>
								<div class="col-md-10" style="margin-top: 20px; text-align: center;">
									<label class="persian-label persian-heading" style="color: blue;">
										نام شرکت
									</label>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="row" style="margin: 10px;" id="employerAdv" name="adsPanels">
					<div class="col-md-12">
						<div class="panel panel-default">
							<div class="panel-heading">
								<div class="row">
									<div class="col-md-2">
										<img src="references/images/default-co-logo.png" width="100px" height="100px" />
									</div>
									<div class="col-md-10" style="margin-top: 20px;">
										<label class="persian-label persian-heading">
											آگهی شرکت
										</label>
										<br/>
										<label class="persian-label persian-heading" style="font-size: 20px;">
											نام شرکت
										</label>
									</div>
								</div>
							</div>

							<div class="panel-body">
								<div style="margin: 15px;">
									<label class="persian-label persian-text">
										خلاصه ای از آگهی شرکت
									</label>
									<hr/>
									<a href="" class="persian-label" style="direction: ltr;">ویرایش</a>
								</div>
							</div>

						</div>
					</div>
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
            
            var req;
            
            var url = "loadAds?q=" + encodeURIComponent("ads");
            
            if(typeof XMLHttpRequest != "undefined"){
                req = new XMLHttpRequest();
            }
            else if(window.ActiveXObject){
                req = new ActiveXObject("Microsoft.XMLHTTP");
            }
            
            req.open("GET",url, true);
            req.onreadystatechange = callback;
            req.send(null);
        
	};
        
        function callback(){
            if(req.readyState == 4){
                if(req.status == 200){
                    
                    var mainParent = document.getElementsByName("adsPanels")[0];
                    
                    var brTag = document.createElement("br");
                    var hrTag = document.createElement("hr");
                    
                    //Parse XML response
                    var xmlResponse = req.responseXML.getElementsByTagName("ads");
                    
                    for(var index=0; index< xmlResponse.length; index++){
                        //Get title
                        var title = xmlResponse[index].getElementsByTagName("adsTitle")[0].nodeValue;
                        
                        //Get companyName
                        var companyName = xmlResponse[index].getElementsByTagName("adsCompanyName")[0].nodeValue;
                        
                        //Get companyImage
                        var companyImage = xmlResponse[index].getElementsByTagName("adsCompanyImage")[0].nodeValue;
                        
                        //Get content
                        var content = xmlResponse[index].getElementsByTagName("adsContent")[0].nodeValue;
                        
                        //Get type
                        var type = xmlResponse[index].getElementsByTagName("adsType")[0].nodeValue;
                        
                        //Get minSalary
                        var minSalary = xmlResponse[index].getElementsByTagName("adsMinSalary")[0].nodeValue;
                        
                        //Get maxSalary
                        var maxSalary = xmlResponse[index].getElementsByTagName("adsMaxSalary")[0].nodeValue;
                        
                        //Get adsImage
                        var image = xmlResponse[index].getElementsByTagName("adsImage")[0].nodeValue;
                        
                        //Get tags
                        var tags = xmlResponse[index].getElementsByTagName("adsTag");
                        
                        //Create html object
                        
                        //body of ads
                        var div = document.createElement("div");
                        div.className = "col-md-12";
                        
                        var panelDefaultDiv = document.createElement("div");
                        panelDefaultDiv.className = "panel panel-default";
                        div.appendChild(panelDefaultDiv);
                        
                        var panelHeadingDiv = document.createElement("div");
                        panelHeadingDiv.className = "panel-heading";
                        panelDefaultDiv.appendChild(panelHeadingDiv);
                        
                        var div1 = document.createElement("div");
                        div1.className = "row";
                        panelHeadingDiv.appendChild(div1);
                        
                        var div2 = document.createElement("div");
                        div2.className = "col-md-2";
                        div1.appendChild(div2);
                        
                        var img = document.createElement("img");
                        img.src = companyImage;
                        img.width = "80px";
                        img.height = "80px"
                        div2.appendChild(img);
                        
                        var div3 = document.createElement("div");
                        div3.className = "col-md-10";
                        div3.style = "margin-top: 20px;";
                        
                        var titleLabel = document.createElement("label");
                        titleLabel.className = "persian-label persian-heading";
                        titleLabel.value = title;
                        
                        div3.appendChild(titleLabel);
                        div3.appendChild(brTag);
                        
                        var companyNameLabel = document.createElement("label");
                        companyNameLabel.className = "persian-label persian-heading";
                        companyNameLabel.style = "font-size: 20px;";
                        companyNameLabel.value = companyName;
                        
                        div3.appendChild(companyNameLabel);
                        
                        div1.appendChild(div3);
                        
                        //body of ads
                        var panelBodyDiv = document.createElement("div");
                        panelBodyDiv.className = "panel-body";
                        panelDefaultDiv.appendChild(panelBodyDiv);
                        
                        var div4 = document.createElement("div");
                        div4.style = "margin: 15px;";
                        
                        if(image != "null"){
                            var bodyImage = document.createElement("img");
                            img.src = image;
                            img.width = "300px";
                            img.height = "100px";
                            div4.appendChild(bodyImage);
                            div4.appendChild(hrTag);
                        }
                        
                        var bodyLabel = document.createElement("label");
                        bodyLabel.className = "persian-label persian-text";
                        div4.appendChild(bodyLabel);
                        div4.appendChild(hrTag);
                        
                        panelBodyDiv.appendChild(div4);
                        
                        
                        mainParent.appendChild(div);
                    }
                    
                }
            }
        }

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
