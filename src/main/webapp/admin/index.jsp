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
<%@include file="../component/allcss.jsp"%>

<%@include file="adminnavbar.jsp"%>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>
</head>
<body>
<c:if test="${ empty adminObj }">
	<c:redirect url="../admin_login.jsp"></c:redirect>
</c:if>
	<div class="container p-5">
		<p class="text-center fs-3">Admin Dashboard</p>
		<c:if test="${not empty sucMsg }">
			<p class="text-center text-success fs-3">${sucMsg}</p>
			<c:remove var="sucMsg" scope="session" />
		</c:if>
		<c:if test="${not empty errMsg }">
			<p class="text-center text-danger fs-3">${errMsg}</p>
			<c:remove var="errMsg" scope="session" />
		</c:if>
		<% DoctorDao d= new DoctorDao(DBConnect.getConn());
		
		%>
		<div class="row">
			<div class="col-md-4">
				<div class="card paint-card">
					<div class="card-body text-center text-success">
						<i class="fas fa-user-md fa-3x"></i><br>
						<p class="fs-4 text-center">
							Doctor<br><%=d.countDoctor() %>
						</p>
					</div>
				</div>
			</div>

		

		<div class="col-md-4" data-bs-toggle="modal" data-bs-target="#exampleModal">
			<div class="card paint-card">
				<div class="card-body text-center text-success">
					<i class="fas fa-user-md fa-3x"></i><br>
					<p class="fs-4 text-center">
						Specialist<br><%=d.countSpecialist() %>
					</p>
				</div>
			</div>


		</div>

		<div class="col-md-4">
			<div class="card paint-card">
				<div class="card-body text-center text-success">
					<i class="fas fa-user-circle fa-3x"></i><br>
					<p class="fs-4 text-center">
						USer<br><%=d.countUser() %>
					</p>
				</div>
			</div>


		</div>

		<div class="col-md-4 mt-2">
			<div class="card paint-card">
				<div class="card-body text-center text-success">
					<i class="fas fa-calendar-check fa-3x"></i><br>
					<p class="fs-4 text-center">
						Total Appointment<br><%=d.countAppointment() %>
					</p>
				</div>
			</div>

		</div>
		</div>
	</div>
	
<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">Add title</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <form action="../addSpecialist" method="post">
        <div class="form-group">
        	<label>Enter Specialist Name</label>
        	<input type="text" name="specName" class="form-control">
        	</div>
        	<div class="text-center mt-3">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary">Add Specialist</button>
      </div></form>
      </div>
      
    </div>
  </div>
</div>
</body>
</html>









