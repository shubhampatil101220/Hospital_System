
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
	<div class="container-fluid">
		<a class="navbar-brand" href="index.jsp"></i><i
			class="fa-solid fa-house-medical"></i> MEDI HOME</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav ms-auto mb-2 mb-lg-0">
				<c:if test="${ empty doctorObj }">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="admin_login.jsp"><i
							class="fa-solid fa-right-to-bracket"></i>ADMIN</a></li>


					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="doctor_login.jsp">DOCTOR</a></li>


					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="#">APPOINTMENT</a></li>


					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="user_login.jsp">USERS</a></li>
				</c:if>
				<c:if test="${not empty doctorObj }">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="view_patient.jsp">APPOINTMENTS</a></li>
					<div class="dropdown">
						<button class="btn btn-primary dropdown-toggle" type="button"
							id=dropdownMenuButton1 "
				 data-bs-toggle="dropdown"
							aria-expanded="false">
							<i class="fa-solid fa-circle-user"></i> ${doctorObj.fullname }
						</button>

						<ul class="dropdown-menu"
							aria-labelledby="navbarDropdownMenuButton1">
							<li><a class="dropdown-item" href="#">Edit Profile</a></li>
							<li><a class="dropdown-item" href="../doctorLogout">Log Out</a></li>

						</ul>
					</div>

				</c:if>


			</ul>

		</div>
	</div>
</nav>