<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>High-end-SHOP</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/productDetail.css" rel="stylesheet" />
        <script type="text/javascript" src="js/wishAndChoice.js"></script>
        <script type="text/javascript" src="js/home.js"></script>
        <!-- jqure -->
        <script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    </head>
    <body>
    <% String id=(String)session.getAttribute("id"); 
    	session.setAttribute("id", id);
    %>
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container px-4 px-lg-5">
                <a class="navbar-brand" href="homePage">AZUREE</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                        <li class="nav-item"><a class="nav-link" href="homePage">Home</a></li>
                        <li class="nav-item"><a class="nav-link" href="speakerMain">Speaker</a></li>
                        <li class="nav-item"><a class="nav-link" href="interiorMain">Interior</a></li>
                        <li class="nav-item"><a class="nav-link active" aria-current="page" href="lightingMain">Lighting</a></li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Service</a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <li><a class="dropdown-item" href="as">Offline Store</a></li>
                                <li><a class="dropdown-item" href="comunity">Q & A</a></li>
                            </ul>
                        </li>
                    </ul>
                    <form class="d-flex">
                    	<c:if test="${id!=null&&id.trim().length()!=0}">
					    	<div class="container-fluid bg-light text-black">
								<div class="row">
							    	<div class="text-center" >
					      				<button type="button" class="btn" onclick="location.href='logout'">logout</button>
					      				<button type="button" class="btn" onclick="location.href='persnerInfo?id=${id}'">My</button>
					      				<button onclick="location.href='basket?id=${id}'" type="button" class="btn btn-outline-danger flex-shrink-0" style="border: none;">
					      					<i class="bi bi-heart me-1"></i>
									      	Wish
					      				</button>
									</div>
								</div>
							</div>
						</c:if>
					   <c:if test="${id==null||id.trim().length()==0}">
					    	<div class="container-fluid bg-light text-black">
								<div class="row">
							    	<div class="text-center" >
					      				<button type="button" class="btn" onclick="login('login')">Login</button>
					      				<button type="button" class="btn" onclick="login('join')">Join</button>
					      				<button type="button" class="btn" onclick="alert('????????? ??? ?????????????????????.')">My</button>
					      				<button type="button" class="btn btn-outline-danger flex-shrink-0" style="border: none;" onclick="alert('????????? ??? ?????????????????????.')">
					      					<i class="bi bi-heart me-1"></i>
					      					Wish
					      				</button>
									</div>
								</div>
							</div>
						</c:if>
                    </form>
                </div>
            </div>
        </nav>
        <!-- Product section-->
        <section class="py-5">
            <div class="container px-4 px-lg-5 my-5">
                <div class="row gx-4 gx-lg-5 align-items-center">
                	<!-- ???????????? ?????????-->
                    <div class="col-md-6">
                    	<!-- Carousel -->
						<div id="demo" class="carousel slide" data-bs-ride="carousel">
						  <!-- Indicators/dots -->
						  <div class="carousel-indicators">
						    <button type="button" data-bs-target="#demo" data-bs-slide-to="0" class="active"></button>
						    <button type="button" data-bs-target="#demo" data-bs-slide-to="1"></button>
						    <button type="button" data-bs-target="#demo" data-bs-slide-to="2"></button>
						    <button type="button" data-bs-target="#demo" data-bs-slide-to="3"></button>
						  </div>
						  
						  <!-- ??????????????? --><!-- 600 x 700 -->
						  <div class="carousel-inner">
						    <div class="carousel-item active">
						      <img src="images/lighting/detail/lightingDetail01-00.jpg" class="d-block" style="width:100%">
						    </div>
						    <div class="carousel-item">
						      <img src="images/lighting/detail/lightingDetail01-01.jpg" class="d-block" style="width:100%">
						    </div>
						    <div class="carousel-item">
						      <img src="images/lighting/detail/lightingDetail01-02.jpg" class="d-block" style="width:100%">
						    </div>
						    <div class="carousel-item">
						      <img src="images/lighting/detail/lightingDetail01-03.jpg" class="d-block" style="width:100%">
						    </div>
						  </div>
						  
						  <!-- ?????? ????????? ?????? ????????? -->
						  <button class="carousel-control-prev" type="button" data-bs-target="#demo" data-bs-slide="prev">
						    <span class="text-dark"><</span>
						  </button>
						  <button class="carousel-control-next" type="button" data-bs-target="#demo" data-bs-slide="next">
						    <span class="text-dark">></span>
						  </button>
						</div>
                    </div>
                    <div class="col-md-6">
                    	<!-- ?????? ?????? -->
                        <div class="small mb-1">Premium ??????</div>
                        
                        <!-- ?????? ?????? -->
                        <h1 class="display-5 fw-bolder">Nebula</h1>
                        
                        <!-- ?????? ?????? -->
                        <div class="fs-5 mb-5">
                            <span>?????? ????????? : 22,710,000???</span>
                        </div>
                        
                        <!-- ?????? ????????? -->
                        <p class="lead">???????????? Joris Laarman??? ????????? Nebula??? ??????????????? ????????? ????????? ?????? ?????????????????????. ????????? ??????????????? ???????????? ???????????? ?????? ?????? ???????????? ???????????? ?????????????????????.</p>
                        
                        <div class="d-flex">
                        	<c:if test="${id!=null&&id.trim().length()!=0}">
	                        	<button class="btn btn-outline-danger flex-shrink-0" type="submit" style="max-width: 10rem;" onclick="wish('3','Nebula', '${id}','lighting/detail/lightingDetail01-00')"><i class="bi bi-heart"></i> 
		                        	??????????????????
		                        </button>&nbsp;&nbsp;&nbsp;
		                        <button class="btn btn-outline-dark flex-shrink-0" type="submit" style="max-width: 10rem" onclick="choice('3','Nebula', '${id}','lighting/detail/lightingDetail01-00')">
		                        &nbsp;????????????&nbsp;
		                        </button>
		                	</c:if>
		                	<c:if test="${id==null||id.trim().length()==0}">
		                		<button class="btn btn-outline-danger flex-shrink-0" type="submit" style="max-width: 10rem;" onclick="alert('????????? ??? ?????????????????????.')"><i class="bi bi-heart"></i> 
		                        	??????????????????
		                        </button>&nbsp;&nbsp;&nbsp;
		                        <button class="btn btn-outline-dark flex-shrink-0" type="submit" style="max-width: 10rem" onclick="alert('????????? ??? ?????????????????????.')">
		                        &nbsp;????????????&nbsp;
		                        </button>
		                	</c:if>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- ?????? ?????? section-->
        <section class="py-5 bg-light">
            <div class="container px-4 px-lg-5 mt-5">
                <h2 class="fw-bolder mb-4">Related products</h2>
                <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
                    <div class="col mb-5">
                        <div class="card h-100">
                        	<!-- ?????? badge-->
                            <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem; color: # FFD700;">Premium</div>
                            <!-- ?????? ?????????-->
                            <img class="card-img-top" src="images/lighting/lightingMain00.jpg" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- ?????? ?????? ??????-->
                                    <h5 class="fw-bolder">Zeppelin 2 Pendant, White</h5>
                                    <!-- Product reviews-->
                                    <div class="d-flex justify-content-center small text-warning mb-2">
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                    </div>
                                    <!-- ?????? ?????? ??????-->
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="lightingDetail00">View options</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                        	<!-- ?????? badge-->
                            <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem; color: # FFD700;">Premium</div>
                            <!-- ?????? ?????????-->
                            <img class="card-img-top" src="images/lighting/lightingMain02.jpg" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- ?????? ?????? ??????-->
                                    <h5 class="fw-bolder">Taraxacum 88 S2 Pendant LED</h5>
                                    <!-- ?????? ??????(??? ??????) -->
                                    <div class="d-flex justify-content-center small text-warning mb-2">
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                    </div>
                                    <!-- ?????? ?????? ??????-->
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="lightingDetail02">View options</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                        	<!-- ?????? badge-->
                            <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem; color: # FFD700;">Premium</div>
                            <!-- ?????? ?????????-->
                            <img class="card-img-top" src="images/lighting/lightingMain03.jpg" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- ?????? ?????? ??????-->
                                    <h5 class="fw-bolder">Noctambule Suspension Cylinder(6 High)</h5>
                                     <!-- Product reviews-->
                                    <div class="d-flex justify-content-center small text-warning mb-2">
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                    </div>
                                    <!-- ?????? ?????? ??????-->
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="lightingDetail03">View options</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                        	<!-- ?????? badge-->
                            <div class="badge bg-danger text-white position-absolute" style="top: 0.5rem; right: 0.5rem; color: black;">Standard</div>
                            <!-- ?????? ?????????-->
                            <img class="card-img-top" src="images/lighting/lightingMain04.jpg" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- ?????? ?????? ??????-->
                                    <h5 class="fw-bolder">Superloon</h5>
                                    <!-- Product reviews-->
                                    <div class="d-flex justify-content-center small text-warning mb-2">
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                    </div>
                                    <!-- ?????? ?????? ??????-->
                                    
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="lightingDetail04">View options</a></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Footer-->
        <footer class="py-5 bg-dark">
            <div class="container"><p class="m-0 text-center text-white">(???)1????????????&nbsp;&nbsp;|&nbsp;&nbsp;????????? : ?????????&nbsp;&nbsp;|&nbsp;&nbsp;??????????????? ????????? ???????????? 146 ???????????? 3???,4???&nbsp;&nbsp;|&nbsp;&nbsp;???????????? : 1588-5890 | Fax : 02-2135-2949</p></div><br>
            <div class="container"><p class="m-0 text-center text-white">??????????????? : 815-88-00171&nbsp;&nbsp;|&nbsp;&nbsp;????????????????????? : 2015 - ???????????? - 03148???</p></div><br>
            <div class="container"><p class="m-0 text-center text-white">Copyright &copy; 2021 KOREA INFORMATION TECHNOLOGY ACADEMY. ALL RIGHTS RESERVED</p></div><br>
        </footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/productDetail.js"></script>
    </body>
</html>