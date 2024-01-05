<%@page import="com.entity.Doctor"%>
<%@page import="com.db.DBConnect"%>
<%@page import="com.dao.DoctorDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="../component/allcss.jsp" %>
<%@include file="doctornavbar.jsp" %>
<style>.paint-card {
box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>
</head>
<body>
<c:if test="${ empty doctorObj }">
			<c:redirect url="../doctor_login.jsp"></c:redirect>
		</c:if>
		<div class="container p-2">
		<p class="text-center fs-3">Doctor Dashboard</p>
		<c:if test="${not empty sucMsg }">
			<p class="text-center text-success fs-3">${sucMsg}</p>
			<c:remove var="sucMsg" scope="session" />
		</c:if>
		<c:if test="${not empty errMsg }">
			<p class="text-center text-danger fs-3">${errMsg}</p>
			<c:remove var="errMsg" scope="session" />
		</c:if>
		<%
		Doctor d=(Doctor)session.getAttribute("doctorObj");
		DoctorDao dao= new DoctorDao(DBConnect.getConn());
		
		%>
		<div class="row">
			<div class="col-md-4 offset-md-2">
				<div class="card paint-card">
					<div class="card-body text-center text-success">
						<i class="fas fa-user-md fa-3x"></i><br>
						<p class="fs-4 text-center">
							Doctor<br><%=dao.countDoctor() %>
						</p>
					</div>
				</div>
			</div>

		

		<div class="col-md-4" >
			<div class="card paint-card">
				<div class="card-body text-center text-success">
					<i class="far fa-calendar-check fa-3x"></i><br>
					<p class="fs-4 text-center">
						Total Appointment<br><%=dao.countAppointmentByDoctor(d.getId()) %>
					</p>
				</div>
			</div>
		</div>

	

		</div>
		</div>
	
	

		
</body>
</html>