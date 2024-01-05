<%@page import="com.db.DBConnect" %>
<%@page import="java.sql.Connection" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Index</title>
<%@include file="component/allcss.jsp"%>
<%@include file="component/navbar.jsp"%>
<style type="text/css">
.carousel-item:after {
content: "";
display: block;
position: absolute;
top: 0;
bottom: 0;
left: 0;
right: 0;
background: rgba(0,0,0, 0.1);
}
.carousel-caption {
top: 70%;
}
.paint-card {
box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>
</head>
<body>

	<div id="carouselExampleIndicators" class="carousel slide"
		data-bs-ride="carousel">
		<div class="carousel-indicators">
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="0" class="active" aria-current="true"
				aria-label="Slide 1"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="1" aria-label="Slide 2"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="2" aria-label="Slide 3"></button>
		</div>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="img/Doctors2.jpg" class="d-block w-100" alt="..."
					height="660px">
			</div>
			<div class="carousel-item">
				<img src="img/Doctors3.jpg" class="d-block w-100" alt="..."
					height="660px">
			</div>
			<div class="carousel-item">
				<img src="img/Doctors1.jpg" class="d-block w-100" alt="..."
					height="660px">
			</div>
		</div>
		<button class="carousel-control-prev" type="button"
			data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Previous</span>
		</button>
		<button class="carousel-control-next" type="button"
			data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Next</span>
		</button>
	</div>

	<div class="container p-3">
		<p class="text-center fs-2">Key Features of Our Hospital</p>
		<div class="row">
		<div class="col-md-8 p-5">
		<div class="row">
			<div class="col-md-6 mt-2">
				<div class="card paint-card">
					<div class="card-body">
						<h5 class="card-title">100% Safety</h5>
						<p class="card-text">Hospitals prioritize patient safety
							through advanced technology, rigorous protocols, and staff
							training, ensuring 100% well-being and reliable healthcare
							services.</p>
					</div>
				</div>
			</div>
			<div class="col-md-6 ">
				<div class="card paint-card">
					<div class="card-body">
						<h5 class="card-title">Clean Enviroment</h5>
						<p class="card-text">Hospitals prioritize cleanliness for a
							safe environment, implementing rigorous protocols, advanced
							technology, and staff training to ensure patient well-being.</p>
					</div>
				</div>
			</div>
			<div class="col-md-6 mt-2">
				<div class="card paint-card">
					<div class="card-body">
						<h5 class="card-title">Friendly Doctors</h5>
						<p class="card-text">Our hospital boasts friendly doctors
							committed to compassionate care, creating a warm, supportive
							environment for patients' well-being and comfort.</p>
					</div>
				</div>
			</div>
			<div class="col-md-6 mt-2">
				<div class="card paint-card">
					<div class="card-body">
						<h5 class="card-title">Medical Research</h5>
						<p class="card-text">Our hospital pioneers medical research,
							advancing healthcare through innovative studies, contributing to
							scientific knowledge, and improving patient outcomes.</p>
					</div>
					
				</div>
				
			</div>
			
		</div>
	</div>
	<div class="col-md-4">
			<img src="img/Doctor.jpg" height="375px" alt="">
			</div>
</div>
</div>
<hr>
<div class="container p-3">
		<p class="text-center fs-2">Our Team</p>
		
<div class="row row-cols-1 row-cols-md-4 g-4">
  <div class="col">
    <div class="card h-100">
      <img src="img/Doctor1.jpg" class="card-img-top"  alt="...">
      <div class="card-body text-center">
        <h5 class="card-title">Dr.Shubham Patil</h5>
        <p class="card-text">Surgeon.</p>
      </div>
    </div>
  </div>
  <div class="col">
    <div class="card h-100">
      <img src="img/Doctor2.webp" class="card-img-top" alt="...">
      <div class="card-body text-center">
        <h5 class="card-title">Dr.Shivam Mule</h5>
        <p class="card-text">Surgeon.</p>
      </div>
    </div>
  </div>
  
  <div class="col">
    <div class="card h-100">
      <img src="img/Doctor4.jpg" class="card-img-top" alt="...">
      <div class="card-body text-center" >
        <h5 class="card-title">Dr.Shivani Patil</h5>
        <p class="card-text">Surgeon.</p>
      </div>
    </div>
  </div>
  <div class="col">
    <div class="card h-100">
      <img src="img/Doctor3.jpg" height="406px" width="608px" class="card-img-top" alt="...">
      <div class="card-body text-center">
        <h5 class="card-title">Dr.Sonali Khanna</h5>
        <p class="card-text">Surgeon.</p>
      </div>
    </div>
  </div>
   
   
  
</div>
</div>
<%@include file="component/footer.jsp"%>

</body>
</html>