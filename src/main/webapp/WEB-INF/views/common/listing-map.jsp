<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" errorPage="common/error.jsp"%>
<%@ page import="java.net.URLEncoder"%>
<%@ page import="java.security.SecureRandom"%>
<%@ page import="java.math.BigInteger"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>Finder - Listing</title>

<!-- plugins -->
<!-- <link rel="stylesheet" type="text/css" href="resources/css/bundle.css">
<link rel="stylesheet" type="text/css" href="resources/css/style.css"> -->
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
</head>
<body>
	<!-- Preloader -->
	<div id="preloader"></div>
	<c:import url="header.jsp" />

	<!--listing with row map-->
	<div class="row-main">
		<div class="row-fullscreen">
			<div class="row-scroll-content">
				<div class="row-scroll-inner">
					<div class="row-scroll-padd">
						<div class="row mb40">
							<form>
								<div class="col-md-3 col-sm-6">
									<div class="form-group">
										<input type="text" class="form-control"
											placeholder="Keywords...">
									</div>
								</div>
								<div class="col-md-3 col-sm-6">
									<div class="form-group">
										<select class="form-control" title="Location">
											<option>Paris</option>
											<option>London</option>
											<option>New York</option>
											<option>Tokyo</option>
										</select>
									</div>
								</div>
								<div class="col-md-3 col-sm-6">
									<div class="form-group">
										<select class="form-control" title="Category">
											<option>Restaurants</option>
											<option>Jobs</option>
											<option>Property</option>
											<option>Automotive</option>
										</select>
									</div>
								</div>
								<div class="col-md-3 col-sm-6">
									<input type="button" class="btn btn-primary btn-block"
										value="Search">
								</div>
							</form>
						</div>
						<div class="row">
							<div class="col-sm-12">
								<div class="row listing-row">
									<div class="col-sm-5">
										<a href="#"><img src="resources/images/img1.jpg" alt=""
											class="img-responsive"></a>
									</div>
									<div class="col-sm-7">
										<h4>
											<a href="#">Testy spanish coffee</a>
										</h4>
										<p>It is a long established fact that a reader will be
											distracted by the readable content of a page when looking at
											its layout. distracted by the readable content of a page when
											looking at its layout.</p>
										<p>
											<strong>Price:</strong> <span>$100/Person</span>
										</p>
										<p>
											<strong>Category:</strong> <span><a href="#">Restaurants</a></span>
										</p>
										<p>
											<strong>Location:</strong> <span>London, UK</span>
										</p>
										<p>
											<strong>Rating: </strong> <span class="rating-inline">
												<i class="fa fa-star text-warning"></i> <i
												class="fa fa-star text-warning"></i> <i
												class="fa fa-star text-warning"></i> <i
												class="fa fa-star text-warning"></i> <i
												class="fa fa-star-half-empty text-warning"></i>
											</span>
										</p>
									</div>
								</div>
								<hr>
								<div class="row listing-row">
									<div class="col-sm-5">
										<a href="#"><img src="resources/images/img2.jpg" alt=""
											class="img-responsive"></a>
									</div>
									<div class="col-sm-7">
										<h4>
											<a href="#">Drinks &amp; music</a>
										</h4>
										<p>It is a long established fact that a reader will be
											distracted by the readable content of a page when looking at
											its layout. distracted by the readable content of a page when
											looking at its layout.</p>
										<p>
											<strong>Price:</strong> <span>$100/Person</span>
										</p>
										<p>
											<strong>Category:</strong> <span><a href="#">Restaurants</a></span>
										</p>
										<p>
											<strong>Location:</strong> <span>London, UK</span>
										</p>
										<p>
											<strong>Rating: </strong> <span class="rating-inline">
												<i class="fa fa-star text-warning"></i> <i
												class="fa fa-star text-warning"></i> <i
												class="fa fa-star text-warning"></i> <i
												class="fa fa-star text-warning"></i> <i
												class="fa fa-star-half-empty text-warning"></i>
											</span>
										</p>
									</div>
								</div>
								<hr>
								<div class="row listing-row">
									<div class="col-sm-5">
										<a href="#"><img src="resources/images/img3.jpg" alt=""
											class="img-responsive"></a>
									</div>
									<div class="col-sm-7">
										<h4>
											<a href="#">Brazil beaches</a>
										</h4>
										<p>It is a long established fact that a reader will be
											distracted by the readable content of a page when looking at
											its layout. distracted by the readable content of a page when
											looking at its layout.</p>
										<p>
											<strong>Price:</strong> <span>$100/Person</span>
										</p>
										<p>
											<strong>Category:</strong> <span><a href="#">Beach</a></span>
										</p>
										<p>
											<strong>Location:</strong> <span>London, UK</span>
										</p>
										<p>
											<strong>Rating: </strong> <span class="rating-inline">
												<i class="fa fa-star text-warning"></i> <i
												class="fa fa-star text-warning"></i> <i
												class="fa fa-star text-warning"></i> <i
												class="fa fa-star text-warning"></i> <i
												class="fa fa-star-half-empty text-warning"></i>
											</span>
										</p>
									</div>
								</div>
								<hr>
								<div class="row listing-row">
									<div class="col-sm-5">
										<a href="#"><img src="resources/images/img4.jpg" alt=""
											class="img-responsive"></a>
									</div>
									<div class="col-sm-7">
										<h4>
											<a href="#">Houese for tour</a>
										</h4>
										<p>It is a long established fact that a reader will be
											distracted by the readable content of a page when looking at
											its layout. distracted by the readable content of a page when
											looking at its layout.</p>
										<p>
											<strong>Price:</strong> <span>$100/Person</span>
										</p>
										<p>
											<strong>Category:</strong> <span><a href="#">Property</a></span>
										</p>
										<p>
											<strong>Location:</strong> <span>London, UK</span>
										</p>
										<p>
											<strong>Rating: </strong> <span class="rating-inline">
												<i class="fa fa-star text-warning"></i> <i
												class="fa fa-star text-warning"></i> <i
												class="fa fa-star text-warning"></i> <i
												class="fa fa-star text-warning"></i> <i
												class="fa fa-star-half-empty text-warning"></i>
											</span>
										</p>
									</div>
								</div>
								<hr>
								<div class="row listing-row">
									<div class="col-sm-5">
										<a href="#"><img src="resources/images/img5.jpg" alt=""
											class="img-responsive"></a>
									</div>
									<div class="col-sm-7">
										<h4>
											<a href="#">Bar &amp; pubs</a>
										</h4>
										<p>It is a long established fact that a reader will be
											distracted by the readable content of a page when looking at
											its layout. distracted by the readable content of a page when
											looking at its layout.</p>
										<p>
											<strong>Price:</strong> <span>$100/Person</span>
										</p>
										<p>
											<strong>Category:</strong> <span><a href="#">Bars</a></span>
										</p>
										<p>
											<strong>Location:</strong> <span>London, UK</span>
										</p>
										<p>
											<strong>Rating: </strong> <span class="rating-inline">
												<i class="fa fa-star text-warning"></i> <i
												class="fa fa-star text-warning"></i> <i
												class="fa fa-star text-warning"></i> <i
												class="fa fa-star text-warning"></i> <i
												class="fa fa-star-half-empty text-warning"></i>
											</span>
										</p>
									</div>
								</div>
								<hr>
								<div class="row listing-row">
									<div class="col-sm-5">
										<a href="#"><img src="resources/images/img6.jpg" alt=""
											class="img-responsive"></a>
									</div>
									<div class="col-sm-7">
										<h4>
											<a href="#">Swimming</a>
										</h4>
										<p>It is a long established fact that a reader will be
											distracted by the readable content of a page when looking at
											its layout. distracted by the readable content of a page when
											looking at its layout.</p>
										<p>
											<strong>Price:</strong> <span>$100/Person</span>
										</p>
										<p>
											<strong>Category:</strong> <span><a href="#">Swim</a></span>
										</p>
										<p>
											<strong>Location:</strong> <span>London, UK</span>
										</p>
										<p>
											<strong>Rating: </strong> <span class="rating-inline">
												<i class="fa fa-star text-warning"></i> <i
												class="fa fa-star text-warning"></i> <i
												class="fa fa-star text-warning"></i> <i
												class="fa fa-star text-warning"></i> <i
												class="fa fa-star-half-empty text-warning"></i>
											</span>
										</p>
									</div>
								</div>
								<hr>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="row-map-fullscreen">
				<div id="mapCanvas"></div>
			</div>
		</div>
	</div>
	<!--/listing with row map-->
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDKqla_6D1Y4uuTMgslpJvmDnUn5P05BtU"></script>
	<script>
		function initMap() {
			var map;
			var bounds = new google.maps.LatLngBounds();
			var mapOptions = {
				mapTypeId : 'roadmap'
			};

			// Display a map on the web page
			map = new google.maps.Map(document.getElementById("mapCanvas"),
					mapOptions);
			map.setTilt(50);

			// Multiple markers location, latitude, and longitude
			var markers = [
					[ 'Mayfield, Franklin Ave', 40.674930, -73.956694 ],
					[ 'CATFISH, Brooklyn', 40.674140, -73.953695 ],
					[ 'Chavelas, Brooklyn', 40.673447, -73.957197 ],
					[ 'Chavelas, Brooklyn', 40.672070, -73.957282 ],
					[ 'Chavelas, Brooklyn', 40.677261, -73.957196 ] ];

			// Info window content
			var infoWindowContent = [
					[ '<div class="info_content">'
							+ '<h4 class="font300">Mayfield, Franklin Ave</h4>'
							+ '<p>1800-483-2882</p><p><a href="#">support@franklin.com</a></p>'
							+ '</div>' ],
					[ '<div class="info_content">'
							+ '<h4 class="font300">CATFISH</h4>'
							+ '<p>1800-483-2882</p><p><a href="#">support@catfish.com</a></p>'
							+ '</div>' ],
					[ '<div class="info_content">'
							+ '<h4 class="font300">Chavelas, Brooklyn</h4>'
							+ '<p>1800-483-2882</p><p><a href="#">support@chavelas.com</a></p>'
							+ '</div>' ],
					[ '<div class="info_content">'
							+ '<h4 class="font300">Barboncino Pizza</h4>'
							+ '<p>1800-483-2882</p><p><a href="#">support@cino.com</a></p>'
							+ '</div>' ],
					[ '<div class="info_content">'
							+ '<h4 class="font300">Bergn Bars</h4>'
							+ '<p>1800-483-2882</p><p><a href="#">support@bergn.com</a></p>'
							+ '</div>' ] ];

			// Add multiple markers to map
			var infoWindow = new google.maps.InfoWindow(), marker, i;

			// Place each marker on the map  
			for (i = 0; i < markers.length; i++) {
				var position = new google.maps.LatLng(markers[i][1],
						markers[i][2]);
				bounds.extend(position);
				marker = new google.maps.Marker({
					position : position,
					map : map,
					title : markers[i][0]
				});

				// Add info window to marker    
				google.maps.event.addListener(marker, 'click', (function(
						marker, i) {
					return function() {
						infoWindow.setContent(infoWindowContent[i][0]);
						infoWindow.open(map, marker);
					};
				})(marker, i));

				// Center the map to fit all markers on the screen
				map.fitBounds(bounds);
			}

			// Set zoom level
			var boundsListener = google.maps.event.addListener((map),
					'bounds_changed', function(event) {
						this.setZoom(16);
						google.maps.event.removeListener(boundsListener);
					});

		}
		// Load initialize function
		google.maps.event.addDomListener(window, 'load', initMap);
	</script>
	<!--footer-->
	<%-- <footer>
		<c:import url="footer.jsp" />
	</footer> --%>
</body>
</html>