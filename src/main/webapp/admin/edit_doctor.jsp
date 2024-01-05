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
	<div class="container-fluid p-3">
		<div class="row">


			<div class="col-md-4 offset-md-4">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-3 text-center">Edit Doctor Details</p>
						<c:if test="${not empty errMsg}">
							<p class="fs-3 text-center text-danger">${errMsg}</p>
							<c:remove var="errMsg" scope="session" />
						</c:if>
						<c:if test="${not empty sucMsg}">
							<div class="fs-3 text-center text-success" role="alert">${sucMsg}</div>
							<c:remove var="sucMsg" scope="session" />
						</c:if>
						<% int id= Integer.parseInt(request.getParameter("id"));
						DoctorDao dao2 =new DoctorDao(DBConnect.getConn());
							Doctor d=dao2.getDoctorById(id);
						
						%>
						
						<form action="../updateDoctor" method="post">
							<div class="mb-3">
								<label class="form-Label">Full Name</label> <input type="text"
									required name="fullname" class="form-control" value="<%=d.getFullname() %>">

							</div>
							<div class="mb-3">
								<label class="form-Label">DOB</label> <input type="date"
									required name="dob" class="form-control"value="<%=d.getDob() %>">
							</div>
							<div class="mb-3">
								<label class="form-Label">Qualification</label> <input required
									name="qualification" type="text" class="form-control"value="<%=d.getQualification() %>">
							</div>
							<div class="mb-3">
								<label class="form-Label">Specialist</label> <select name="spec"
									required class="form-control" >
									<option><%=d.getSpecialist()%></option>
									<% SpecialistDao dao = new SpecialistDao(DBConnect.getConn());
									List<Specialist> list = dao.getAllSpecialist();
									for(Specialist s: list){ %>
									<option><%=s.getSpecialistName() %></option>
									<%
									}
									%>


								</select>
							</div>

							<div class="mb-3">
								<label class="form-Label">Email</label> <input required
									name="email" type="email" class="form-control"value="<%=d.getEmail() %>">
							</div>
							<div class="mb-3">
								<label class="form-Label">Mob No</label> <input required
									name="mobno" type="text" class="form-control" value="<%=d.getMobno() %>">
							</div>
							<div class="mb-3">
								<label class="form-Label">Password</label> <input required
									name="password" type="text" class="form-control"value="<%=d.getPassword() %>">
							</div>
							<input type="hidden" name="id" value="<%=d.getId() %>">
							<button type="submit" class="btn btn-primary">Update</button>
						</form>
					</div>
				</div>
			</div>
			</div>
			</div>
</body>
</html>