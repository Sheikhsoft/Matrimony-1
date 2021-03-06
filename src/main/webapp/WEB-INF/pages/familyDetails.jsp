<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://displaytag.sf.net" prefix="display"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Aarna Matrimony">
    <meta name="author" content="Aarna Matrimony">

    <title>Aarna Matrimony</title>

    <!-- Bootstrap core CSS -->
    <link href="user/vendor/bootstrap/css/bootstrap.css" rel="stylesheet">
           
    <script src="user/js/ie-emulation-modes-warning.js"></script>
    <link href="user/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<link rel="stylesheet" href="user/vendor/woocommerce-FlexSlider/flexslider.css" type="text/css" media="screen" />
    <link href="user/css/style.css" rel="stylesheet">
    <link href="user/css/custom.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="user/css/component.css" />
    <script src="user/js/modernizr.custom.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style>
.dispnone
{
	display: none !important;
}
.hiddencss
{
	visibility: hidden;
}
body {
	background:#F1F1F2;
}
.container { background:#FFF;}
.ilogo { padding:15px 0; border-bottom:12px solid #F1F1F2 }
.control-label { text-align:left;}
.midcontnet { border-bottom:12px solid #F1F1F2; padding-bottom:40px; }
.manditory{color: red;}

.your-class::-webkit-input-placeholder {color: #e73d4a !important;}
.your-class::-moz-placeholder {color: #e73d4a !important;}

.default-class::-webkit-input-placeholder {color: #e73d4a !important;}
.default-class::-moz-placeholder {color: #e73d4a !important;}





/* body{margin:40px;} */

.stepwizard-step p {
    margin-top: 10px;    
}

.stepwizard-row {
    display: table-row;
}

.stepwizard {
    display: table;     
    width: 100%;
    position: relative;
}

.stepwizard-step button[disabled] {
    opacity: 1 !important;
    filter: alpha(opacity=100) !important;
}

.stepwizard-row:before {
    top: 14px;
    bottom: 0;
    position: absolute;
    content: " ";
    width: 100%;
    height: 1px;
    background-color: #ccc;
    z-order: 0;
    
}

.stepwizard-step {    
    display: table-cell;
    text-align: center;
    position: relative;
}

.btn-circle {
  width: 30px;
  height: 30px;
  text-align: center;
  padding: 6px 0;
  font-size: 12px;
  line-height: 1.428571429;
  border-radius: 15px;
}
</style>

  </head>

  <body>
  
  
  
  
        <div class="container">
            <div class="row">
            <div class="ilogo">
            <div class="col-md-7 col-sm-7">
              <img src="user/images/logo.jpg" class="img-responsive">
            </div>
            <div class="col-md-5 col-sm-12">
            	<!-- <div class="stepwizard">
				    <div class="stepwizard-row">
				        <div class="stepwizard-step">
				            <button type="button" id="step1" class="btn btn-default btn-circle">1</button>
				            <p>Cart</p>
				        </div>
				        <div class="stepwizard-step">
				            <button type="button" id="step2" class="btn btn-default btn-circle">2</button>
				            <p>Shipping</p>
				        </div>
				        <div class="stepwizard-step">
				            <button type="button" id="step3" class="btn btn-default btn-circle">3</button>
				            <p>Shipping</p>
				        </div>
				        <div class="stepwizard-step">
				            <button type="button"  id="step4" class="btn btn-default btn-circle" >4</button>
				            <p>Payment</p>
				        </div> 
				    </div>
				</div> -->
            </div>
            <div  class="clearfix"></div>    
    		</div>
     </div>
     
   <div class="row">
   <div class="midcontnet">
   
   <div class="col-md-8">
   <form:form commandName="familyDetails" action="saveImproveFamilyDetails" class="form-horizontal" id="saveImproveFamilyDetails"  method="post">
<fieldset>

<!-- 2nd Step starts here-->
<div id="secondForm">
    <div class="col-md-12">
      <h3>Please share some details about Cvbc's Family</h3>
    </div>
    <div class="form-group">
      <label class="col-md-4 control-label" for="textinput">Father Name</label>  
      <div class="col-md-8">
      	<form:input path="fatherName" class="form-control onlyCharacters" placeholder="Enter Father Name"/>
      </div>
    </div>
    <div class="form-group">
      <label class="col-md-4 control-label" for="textinput">Mother Name</label>  
      <div class="col-md-8">
      	<form:input path="motherName" class="form-control onlyCharacters" placeholder="Enter Mother Name"/>
      </div>
    </div>
    <div class="form-group">
      <label class="col-md-4 control-label" for="textinput">Father's Occupation</label>  
      <div class="col-md-8">
      	<form:select path="fOccupation" class="form-control u1" >
	<form:options items="${maleOccupation}"></form:options>
		</form:select>
      </div>
    </div>
    
    <div class="form-group">
      <label class="col-md-4 control-label" for="textinput">Mother's Occupation</label>  
      <div class="col-md-8">
      	<form:select path="mOccupation" class="form-control u1" >
      	<form:options items="${occupation}"></form:options>
		</form:select>
      </div>
    </div>
<!--     fatherName, motherName, fOccupation, mOccupation, noOfBrothers, noOfSisters, noOfBrothersMarried, noOfSistersMarried -->
    <div class="form-group">
      <label class="col-md-4 control-label" for="textinput">No. of Brothers</label>  
      <div class="col-md-2">
      	<form:select path="noOfBrothers" class="form-control u1">
			<form:option value="">-- Select --</form:option>
			<form:option value="1">1</form:option>
			<form:option value="2">2</form:option>
			<form:option value="3">3</form:option>
		</form:select>
      </div>
      <label class="col-md-2">of whom</label>
      <div class="col-md-2">
      	<form:select path="noOfBrothersMarried" class="form-control u1">
			<form:option value="">-- Select --</form:option>
			<form:option value="1">1</form:option>
			<form:option value="2">2</form:option>
			<form:option value="3">3</form:option>
		</form:select>
      </div>
      <label class="col-md-2">are married</label>
    </div>
    
    <div class="form-group">
      <label class="col-md-4 control-label" for="textinput">No. of Sisters</label>  
      <div class="col-md-2">
      	<form:select path="noOfSisters" class="form-control u1">
			<form:option value="">-- Select --</form:option>
			<form:option value="1">1</form:option>
			<form:option value="2">2</form:option>
			<form:option value="3">3</form:option>
		</form:select>
      </div>
      <label class="col-md-2">of whom</label>
      <div class="col-md-2">
      	<form:select path="noOfSistersMarried" class="form-control u1">
			<form:option value="">-- Select --</form:option>
			<form:option value="1">1</form:option>
			<form:option value="2">2</form:option>
			<form:option value="3">3</form:option>
		</form:select>
      </div>
      <label class="col-md-2">are married</label>
    </div>
    

    <div class="form-group">
      <label class="col-md-4 control-label" for="textinput"></label>  
      <div class="col-md-6">
    	<button type="button" id="secondButton" class="btn2 btn btn-info" onclick="submitForm()">Continue</button>
<!--     	<button type="button" id="skipsecondButton" class="btn2 btn btn-info" onclick="skip()">Skip</button> -->
    	<a style="color: blue;text-decoration: none;" href="${baseurl}/uploadPhotos">&nbsp;&nbsp;Skip</a>
      </div>
    </div>
</div>
<!-- 2nd Step ends here-->

</fieldset>
</form:form>
   
   </div>
   
   <div class="col-md-4">
     <img src="user/images/pad.jpg" class="img-responsive">
   </div>
    
   <div class="clearfix"></div>
   
   </div>
   
   </div>  
     

     
    
    
    <footer class="footer" id="footer"><!-- Section id-->
    	<div class="row">
            	<div class="col-md-6 col-sm-6">
                	<div class="logo-footer">
                    	<img src="user/images/logo-b.png" alt="" class="img-responsive" />
                    </div>
                </div>
                <div class="col-md-6 col-sm-6">
                	<div class="contact-info">
                        <h5>Our Office</h5>
                        <p class="fs-12 address"><i class="fa fa-map-marker"></i>#### ###### ######,</p>
                        <p class="fs-12"><i class="fa fa-phone"></i>+91 ##########</p>
                	</div>
                </div>
            </div>
			<div class="row">
                <div class="col-md-6 col-sm-6">
                	<div class="social">
                    	<ul class="list-inline">
                        	<li><a href="#" ><i class="fa fa-facebook"></i></a></li>
                            <li><a href="#" ><i class="fa fa-twitter"></i></a></li>
                            <li><a href="#" ><i class="fa fa-instagram"></i></a></li>
                            <li><a href="#" ><i class="fa fa-pinterest-p"></i></a></li>
                        </ul>
                    </div>                	
                </div>
                <div class="col-md-6 col-sm-6">
                	<div class="contact-info">
                        <p class="email-add"><span>Email:</span> info@############.com</p>
                    </div>
                </div>                
            </div>
    </footer>
        </div>
        <div class="copyright clearfix">
            <div class="">
                <p class="copy">Copyright 2017  | All Rights Reserved</p>
		    </div>
        </div>
    
               
    
    <script src="user/js/ie10-viewport-bug-workaround.js"></script>
    <script src="user/vendor/jquery/jquery.min.js"></script>
    <script src="user/vendor/bootstrap/js/bootstrap.min.js"></script>
    <script src="user/vendor/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
    <script src="user/vendor/scrollreveal/scrollreveal.min.js"></script>
    <script src="user/js/theme.js"></script>
    <script src="user/js/custom.js"></script>
    <script defer src="user/vendor/woocommerce-FlexSlider/jquery.flexslider.js"></script>
    <script src="user/js/toucheffects.js"></script>
    <script src="js/custemValidation.js"></script>
    <script src="js/ajax.js"></script>
    <script type="text/javascript" >
    	function submitForm(){
    		$("#saveImproveFamilyDetails").submit();
    	}
    
	    function skip(){
	    	var location = "${baseurl}";
	    	window.location.href =location+"/uploadPhotos";
	    	
	    }
    </script>

</body>

</html>
