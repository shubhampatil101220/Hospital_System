<%@page import="com.db.DBConnect"%>
<%@page import="com.entity.Appointment"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.AppointmentDao"%>
<%@page import="com.dao.DoctorDao"%>
<%@page import="com.entity.Doctor"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<style>
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>
</head>
<body>
<%@include file="../component/allcss.jsp"%>
<%@include file="../doctor/doctornavbar.jsp"%>
<div class="container p-3">
<div class="row">
<c:if test="${ empty doctorObj }">
			<c:redirect url="../doctor_login.jsp"></c:redirect>
		</c:if>
		<div class="col-md-12">
				<div class="card paint-card">
					<div class="card-body">
					<c:if test="${not empty sucMsg }">
			<p class="text-center text-success fs-3">${sucMsg}</p>
			<c:remove var="sucMsg" scope="session" />
		</c:if>
		<c:if test="${not empty errMsg }">
			<p class="text-center text-danger fs-3">${errMsg}</p>
			<c:remove var="errMsg" scope="session" />
		</c:if>
						<p class="fs-3 fw-bold text-center text-success">Patient Details
							</p>
						
							<table class="table">
								<thead>
									<tr>
										<th scope="col">Full Name</th>
										<th scope="col">Gender</th>
										<th scope="col">Age</th>
										<th scope="col">Appoint Date</th>
										<th scope= "col">Email</th>
										<th scope="col">Mob no</th>
										<th scope="col">Diseases</th>
										<th scope="col">Status</th>
										<th scope="col">Doctor Name</th>


									</tr>
								</thead>
								<tbody>
									<%
									Doctor d = (Doctor) session.getAttribute("doctorObj");
									AppointmentDao dao = new AppointmentDao(DBConnect.getConn());
									
									List<Appointment> list = dao.getAllAppointmentDoctorLogin(d.getId());
									for (Appointment ap : list) {
										
									%><tr>
										<th><%=ap.getFullName()%></th>
										<td><%=ap.getGender()%></td>
										<td><%=ap.getAge()%></td>
										<td><%=ap.getAppointDate()%></td>
										<td><%=ap.getEmail()%></td>
										<td><%=ap.getPhoneNo()%></td>
										<td><%=ap.getDiseases()%></td>
										<td><%=ap.getStatus()%></td>
										
										<td>
										<%
										if("Pending".equals(ap.getStatus()))
										{%>
										 <a href="comment.jsp?id=<%=ap.getId() %>"
											class="btn btn-success btn-sm">Comment</a>
											<%}else{%>
												 <a href="#"
															class="btn btn-success btn-sm disabled">Comment</a>
														<%}	
														%>
											
										</td>
									</tr>
									<%
									}
									%>

								</tbody>

							</table>
						
					</div>
				</div>
			</div>
			</div>
			</div>
</body>
</html>