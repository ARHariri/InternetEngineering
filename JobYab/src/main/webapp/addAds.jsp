<%-- 
    Document   : addAds
    Created on : May 20, 2016, 12:00:18 PM
    Author     : Ali
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.jobyab.models.userModel" %>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8"/>
	<title>صفحه اصلی</title>
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
				<div class="row" style="margin: 10px;">
                                    <div class="col-md-12">
                                        <form class="form-horizontal persian-form" action="addAdsController"
                                              method="post"
                                              enctype="multipart/form-data"
                                              >
                                            <div class="panel panel-default">
                                                <div class="panel-heading">
                                                    <div class="row">
                                                        <div class="col-md-2">
                                                            <img src="<% user.getImageDir(); %>" width="100px" height="100px" />
                                                        </div>
                                                        <div class="col-md-10" style="margin-top: 20px;">
                                                            <input type="text"
                                                                   class="persian-label persian-heading"
                                                                   style="color: black;"
                                                                   name="adsTitle"
                                                                   placeholder="عنوان آگهی"/>
                                                            
                                                            <br/>
                                                            <label class="persian-label persian-heading" style="font-size: 20px;">
                                                                <%
                                                                    out.print("شرکت " + user.getCompanyName());
                                                                %>
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                                            
                                                            <div class="panel-body">
                                                                <div style="margin: 15px;">
                                                                    <textarea
                                                                           rows="8"
                                                                           class="persian-label persian-text form-control"
                                                                           name="adsContent"
                                                                           placeholder="متن آگهی"></textarea>
                                                                </div>
                                                                
                                                                <hr/>
                                                                
                                                                <div style="margin: 15px;">
                                                                    <input type="file"
                                                                           name="adsImage"
                                                                           alt="عکس آگهی"/>
                                                                </div>
                                                                
                                                                <hr/>
                                                                
                                                                <div class="persian-label persian-text form-group-lg"
                                                                     style="margin: 15px;">
                                                                    <label>
                                                                        نوع کار
                                                                    </label>
                                                                    <div class="col-md-4">
                                                                        <select id="selectbasic" name="adsType" class="form-control">
                                                                            <option value="fullTime">تمام وقت</option>
                                                                            <option value="partTile">نیمه وقت</option>
                                                                            <option value="remote">دورکاری</option>
                                                                            <option value="training">کارآموزی</option>
                                                                        </select>
                                                                    </div>
                                                                </div>
                                                                
                                                                <hr/>
                                                                
                                                                <div class="persian-label persian-text"
                                                                     style="margin: 15px;">
                                                                    <label>
                                                                        بازه حقوق
                                                                    </label>
                                                                    <input type="text" name="minSalary"
                                                                           class="form-control col-lg-3"
                                                                           placeholder="کمترین حقوق"/>
                                                                    <input type="text" name="maxSalary"
                                                                           class="form-control col-lg-3"
                                                                           placeholder="بیشترین حقوق"/>
                                                                </div>
                                                                
                                                                <hr/>
                                                                
                                                                <div class="persian-label persian-text"
                                                                     style="margin: 15px;">
                                                                    <label>
                                                                        تگ آگهی (لطفاً با – تگ ها را از هم جدا کنید)
                                                                    </label>
                                                                    <input type="textarea"
                                                                           row="2"
                                                                           col="200"
                                                                           name="tagList"
                                                                           class="form-control"/>
                                                                </div>
                                                                
                                                                
                                                            </div>
                                            </div>
                                            
                                                                <% if(request.getParameter("done") == "yes"){ %>
                                            <div class="col-lg-12" id="success_message" style="visibility: collapse;">
                                                <div class="ui success message persian-label persian-text" style="size: 40px;">
                                                    <div class="header" style="font-family: persianButtonLabel;">
                                                        <label>
                                                            ثبت آگهی شما با موفقیت انجام شد
                                                        </label>
                                                    </div>
                                                </div>
                                            </div>
                                            <%} %>
                                                            
                                            <div class="form-group form-group-lg">
						<div class="col-lg-12">
                                                    <input type="submit" class="form-control btn btn-success persian-label persian-btn" value="ثبت آگهی" id="submitRegisterBtn" />
						</div>
                                            </div>
                                            
                                        </form>
                                    </div>
                                </div>
                            
			</div>
	
		</div>
	</div>
    </body>
</html>

<script>
    window.onload = function(){
        document.getElementById("success_message").style.display = "none";
        
        var location = window.Location.href;
        
        if(locatoin.indexOf('?') != -1){
            
            var resultKind = location.substr(location.indexOf('?'));
            
            if(resultKind.substr(1) == "ok")
                document.getElementById("success_message").style.display = "inline";
            else
                document.getElementById("success_message").style.display = "none";
        }
        
    };
    
    function checkValidaton(){
        
        var adsTitle = document.getElementsByName("adsTitle")[0].value;
        var adsContent = document.getElementById("adsContent")[0].value;
        
        if(adsTitle != null && adsTitle != ""
           adsContent != null && adsContent != ""){
               document.getElementById("success_message").style.display = "visible";
               
               return true;
           }
           
        document.getElementById("success_message").style.display = "none";
               
        return false;
            
    }
</script>