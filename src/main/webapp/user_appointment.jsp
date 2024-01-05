
<%@page import="com.db.DBConnect"%>
<%@page import="com.dao.DoctorDao"%>
<%
response.setHeader("cache-control", "no-cache");
response.setHeader("cache-control", "no-store");
response.setHeader("pragma", "no-cache");
response.setDateHeader("Expires", 0);
%>

<%@page import="com.entity.Doctor"%>
<%@page import="java.util.*"%>



<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="../component/allcss.jsp"%>
<%@include file="../component/navbar.jsp"%>

<style>
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}

.backImg {
	background: linear-gradient(rgba(0, 0, 0, 0.3), rgba(0, 0, 0, .4)),
		url("img/Doctors1.jpg");
	height: 20vh;
	width: 100%;
	background-size: cover;
	background-repeat: no-repeat;
}
</style>
</head>
<body>
	<div class="container-fluid backImg p-5">
		<p class="text-center fs-2 text-white"></p>
	</div>
	<div class="container p3">
		<div class="row">
			<div class="col-md-6 p-5">
				<img height="660px"alt="" src="img/Doctor1.jpg">
			</div>
			<div class="col-md-6">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-3 text-center">User Appointment</p>
						<c:if test="${not empty errMsg}">
							<p class="fs-3 text-center text-danger">${errMsg}</p>
							<c:remove var="errMsg" scope="session" />
						</c:if>
						<c:if test="${not empty sucMsg}">
							<div class="fs-3 text-center text-success" role="alert">${sucMsg}</div>
							<c:remove var="sucMsg" scope="session" />
						</c:if>
						<form action="addAppointment" method="post">
							<input type="hidden" name="userid" value="${userObj.id }">
							<div class="col-md-6">
								<label for="inputEmail4" class="form-Label">Full Name</label> <input
									type="text" required name="fullname" class="form-control">

							</div>
							
							<div class="col-md-6">
								<label for="inputEmail4" class="form-Label">Gender</label> <select
									required name="gender" class="form-control">
									<option>--select--</option>
									<option value="male">Male</option>
									<option value="female">Female</option>
								</select>
							</div>
							
							<div class="col-md-6">
								<label for="inputEmail4" class="form-Label">Age</label> <input
									type="number" required name="age" class="form-control">
							</div>
					
					<div class="col-md-6">
						<label for="inputEmail4" class="form-Label">Appointment
							Date</label> <input type="date" required name="appointment_date"
							class="form-control">
					</div>
				 	<div class="col-md-6">
						<label for="inputEmail4" class="form-Label">Email</label> <input
						type="email" required name="email" class="form-control">
					</div>
			
			<div class="col-md-6">
				<label for="inputEmail4" class="form-Label">Phone No</label> <input
					type="number" required name="phoneno" class="form-control"
					maxlength="10">
			</div>
	
		<div class="col-md-6">
			<label for="inputEmail4" class="form-Label">Diseases</label> <input
				type="text" required name="diseases" class="form-control">
		</div>
		<div class="col-md-6">
			<label for="inputEmail4" class="form-Label">Doctor Name</label> <select
				required name="doct" class="form-control">
				<option value="">--select--</option>
				<% 
				DoctorDao dao = new DoctorDao(DBConnect.getConn());
				List<Doctor> list = dao.getAllDoctor();
				for(Doctor d: list){
					%>
					<option value="<%=d.getId()%>"><%= d.getFullname() %>(<%=d.getSpecialist() %>)</option>
				<%}
				
				%>
				
			</select>
		</div>
		<div class="col-md-12">
			<label for="inputEmail4" class="form-Label">Full Address</label>
			<textarea rows="3" cols="" required name="address"
				class="form-control"></textarea>
		</div>
		<c:if test="${ empty userObj}">
			<a href="user_login.jsp" class="col-md-6 offset-md-3 btn btn-success">Submit</a>

		</c:if>
		<c:if test="${ not empty userObj}">
		<br>
			<button type="submit" class="col-md-6 offset-md-3 btn btn-success">Submit</button>
		</c:if>
		</form>
	</div>
	</div>
	</div>



	</div>
	</div>
	<%@include file="component/footer.jsp"%>
	
</body>
</html>