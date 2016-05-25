<%-- 
    Document   : header
    Created on : May 20, 2016, 9:12:52 PM
    Author     : Ali
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.jobyab.models.userModel" %>

<%
    userModel user = (userModel) request.getSession().getAttribute("user");
    
    if(!user.isLogInned())
        response.sendRedirect("index.jsp");
%>

<!DOCTYPE html>
<html>
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
                                <a href="mainPage.jsp">خانه</a>
                            </li>
                                <%
                                    if(user.getKind().compareToIgnoreCase("jobseeker") == 0){
                                %>
                            <li name="jobSeeker">
                                <a href="advancedSearch.jsp">جست و جو</a>
                            </li>
                            <li name="jobSeeker">
                                <a href="userResume.jsp">ارسال رزومه</a>
                            </li>
                                <%  }
                                    else if(user.getKind().compareToIgnoreCase("employer") == 0) {
                                %>
                            <li name="employer">
                                <a href="addAds.jsp">ثبت آگهی</a>
                            </li>
                                <% } %>
                            <li>
                                <a href="aboutUs.jsp">درباره ما</a>
                            </li>
                            <li>
                                <a href="Policies.jsp">قوانین سایت</a>
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
</html>
