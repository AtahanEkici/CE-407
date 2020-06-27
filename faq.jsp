<%@page import="Servlet.DBConnect"%><%@page contentType="text/html" pageEncoding="UTF-8"%><%DBConnect.getConnectionAWS("voter");boolean Is_Voted = true;String Email = (String)session.getAttribute("login_email");Object Login = session.getAttribute("IsLoggedIn");if(Email != null){Is_Voted = DBConnect.IsVoted(Email);}%><!DOCTYPE html><html>	<head>		<!-- Basic -->		<meta charset="ISO-8859-1">		<meta http-equiv="X-UA-Compatible" content="IE=edge">			<title>Vote Here</title>		<meta name="keywords" content="HTML5 Template" />		<meta name="description" content="Porto - Responsive HTML5 Template">				<!-- Favicon -->		<link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon" />		<link rel="apple-touch-icon" href="img/apple-touch-icon.png"/>		<!-- Mobile Metas -->		<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1.0, shrink-to-fit=no">		<!-- Web Fonts  -->		<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800%7CShadows+Into+Light%7CPlayfair+Display:400" rel="stylesheet" type="text/css">		<!-- Vendor CSS -->		<link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">		<link rel="stylesheet" href="vendor/fontawesome-free/css/all.min.css">		<link rel="stylesheet" href="vendor/animate/animate.min.css">		<link rel="stylesheet" href="vendor/simple-line-icons/css/simple-line-icons.min.css">		<link rel="stylesheet" href="vendor/owl.carousel/assets/owl.carousel.min.css">		<link rel="stylesheet" href="vendor/owl.carousel/assets/owl.theme.default.min.css">		<link rel="stylesheet" href="vendor/magnific-popup/magnific-popup.min.css">		<!-- Theme CSS -->		<link rel="stylesheet" href="css/theme.css">		<link rel="stylesheet" href="css/theme-elements.css">		<link rel="stylesheet" href="css/theme-blog.css">		<link rel="stylesheet" href="css/theme-shop.css">		<!-- Current Page CSS -->		<link rel="stylesheet" href="vendor/rs-plugin/css/settings.css">		<link rel="stylesheet" href="vendor/rs-plugin/css/layers.css">		<link rel="stylesheet" href="vendor/rs-plugin/css/navigation.css">				<!-- Demo CSS -->		<!-- Skin CSS -->		<link rel="stylesheet" href="css/skins/default.css"> 		<!-- Theme Custom CSS -->		<link rel="stylesheet" href="css/custom.css">		<!-- Head Libs -->		<script src="vendor/modernizr/modernizr.min.js"></script>	</head>	<body class="loading-overlay-showing" data-plugin-page-transition data-loading-overlay data-plugin-options="{'hideDelay': 500}">		<div class="loading-overlay">			<div class="bounce-loader">				<div class="bounce1"></div>				<div class="bounce2"></div>				<div class="bounce3"></div>			</div>		</div>		<div class="body">			<header id="header" class="header-effect-shrink" data-plugin-options="{'stickyEnabled': true, 'stickyEffect': 'shrink', 'stickyEnableOnBoxed': true, 'stickyEnableOnMobile': true, 'stickyChangeLogo': true, 'stickyStartAt': 120, 'stickyHeaderContainerHeight': 70}">				<div class="header-body border-color-primary header-body-bottom-border">					<div class="header-top header-top-default border-bottom-0">						<div class="container">							<div class="header-row py-2">								<div class="header-column justify-content-start">									<div class="header-row">										<nav class="header-nav-top">											<ul class="nav nav-pills text-uppercase text-2">												<%                                                                                                if(Login == null)                                                                                                {                                                                                                %> <li class="nav-item nav-item-anim-icon d-none d-md-block">													<a class="nav-link pl-0" href="login.jsp"><i class="fas fa-angle-right"></i> Login</a>												</li>                                                                                                        <li class="nav-item nav-item-anim-icon d-none d-md-block">													<a class="nav-link" href="Register.jsp"><i class="fas fa-angle-right"></i> Register</a>												</li>                                                                                               <%                                                                                                        }                                                                                             %>											</ul>										</nav>									</div>								</div>								<div class="header-column justify-content-end">									<div class="header-row">										<nav class="header-nav-top">											<ul class="nav nav-pills">												<li class="nav-item">													<a href="mailto:mail@domain.com"><i class="far fa-envelope text-4 text-color-primary" style="top: 1px;"></i> info@votehere.com</a>												</li>												<li class="nav-item">													<a href="tel:123-456-7890"><i class="fab fa-whatsapp text-4 text-color-primary" style="top: 0;"></i> +90 212 345 78 90</a>												</li>											</ul>										</nav>									</div>								</div>							</div>						</div>					</div>					<div class="header-container container">						<div class="header-row">							<div class="header-column">								<div class="header-row">									<div class="header-logo">										<a href="index.jsp">											<img alt="Porto" width="100" height="48" src="img/logo.png">										</a>									</div>								</div>							</div>							<div class="header-column justify-content-end">								<div class="header-row">									<div class="header-nav header-nav-links order-2 order-lg-1">										<div class="header-nav-main header-nav-main-square header-nav-main-effect-2 header-nav-main-sub-effect-1">											<nav class="collapse">												<ul class="nav nav-pills" id="mainNav">													<li class="dropdown">														<a class="dropdown-item" href="index.jsp">															Home														</a>													</li>													<li class="dropdown">														<a class="dropdown-item" href="about-us.jsp">															About Us														</a>													</li>													<%                                                                                                            if(Is_Voted == false)                                                                                                            {                                                                                                            %>                                                                                                            <li class="dropdown">														<a class="dropdown-item" href="vote.jsp">															Vote														</a>													    </li>                                                                                                          <%                                                                                                            }                                                                                                         %>													<li class="dropdown">														<a class="dropdown-item" href="faq.jsp">															How To Vote?														</a>													</li>													<li class="dropdown">														<a class="dropdown-item" href="contact.jsp">															Contact Us														</a>													</li>                                                                                                     <%                                                                                                      if(Login != null)                                                                                                       {                                                                                                     %>                                                                                                        <li class="dropdown">														<a class="dropdown-item" href="logout.jsp">															LogOut														</a>													</li>                                                                                                    <%                                                                                                      }                                                                                                    %>                                                                                                    												</ul>											</nav>										</div>										<ul class="header-social-icons social-icons d-none d-sm-block">											<li class="social-icons-facebook"><a href="http://www.facebook.com/" target="_blank" title="Facebook"><i class="fab fa-facebook-f"></i></a></li>											<li class="social-icons-twitter"><a href="http://www.twitter.com/" target="_blank" title="Twitter"><i class="fab fa-twitter"></i></a></li>											<li class="social-icons-linkedin"><a href="http://www.linkedin.com/" target="_blank" title="Linkedin"><i class="fab fa-linkedin-in"></i></a></li>										</ul>										<button class="btn header-btn-collapse-nav" data-toggle="collapse" data-target=".header-nav-main nav">											<i class="fas fa-bars"></i>										</button>									</div>								</div>							</div>						</div>					</div>				</div>			</header>			<div role="main" class="main">				<section class="page-header page-header-classic page-header-sm">					<div class="container">						<div class="row">							<div class="col-md-8 order-2 order-md-1 align-self-center p-static">								<h1 data-title-border>How To Vote</h1>							</div>							<div class="col-md-4 order-1 order-md-2 align-self-center">								<ul class="breadcrumb d-block text-md-right">									<li><a href="index.jsp">Home</a></li>									<li class="active">How To Vote</li>								</ul>							</div>						</div>					</div>				</section>				<div class="container py-4">					<div class="row">						<div class="col">							<h2 class="font-weight-normal text-7 mb-2">Read Carefully Before <strong class="font-weight-extra-bold">Voting Process</strong></h2>							<p class="lead">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur pellentesque neque eget diam posuere porta. Quisque ut nulla at nunc. Proin adipiscing porta tellus, ut feugiat nibh adipiscing sit amet. In eu justo a felis faucibus ornare vel id metus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In eu libero ligula.</p>							<hr class="solid my-5">							<div class="toggle toggle-primary" data-plugin-toggle>								<section class="toggle active">									<label>Curabitur eget leo at velit imperdiet vague iaculis vitaes?</label>									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur eget leo at velit imperdiet varius. In eu ipsum vitae velit congue iaculis vitae at risus. Nullam tortor nunc, bibendum vitae semper a, volutpat eget massa. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer fringilla, orci sit amet posuere auctor, orci eros pellentesque odio, nec pellentesque erat ligula nec massa. Aenean consequat lorem ut felis ullamcorper posuere gravida tellus faucibus. Maecenas dolor elit, pulvinar eu vehicula eu, consequat et lacus. Duis et purus ipsum. In auctor mattis ipsum id molestie. Donec risus nulla, fringilla a rhoncus vitae, semper a massa. Vivamus ullamcorper, enim sit amet consequat laoreet, tortor tortor dictum urna, ut egestas urna ipsum nec libero. Nulla justo leo, molestie vel tempor nec, egestas at massa. Aenean pulvinar, felis porttitor iaculis pulvinar, odio orci sodales odio, ac pulvinar felis quam sit.</p>								</section>								<section class="toggle">									<label>Curabitur eget leo at velit imperdiet viaculis vitaes?</label>									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur eget leo at velit imperdiet varius. In eu ipsum vitae velit congue iaculis vitae at risus. Nullam tortor nunc, bibendum vitae semper a, volutpat eget massa.</p>								</section>								<section class="toggle">									<label>Curabitur eget leo at velit imperdiet varius iaculis vitaes?</label>									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur eget leo at velit imperdiet varius. In eu ipsum vitae velit congue iaculis vitae at risus. Nullam tortor nunc, bibendum vitae semper a, volutpat eget massa. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer fringilla, orci sit amet posuere auctor, orci eros pellentesque odio, nec pellentesque erat ligula nec massa. Aenean consequat lorem ut felis ullamcorper posuere gravida tellus faucibus. Maecenas dolor elit, pulvinar eu vehicula eu, consequat et lacus. Duis et purus ipsum. In auctor mattis ipsum id molestie. Donec risus nulla, fringilla a rhoncus vitae, semper a massa. Vivamus ullamcorper, enim sit amet consequat laoreet, tortor tortor dictum urna, ut egestas urna ipsum nec libero. Nulla justo leo, molestie vel tempor nec, egestas at massa. Aenean pulvinar, felis porttitor iaculis pulvinar, odio orci sodales odio, ac pulvinar felis quam sit.</p>								</section>								<section class="toggle">									<label>Curabitur eget leo at velit imperdiet vague iaculis vitaes?</label>									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur eget leo at velit imperdiet varius. In eu ipsum vitae velit congue iaculis vitae at risus. Nullam tortor nunc, bibendum vitae semper a, volutpat eget massa. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer fringilla, orci sit amet posuere auctor, orci eros pellentesque odio, nec pellentesque erat ligula nec massa. Aenean consequat lorem ut felis ullamcorper posuere gravida tellus faucibus. Maecenas dolor elit, pulvinar eu vehicula eu, consequat et lacus. Duis et purus ipsum. In auctor mattis ipsum id molestie. Donec risus nulla, fringilla a rhoncus vitae, semper a massa. Vivamus ullamcorper, enim sit amet consequat laoreet, tortor tortor dictum urna, ut egestas urna ipsum nec libero. Nulla justo leo, molestie vel tempor nec, egestas at massa. Aenean pulvinar, felis porttitor iaculis pulvinar, odio orci sodales odio, ac pulvinar felis quam sit.</p>								</section>								<section class="toggle">									<label>Curabitur eget leo at velit imperdiet viaculis vitaes?</label>									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur eget leo at velit imperdiet varius. In eu ipsum vitae velit congue iaculis vitae at risus. Nullam tortor nunc, bibendum vitae semper a, volutpat eget massa.</p>								</section>								<section class="toggle">									<label>Curabitur eget leo at velit imperdiet varius iaculis vitaes?</label>									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur eget leo at velit imperdiet varius. In eu ipsum vitae velit congue iaculis vitae at risus. Nullam tortor nunc, bibendum vitae semper a, volutpat eget massa. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer fringilla, orci sit amet posuere auctor, orci eros pellentesque odio, nec pellentesque erat ligula nec massa. Aenean consequat lorem ut felis ullamcorper posuere gravida tellus faucibus. Maecenas dolor elit, pulvinar eu vehicula eu, consequat et lacus. Duis et purus ipsum. In auctor mattis ipsum id molestie. Donec risus nulla, fringilla a rhoncus vitae, semper a massa. Vivamus ullamcorper, enim sit amet consequat laoreet, tortor tortor dictum urna, ut egestas urna ipsum nec libero. Nulla justo leo, molestie vel tempor nec, egestas at massa. Aenean pulvinar, felis porttitor iaculis pulvinar, odio orci sodales odio, ac pulvinar felis quam sit.</p>								</section>							</div>						</div>					</div>				</div>			</div>			<footer id="footer" class="mt-0">				<div class="footer-copyright">					<div class="container py-2">						<div class="row py-4">							<div class="col text-center">								<ul class="footer-social-icons social-icons social-icons-clean social-icons-icon-light mb-3">									<li class="social-icons-facebook"><a href="http://www.facebook.com/" target="_blank" title="Facebook"><i class="fab fa-facebook-f"></i></a></li>									<li class="social-icons-twitter"><a href="http://www.twitter.com/" target="_blank" title="Twitter"><i class="fab fa-twitter"></i></a></li>									<li class="social-icons-linkedin"><a href="http://www.linkedin.com/" target="_blank" title="Linkedin"><i class="fab fa-linkedin-in"></i></a></li>								</ul>								<p><strong>Vote Here</strong> - Â© Copyright 2020. All Rights Reserved.</p>							</div>						</div>					</div>				</div>			</footer>		</div>		<!-- Vendor -->		<script src="vendor/jquery/jquery.min.js"></script>		<script src="vendor/jquery.appear/jquery.appear.min.js"></script>		<script src="vendor/jquery.easing/jquery.easing.min.js"></script>		<script src="vendor/jquery.cookie/jquery.cookie.min.js"></script>		<script src="vendor/popper/umd/popper.min.js"></script>		<script src="vendor/bootstrap/js/bootstrap.min.js"></script>		<script src="vendor/common/common.min.js"></script>		<script src="vendor/jquery.validation/jquery.validate.min.js"></script>		<script src="vendor/jquery.easy-pie-chart/jquery.easypiechart.min.js"></script>		<script src="vendor/jquery.gmap/jquery.gmap.min.js"></script>		<script src="vendor/jquery.lazyload/jquery.lazyload.min.js"></script>		<script src="vendor/isotope/jquery.isotope.min.js"></script>		<script src="vendor/owl.carousel/owl.carousel.min.js"></script>		<script src="vendor/magnific-popup/jquery.magnific-popup.min.js"></script>		<script src="vendor/vide/jquery.vide.min.js"></script>		<script src="vendor/vivus/vivus.min.js"></script>		<script src="js/vendor/jquery-3.1.0.js"></script>        <script src="js/vendor/bootstrap.min.js"></script>        <script src="js/vendor/aws-cognito-sdk.min.js"></script>        <script src="js/vendor/amazon-cognito-identity.min.js"></script>        <script src="js/config.js"></script>        <script src="js/cognito-auth.js"></script>				<!-- Theme Base, Components and Settings -->		<script src="js/theme.js"></script>				<!-- Current Page Vendor and Views -->		<script src="vendor/rs-plugin/js/jquery.themepunch.tools.min.js"></script>		<script src="vendor/rs-plugin/js/jquery.themepunch.revolution.min.js"></script>				<!-- Theme Custom -->		<script src="js/custom.js"></script>				<!-- Theme Initialization Files -->		<script src="js/theme.init.js"></script>		<!-- Examples -->		<script src="js/examples/examples.portfolio.js"></script>		<!-- Google Analytics: Change UA-XXXXX-X to be your site's ID. Go to http://www.google.com/analytics/ for more information.		<script>			(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){			(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),			m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)			})(window,document,'script','//www.google-analytics.com/analytics.js','ga');					ga('create', 'UA-12345678-1', 'auto');			ga('send', 'pageview');		</script>		 -->	</body></html>