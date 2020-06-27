<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Servlet.DBConnect"%>

<%
DBConnect.getConnectionAWS("voter");
Object Login = session.getAttribute("IsLoggedIn");
String Email = (String)session.getAttribute("login_email");

if(Email == null)
{
response.sendRedirect("index.jsp");
}

else if(Login == null)
{
response.sendRedirect("index.jsp");
}

%>
<!DOCTYPE html>
<html>
	<head>

		<!-- Basic -->
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">	

		<title>Vote Here</title>

		<meta name="keywords" content="HTML5 Template" />
		<meta name="description" content="Porto - Responsive HTML5 Template">
		<meta name="author" content="okler.net">

		<!-- Favicon -->
		<link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon" />
		<link rel="apple-touch-icon" href="img/apple-touch-icon.png"/>

		<!-- Mobile Metas -->
		<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1.0, shrink-to-fit=no">

		<!-- Web Fonts  -->
		<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800%7CShadows+Into+Light%7CPlayfair+Display:400" rel="stylesheet" type="text/css">

		<!-- Vendor CSS -->
		<link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css"/>
		<link rel="stylesheet" href="vendor/fontawesome-free/css/all.min.css"/>
		<link rel="stylesheet" href="vendor/animate/animate.min.css">
		<link rel="stylesheet" href="vendor/simple-line-icons/css/simple-line-icons.min.css"/>
		<link rel="stylesheet" href="vendor/owl.carousel/assets/owl.carousel.min.css"/>
		<link rel="stylesheet" href="vendor/owl.carousel/assets/owl.theme.default.min.css"/>
		<link rel="stylesheet" href="vendor/magnific-popup/magnific-popup.min.css"/>

		<!-- Theme CSS -->
		<link rel="stylesheet" href="css/theme.css"/>
		<link rel="stylesheet" href="css/theme-elements.css"/>
		<link rel="stylesheet" href="css/theme-blog.css"/>
		<link rel="stylesheet" href="css/theme-shop.css"/>

		<!-- Current Page CSS -->
		<link rel="stylesheet" href="vendor/rs-plugin/css/settings.css"/>
		<link rel="stylesheet" href="vendor/rs-plugin/css/layers.css"/>
		<link rel="stylesheet" href="vendor/rs-plugin/css/navigation.css"/>
		
		<!-- Demo CSS -->


		<!-- Skin CSS -->
		<link rel="stylesheet" href="css/skins/default.css"/> 

		<!-- Theme Custom CSS -->
		<link rel="stylesheet" href="css/custom.css"/>

		<!-- Head Libs -->
		<script src="vendor/modernizr/modernizr.min.js"></script>

	</head>
	<body class="loading-overlay-showing" data-plugin-page-transition data-loading-overlay data-plugin-options="{'hideDelay': 500}">
		<div class="loading-overlay">
			<div class="bounce-loader">
				<div class="bounce1"></div>
				<div class="bounce2"></div>
				<div class="bounce3"></div>
			</div>
		</div>

		<div class="body">
			<header id="header" class="header-effect-shrink" data-plugin-options="{'stickyEnabled': true, 'stickyEffect': 'shrink', 'stickyEnableOnBoxed': true, 'stickyEnableOnMobile': true, 'stickyChangeLogo': true, 'stickyStartAt': 120, 'stickyHeaderContainerHeight': 70}">
				<div class="header-body border-color-primary header-body-bottom-border">
					<div class="header-top header-top-default border-bottom-0">
						<div class="container">
							<div class="header-row py-2">
								<div class="header-column justify-content-start">
									<div class="header-row">
										<nav class="header-nav-top">
											<ul class="nav nav-pills text-uppercase text-2">
												<%
                                                                                                if(Login == null)
                                                                                                {
                                                                                                %> <li class="nav-item nav-item-anim-icon d-none d-md-block">
													<a class="nav-link pl-0" href="login.jsp"><i class="fas fa-angle-right"></i> Login</a>
												</li>
                                                                                                        <li class="nav-item nav-item-anim-icon d-none d-md-block">
													<a class="nav-link" href="Register.jsp"><i class="fas fa-angle-right"></i> Register</a>
												</li>
                                                                                               <%        
                                                                                                }
                                                                                             %>
											</ul>
										</nav>
									</div>
								</div>
								<div class="header-column justify-content-end">
									<div class="header-row">
										<nav class="header-nav-top">
											<ul class="nav nav-pills">
												<li class="nav-item">
													<a href="mailto:ce407project@gmail.com"><i class="far fa-envelope text-4 text-color-primary" style="top: 1px;"></i> info@votehere.com</a>
												</li>
												<li class="nav-item">
													<a href="tel:123-456-7890"><i class="fab fa-whatsapp text-4 text-color-primary" style="top: 0;"></i> +90 212 345 78 90</a>
												</li>
											</ul>
										</nav>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="header-container container">
						<div class="header-row">
							<div class="header-column">
								<div class="header-row">
									<div class="header-logo">
										<a href="index.jsp">
											<img alt="Porto" width="100" height="48" src="img/logo.png">
										</a>
									</div>
								</div>
							</div>
							<div class="header-column justify-content-end">
								<div class="header-row">
									<div class="header-nav header-nav-links order-2 order-lg-1">
										<div class="header-nav-main header-nav-main-square header-nav-main-effect-2 header-nav-main-sub-effect-1">
											<nav class="collapse">
												<ul class="nav nav-pills" id="mainNav">
													<li class="dropdown">
														<a class="dropdown-item" href="index.jsp">
															Home
														</a>
													</li>
													<li class="dropdown">
														<a class="dropdown-item" href="about-us.jsp">
															About Us
														</a>
													</li>
													
													<li class="dropdown">
														<a class="dropdown-item" href="faq.jsp">
															How To Vote?
														</a>
													</li>
													<li class="dropdown">
														<a class="dropdown-item" href="contact.jsp">
															Contact Us
														</a>
													</li>
                                                                                                    <%
                                                                                                      if(Login != null) 
                                                                                                      {
                                                                                                     %>
                                                                                                        <li class="dropdown">
														<a class="dropdown-item" href="logout.jsp">
															LogOut
														</a>
													</li>
                                                                                                    <%
                                                                                                      }
                                                                                                    %>

												</ul>
											</nav>
										</div>
										<ul class="header-social-icons social-icons d-none d-sm-block">
											<li class="social-icons-facebook"><a href="http://www.facebook.com/" target="_blank" title="Facebook"><i class="fab fa-facebook-f"></i></a></li>
											<li class="social-icons-twitter"><a href="http://www.twitter.com/" target="_blank" title="Twitter"><i class="fab fa-twitter"></i></a></li>
											<li class="social-icons-linkedin"><a href="http://www.linkedin.com/" target="_blank" title="Linkedin"><i class="fab fa-linkedin-in"></i></a></li>
										</ul>
										<button class="btn header-btn-collapse-nav" data-toggle="collapse" data-target=".header-nav-main nav">
											<i class="fas fa-bars"></i>
										</button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</header>

			<div role="main" class="main">

				<section class="page-header page-header-classic page-header-sm">
					<div class="container">
						<div class="row">
							<div class="col-md-8 order-2 order-md-1 align-self-center p-static">
								<h1 data-title-border>Successfully Voted</h1>
							</div>
							<div class="col-md-4 order-1 order-md-2 align-self-center">
								<ul class="breadcrumb d-block text-md-right">
									<li><a href="index.jsp">Home</a></li>
									<li class="active">Voting Process Complete</li>
								</ul>
							</div>
						</div>
					</div>
				</section>

				<div class="container pt-2">

					<div class="container">

						<div class="row">
							<div class="col">

								<div class="featured-boxes">
									<div class="row">
										<div class="col-md-12">
                                                                                        
<% 
if(Email != null && DBConnect.IsVoted(Email) == false)
{
DBConnect.setVotedStatus(Email);
DBConnect.Increment_Vote(3);
%>
<p class="lead">Successfully Voted Turhan Tunalı</p>
<p class="lead">His Current Vote is : <%=DBConnect.getVote(3)%></p>
<%
}
%>
											<p class="lead">You Can't Vote Twice</p>
                                                                                        
   									</div>
                                                                                                <meta http-equiv="Refresh" content="5;url=index.jsp">
													
												</div>
											</div>
										</div>
									</div>

								</div>
							</div>
						</div>
					</div>                         
			<footer id="footer" class="mt-0">
				<div class="footer-copyright">
					<div class="container py-2">
						<div class="row py-4">
							<div class="col text-center">
								<ul class="footer-social-icons social-icons social-icons-clean social-icons-icon-light mb-3">
									<li class="social-icons-facebook"><a href="http://www.facebook.com/" target="_blank" title="Facebook"><i class="fab fa-facebook-f"></i></a></li>
									<li class="social-icons-twitter"><a href="http://www.twitter.com/" target="_blank" title="Twitter"><i class="fab fa-twitter"></i></a></li>
									<li class="social-icons-linkedin"><a href="http://www.linkedin.com/" target="_blank" title="Linkedin"><i class="fab fa-linkedin-in"></i></a></li>
								</ul>
								<p><strong>Vote Here</strong> - Â© Copyright 2020. All Rights Reserved.</p>
							</div>
						</div>
					</div>
				</div>
			</footer>
		</div>

		<!-- Vendor -->
		<script src="vendor/jquery/jquery.min.js"></script>
		<script src="vendor/jquery.appear/jquery.appear.min.js"></script>
		<script src="vendor/jquery.easing/jquery.easing.min.js"></script>
		<script src="vendor/jquery.cookie/jquery.cookie.min.js"></script>
		<script src="vendor/popper/umd/popper.min.js"></script>
		<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
		<script src="vendor/common/common.min.js"></script>
		<script src="vendor/jquery.validation/jquery.validate.min.js"></script>
		<script src="vendor/jquery.easy-pie-chart/jquery.easypiechart.min.js"></script>
		<script src="vendor/jquery.gmap/jquery.gmap.min.js"></script>
		<script src="vendor/jquery.lazyload/jquery.lazyload.min.js"></script>
		<script src="vendor/isotope/jquery.isotope.min.js"></script>
		<script src="vendor/owl.carousel/owl.carousel.min.js"></script>
		<script src="vendor/magnific-popup/jquery.magnific-popup.min.js"></script>
		<script src="vendor/vide/jquery.vide.min.js"></script>
		<script src="vendor/vivus/vivus.min.js"></script>
		
		<!-- Theme Base, Components and Settings -->
		<script src="js/theme.js"></script>
		
		<!-- Current Page Vendor and Views -->
		<script src="vendor/rs-plugin/js/jquery.themepunch.tools.min.js"></script>
		<script src="vendor/rs-plugin/js/jquery.themepunch.revolution.min.js"></script>
		
		<!-- Theme Custom -->
		<script src="js/custom.js"></script>
		
		<!-- Theme Initialization Files -->
		<script src="js/theme.init.js"></script>

		<!-- Examples -->
		<script src="js/examples/examples.portfolio.js"></script>
	</body>
</html>
