<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<nav class="navbar navbar-expand-lg navbar-dark bg-success">
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
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="index.jsp"><i
						class="fa-solid fa-right-to-bracket"></i>HOME</a></li>


				<li class="nav-item dropdown active"><a class="nav-link dropdown-toggle active" href="#" id="navbarScrollingDropdown" role="button"
					data-bs-toggle="dropdown" aria-expanded="false"> DOCTOR </a>
					<ul class="dropdown-menu" aria-labelledby="navbarScrollingDropdown">
						<li><a class="dropdown-item" href="doctor.jsp">Add Doctor</a></li>
						<li><a class="dropdown-item" href="view_doctor.jsp">View
								Doctors</a></li>
					</ul></li>

				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="patient.jsp">PATIENT</a></li>

			</ul>
			<form class="d-flex">
				<div class="dropdown">
					<button class="btn btn-light dropdown-toggle" type="button"
						id="dropdownMenuButton1" data-bs-toggle="dropdown"
						aria-expanded="false">Admin</button>
					<ul class="dropdown-menu"
						aria-labelledby="navbarDropdownMenuButton1">
						<li><a class="dropdown-item" href="../adminLogout">Logout</a>
					</ul>

				</div>
			</form>

		</div>
	</div>
</nav>