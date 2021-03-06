<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://displaytag.sf.net" prefix="display"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<%@page import="com.aurospaces.neighbourhood.bean.UsersBean"%>
<html>
<head>
<title>View Profiles</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script> -->
<!-- //for-mobile-apps -->
<link href="user/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="user/css/style-profile.css" rel="stylesheet" type="text/css" media="all" />
<link href="user/css/megamenu.css" rel="stylesheet" type="text/css" media="all" />
<!-- js -->
<script src="user/js/jquery-1.11.1.min.js"></script>
<!-- //js -->
<!-- start-smoth-scrolling -->
<!-- <script type="text/javascript" src="user/js/move-top.js"></script>
<script type="text/javascript" src="user/js/easing.js"></script>
<script type="text/javascript" src="user/js/megamenu.js"></script>
<script>$(document).ready(function(){$(".megamenu").megamenu();});</script>
<script src="user/js/menu_jquery.js"></script>
<link href='http://fonts.googleapis.com/css?family=Monda:400,700' rel='stylesheet' type='text/css'> -->
<!-- the jScrollPane script -->
<!-- <script type="text/javascript" src="js/jquery.jscrollpane.min.js"></script>
		<script type="text/javascript" id="sourcecode">
			$(function()
			{
				$('.scroll-pane').jScrollPane();
			});
		</script> -->
<!-- //the jScrollPane script -->
</head>
	
<body>
<%
UsersBean userBean = null;
if(session.getAttribute("cacheGuest") != null){
	userBean= (UsersBean)session.getAttribute("cacheGuest");
}
%>
<!-- top-header -->

<!-- top-header -->
<!-- logo-cart -->
<div class="header_top">
	<div class="container">
    <div class=" col-md-3">
		<div class="logo">
		 	<img src="user/images/logo1.jpg" class="img-responsive" >
	  </div>
      <div class="clearfix"></div>
      </div>
      
      <div class="col-md-4 ">
      <div class=" box_1 midfont">
		<p> <a href="#">Matches</a>  <span class="badge badge-notify">30</span>&nbsp;&nbsp;&nbsp;
        <a href="#">Search</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <a href="#">Inbox</a>  <span class="badge badge-notify">30</span></p>
        
        </div>      
      </div>
      
		<div class="col-md-5">
			<div class="cart box_1">
				<p>Dear, <%= userBean.getFirstName() %> <%= userBean.getLastName() %> | &nbsp;&nbsp;<a href="paymentDetails" >Upgrade</a> &nbsp;&nbsp;|&nbsp;&nbsp; <a href="#" >Help</a> &nbsp;&nbsp;|&nbsp;&nbsp; <a href="logoutHome" >Signout</a></p>
				<div class="clearfix"> </div>
			</div>				 
		</div>
        
        
        
	</div>
</div>
<!-- //logo-cart -->
<!------>
<div class="top_bg">
	
</div>
<div class="mega_nav">
	 <div class="container">
		 <div class="menu_sec">
		 <!-- start header menu -->
		<ul class="megamenu skyblue">
			<li><a class="color1" href="dashboard">Dashboard</a></li>
			<li><a class="color1" href="myProfile">My Profile</a></li>
            <li><a class="color1" href="myPhotos">My Photos</a></li>
            <li><a class="color1" href="searchProfiles">Search</a></li>
             <li><a class="color1" href="#">More</a></li>
		</ul> 
			<div class="clearfix"></div>
		 </div>
	  </div>
</div>
<!---->
<!-- products -->
	<div class="products">
		<div class="container">
			<div class="col-md-12 products-grid-left">
					
	            <div class="panel panel-default">
	            
		            <div class="panel-body">
		            	<%-- <div class="row" style="margin-bottom: 0.4em;">
					      	<c:forEach items="${photosList}" var="photo" >
					      		<div class="col-md-2">
					      			<img src="${photo.image}" class="img-responsive thumbnail" style="margin-bottom:0;">
					      		</div>
							</c:forEach>
					    	
					    </div> --%>
						<div class="col-md-3">
							 <c:if test="${not empty profileBean.profileImage}">
								<img id="profImage" src="${profileBean.profileImage}" class="img-responsive thumbnail" style="margin-bottom:0;">
							</c:if>
							<c:if test="${empty profileBean.profileImage}">
								<img src="img/default.png" class="img-responsive thumbnail" style="margin-bottom:0;">
							</c:if> 
							<c:forEach items="${photosList}" var="photo" >
					      		
					      			<a href="#" onclick="displayImage('${photo.image}')"><b>O</b></a>
					      		
							</c:forEach><br>
							<label><b>${profileBean.username}</b></label>
		            	</div>
		            	<div class="col-md-9 well">
			            	<table>
			            		<tr><th>Name</th><th>:</th><td style="text-align: left;padding-left: 10px;"><span>${profileBean.firstName}</span></td></tr>
			            		<tr><th>SurName</th><th>:</th><td style="text-align: left;padding-left: 10px;"><span>${profileBean.lastName} </span></td></tr>
			            		<tr><th>Gender</th><th>:</th><td style="text-align: left;padding-left: 10px;"><span>${profileBean.gender} </span></td></tr>
			            		<tr><th>Date of Birth</th><th>:</th><td style="text-align: left;padding-left: 10px;"><span>${profileBean.dob} </span></td></tr>
			            		<tr><th>Caste</th><th>:</th><td style="text-align: left;padding-left: 10px;"><span>${profileBean.casteName} </span></td></tr>
			            		<tr><th>Religion</th><th>:</th><td style="text-align: left;padding-left: 10px;"><span>${profileBean.religionName}</span></td></tr>
			            		<tr><th>Marital Status</th><th>:</th><td style="text-align: left;padding-left: 10px;"><span>${profileBean.maritalStatus}</span></td></tr>
			            		<tr><th>Education</th><th>:</th><td style="text-align: left;padding-left: 10px;"><span>${profileBean.educationName} </span></td></tr>
			            		<tr><th>Profession</th><th>:</th><td style="text-align: left;padding-left: 10px;"><span>${profileBean.occupationName}</span></td></tr>
			            		<tr><th>Working with</th><th>:</th><td style="text-align: left;padding-left: 10px;"><span>${profileBean.workingWith}</span></td></tr>
			            		<tr><th>Annual Income</th><th>:</th><td style="text-align: left;padding-left: 10px;"><span>${profileBean.annualIncome}</span></td></tr>
			            		<tr><th>City</th><th>:</th><td style="text-align: left;padding-left: 10px;"><span>${profileBean.currentCityName} </span></td></tr>
			            		<tr><th>State</th><th>:</th><td style="text-align: left;padding-left: 10px;"><span>${profileBean.currentStateName} </span></td></tr>
			            		<tr><th>Country</th><th>:</th><td style="text-align: left;padding-left: 10px;"><span>${profileBean.currentCountryName} </span></td></tr>
			            		
			            		
			            		<tr><th>Mothertongue</th><th>:</th><td style="text-align: left;padding-left: 10px;"><span>${profileBean.motherTongueName} </span></td></tr>
			            		<tr><th>E-mail</th><th>:</th><td style="text-align: left;padding-left: 10px;"><span>${profileBean.email} </span></td></tr>
			            		<tr><th>Gotram</th><th>:</th><td style="text-align: left;padding-left: 10px;"><span>${profileBean.gotram} </span></td></tr>
			            		<tr><th>Nakshatram</th><th>:</th><td style="text-align: left;padding-left: 10px;"><span>${profileBean.starName} </span></td></tr>
			            		<tr><th>Dosham</th><th>:</th><td style="text-align: left;padding-left: 10px;"><span>${profileBean.dosam} </span></td></tr>
			            		<tr><th>Dosham Name</th><th>:</th><td style="text-align: left;padding-left: 10px;"><span>${profileBean.dosamName} </span></td></tr>
			            		<tr><th>Diet</th><th>:</th><td style="text-align: left;padding-left: 10px;"><span>${profileBean.diet} </span></td></tr>
			            		<tr><th>Smoking</th><th>:</th><td style="text-align: left;padding-left: 10px;"><span>${profileBean.smoking} </span></td></tr>
			            		<tr><th>Drinking</th><th>:</th><td style="text-align: left;padding-left: 10px;"><span>${profileBean.drinking} </span></td></tr>
			            		<tr><th>Height</th><th>:</th><td style="text-align: left;padding-left: 10px;"><span>${profileBean.heightInches} </span></td></tr>
			            		<tr><th>Body Type</th><th>:</th><td style="text-align: left;padding-left: 10px;"><span>${profileBean.bodyTypeName} </span></td></tr>
			            		<tr><th>Complexion</th><th>:</th><td style="text-align: left;padding-left: 10px;"><span>${profileBean.complexionName} </span></td></tr>
			            		<tr><th>Disability</th><th>:</th><td style="text-align: left;padding-left: 10px;"><span>${profileBean.disability} </span></td></tr>
			            	</table>
		            	</div>
		         	</div>
	            </div>
				</div>
		</div>
				<div class="clearfix"></div>
	</div>
<!-- //products -->
<!-- footer -->
	<div class="footer">
		<div class="container">
			<div class="col-md-3 footer-grid">
				<h6>About us</h6>
				<p>Suspendisse sed accumsan risus. Curabitur rhoncus, elit vel tincidunt elementum, nunc urna tristique nisi, in interdum libero magna .</p>
			</div>
			<div class="col-md-3 footer-grid">
				<h6>Search</h6>
				<ul>
					<li><a href="#">About Us</a></li>
					<li><a href="#">Privacy Policy</a></li>
					<li><a href="#">Terms &amp; Conditions</a></li>
				</ul>
			</div>
			<div class="col-md-3 footer-grid">
				<h6>My Account</h6>
				<ul>
					<li><a href="#">My Account</a></li>
					<li><a href="#">My Profile</a></li>
					<li><a href="#">My Interest</a></li>
				</ul>
			</div>
			<div class="col-md-3 footer-grid">
				<h6>Extras</h6>
				<ul>
					<li><a href="#">Login</a></li>
					<li><a href="#">Register</a></li>
					<li><a href="#">Help</a></li>
				</ul>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<div class="footer-copy">
		<p>© 2017. All rights reserved.</p>
	</div>

<!-- //footer -->
<input type="hidden" name="loc" id="loc" value="${baseurl }" />
<script src="js/ajax.js"></script>
<script type="text/javascript">



function displayMobileNum(profileId,listType){
	 var profileObj = serviceUnitArray[profileId];
	var formData = new FormData();
	formData.append('profile_id',profileId);
	formData.append('list_type',listType);
	jQuery.fn.makeMultipartRequest('POST', 'viewedMobileNumber', false,
			formData, false, 'text', function(data){
    		var jsonobj = $.parseJSON(data);
    		var msg = jsonobj.message;
    		if(typeof msg != "undefined"){
    			if(msg=="success"){
    				$("#row"+profileId).html('<td>'+profileObj.mobile+'</td>');
    			}else{
    				alert("Some problem occured. Please try again.");
    			}
    		}
    		
	}); 
	
}

function displayImage(imageName){
	$("#profImage").prop("src",imageName);
}

</script>

</body>
</html>