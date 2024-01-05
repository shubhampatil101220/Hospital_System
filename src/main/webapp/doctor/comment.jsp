<%@page import="com.entity.Appointment"%>
<%@page import="com.db.DBConnect"%>
<%@page import="com.dao.AppointmentDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>.paint-card {
box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
.backImg {
	background: linear-gradient(rgba(0, 0, 0, 0.3), rgba(0, 0, 0, .4)),
		url("../img/Doctors1.jpg");
	height: 20vh;
	width: 100%;
	background-size: cover;
	background-repeat: no-repeat;
}
</style>
</head>
<body>
<%@include file="../component/allcss.jsp" %>
<%@include file="doctornavbar.jsp" %>

<c:if test="${ empty doctorObj }">
			<c:redirect url="../doctor_login.jsp"></c:redirect>
		</c:if>
		<p class="text-center fs-3">Doctor Dashboard</p>
		<c:if test="${not empty sucMsg }">
			<p class="text-center text-success fs-3">${sucMsg}</p>
			<c:remove var="sucMsg" scope="session" />
		</c:if>
		<c:if test="${not empty errMsg }">
			<p class="text-center text-danger fs-3">${errMsg}</p>
			<c:remove var="errMsg" scope="session" />
		</c:if>
		<div class="container-fluid backImg p-5">
		<p class="text-center fs-2 text-white"></p>
	</div>
	<div class="container p3">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="card paint-card">
				<div class="card-body">
					<p class="text-center fs-4">Patient Comments</p>
					<%
					int id= Integer.parseInt(request.getParameter("id"));
					AppointmentDao dao = new AppointmentDao(DBConnect.getConn());
					
					Appointment ap = dao.getAppointmentById(id);
															
					%>
					<form class="row" action="../updateStatus" method="post">
					<div class="col-md-6">
						<label>Patient Name</label>
						<input type="text" readonly value="<%=ap.getFullName() %>" class="form-control">
					</div>
						<div class="col-md-6">
						<label>Age</label>
						<input type="text" readonly value="<%=ap.getAge() %>" class="form-control">
					</div>
						<div class="col-md-6">
						<label>Mob No</label>
						<input type="text" readonly value="<%=ap.getPhoneNo() %>" class="form-control">
					</div>
						<div class="col-md-6">
						<label>Diseases</label>
						<input type="text" readonly value="<%=ap.getDiseases() %>" class="form-control">
					</div>
						<div class="col-md-12">
						<label>Comment</label>
						<textarea required name="comment"  class="form-control" rows="3" cols="">
						</textarea>
					</div>
					<input type="hidden" name="id" value="<%=ap.getId() %>">
					<input type="hidden" name="did" value="<%=ap.getDoctorId() %>">
					<button class="mt-3 btn btn-primary col-md-6 offset-md-3">Submit</button>
					
					</form>
				</div>
			</div>
			</div>
			</div>
		
		</div>
		
	
</body>
</html>