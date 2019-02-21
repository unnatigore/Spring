<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>BookMyMovie</title>
<script type="text/javascript" src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="/webjars/bootstrap/css/bootstrap.min.css"/>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script src="webjars/jquery/jquery.min.js"></script>
<script src="../../../js/script.js"></script>
<link rel="stylesheet" href="../../../css/movie.css">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
	    var dialogShown = localStorage.getItem('dialogShown')

	    if (!dialogShown) {
	        $(window).load(function(){
	            $( "#myModal" ).modal('show');
	            localStorage.setItem('dialogShown', 1)
	        });
	    }
	    else {
	        $("#myModal").hide();
	    }
	});
</script>


</head>
<body>
	<h1>Welcome to BookMyMovie</h1>
	<div class="container unauthenticated">
		<a href="/login">Login</a>
	</div>
	<div class="container authenticated" style="display: none">
		Logged in as: <span id="user"></span>
		<div>
    		<button onClick="logout()" class="btn btn-primary">Logout</button>
  		</div>
	</div>
	
	
	<div id="myModal" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
		<!-- <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button> -->
                <h4 class="modal-title">Select Your favourite City </h4>
               
            </div>
            <div class="modal-body">
                <p>Popular Cities</p>
                <form method="POST" action="">
                   <select>  
        				<option value="" disabled selected>--Select--</option>        
       					<jstl:forEach items="${countryList}" var="data" varStatus="status">
            			<option value="${data.value}">${data.value}</option>
       	 				</jstl:forEach>
        			</select>

                    <button type="submit" class="btn btn-primary">Submit</button>
                </form>
                
            </div>
        </div>
    </div>
	</div>

<%@include file="movies.jsp" %>         
</body>
</html>