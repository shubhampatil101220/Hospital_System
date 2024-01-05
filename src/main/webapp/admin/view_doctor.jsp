<%@page import="com.entity.Doctor"%>
<%@page import="com.dao.DoctorDao"%>
<%@page import="com.entity.Specialist"%>
<%@page import="com.dao.SpecialistDao"%>
<%@page import="com.db.DBConnect"%>
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
<%@include file="adminnavbar.jsp"%>

<style>
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>
</head>
<body>


			<div class="col-md-12">
				<c:if test="${not empty errMsg}">
							<p class="fs-3 text-center text-danger">${errMsg}</p>
							<c:remove var="errMsg" scope="session" />
						</c:if>
						<c:if test="${not empty sucMsg}">
							<div class="fs-3 text-center text-success" role="alert">${sucMsg}</div>
							<c:remove var="sucMsg" scope="session" />
						</c:if>
			
	
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-3 text-center">Doctor Details</p>
						<table class="table">
							<thead>
								<tr>
									<th scope="col">Full Name</th>
									<th scope="col">DOB</th>
									<th scope="col">Qualification</th>
									<th scope="col">Specialist</th>
									<th scope="col">Email</th>

									<th scope="col">Mob No</th>

									<th scope="col">Action</th>

								</tr>
							</thead>
							<tbody>
								<%
							DoctorDao dao2 =new DoctorDao(DBConnect.getConn());
							List<Doctor> list2=dao2.getAllDoctor();
							for(Doctor d: list2)
							{%>
								<tr>
									<td>
										<%=d.getFullname() %>
									</td>
									<td>
										<%=d.getDob() %>
									</td>
									<td>
										<%=d.getQualification() %>
									</td>
									<td>
										<%=d.getSpecialist() %>
									</td>
									<td>
										<%=d.getEmail() %>
									</td>
									<td>
										<%=d.getMobno() %>
									</td>
									<td><a href="edit_doctor.jsp?id=<%=d.getId() %>" class="btn btn-sm btn-primary">Edit</a> <td>
									<a  href="../deleteDoctor?id=<%=d.getId() %>" class="btn btn-sm btn-danger">Delete</a>
							
							
							<%} %></tbody>
						</table>
					</div>
				</div>

			</div>
			
		
</body>
</html>