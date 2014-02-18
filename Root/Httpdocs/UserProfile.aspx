﻿<%@ page language="C#" autoeventwireup="true" inherits="UserProfile, App_Web_userprofile.aspx.cdcab7d2" %>

<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
<meta charset="utf-8">
<title>User Profile</title>

<link rel="stylesheet" href="css/user-profile.css">
<link rel='stylesheet' href='css/theme.css' />
<link rel='stylesheet' href='css/fullcalendar.css' />
<link href='http://fonts.googleapis.com/css?family=Oxygen:400,300,700' rel='stylesheet'>
<link href="http://netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css" rel="stylesheet">
<script src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
<script src="js/jquery-ui-1.10.3.custom.min.js"></script>
<script src='js/modernizr.js'></script>
</head>
<body>

<div class="container">

	<div class="left-panel">

		<div class="left-panel-user">
			<div class="user-avatar">
				<div class="user-img">
					<a class="add-friend-btn"><i class="icon icon-plus-sign"></i></a>
					<img src="img/profile-image.jpg" />
				</div>
				<div class="user-score">
					<div class="user-score--value">29</div>
					<div class="user-score--title">FiT SCORE</div>
				</div>
			</div>

			<ul class="user-nav">
				<li><a href="#about"><i class="user-nav-icon icon icon-info-sign"></i><span class="user-nav-name">About</span></a></li>
				<li><a href="#cal"><i class="user-nav-icon icon icon-calendar"></i> Calendar</a></li>
				<li><a href="#badges"><i class="user-nav-icon icon icon-certificate"></i> Badges</a></li>
				<li><a href="#places"><i class="user-nav-icon icon icon-star"></i> Places</a></li>
				<li><a href="#friends"><i class="user-nav-icon icon icon-group"></i> Friends</a></li>
				<li><a href="#reviews"><i class="user-nav-icon icon-pencil"></i> Reviews</a></li>
			</ul>
		</div>

	</div>

	<div class="profile-content">

		<section>

			<div class="user-heading row">

				<h1 class="user-name">Eleanor Roosevelt</h1>
				<p class="user-motto">You are what you eat, from your head to your feet.  So make sure to eat sensibly.</p>

			</div>

		</section>

		<section id="about">

			<div class="user-about row">

				<h4>About Me</h4>
				<p>Pellentesque malesuada, nunc mattis luctus lobortis, mauris orci rutrum diam, nec tincidunt velit turpis placerat odio. Duis eu sem eget magna consequat euismod. Cras ultrices turpis ut nulla. Duis nulla. Donec blandit turpis. Aenean metus sapien, laoreet sit amet, eleifend ut, vehicula et, risus. Sed varius. Etiam nec erat nec sapien malesuada vestibulum.</p>

			</div>

		</section>

		<section id="cal">

			<div class="user-calendar row">

				<div class="calendar-wrap">
					<h4>Calendar</h4>
					<div id='calendar' class="calendar"></div>
				</div>

				<div class="activities-wrap">
					<h4>Activities</h4>
					<div class="activities">

						<h4 class="activities--date">Mon July 8th, 2013</h4>
						<div class="activity-single">
							<h5 class="activity-single--time">1:00PM</h5>
							<p class="activity-single--summary">Pellentesque malesuada, nunc mattis luctus lobortis, mauris orci rutrum diam</p>
						</div>
						<div class="activity-single">
							<h5 class="activity-single--time">4:00PM</h5>
							<p class="activity-single--summary">Duis convallis dui nec orci. In erat. Donec mollis laoreet pede. Phasellus tincidunt. Cras faucibus tincidunt risus.</p>
						</div>

					</div>
				</div>

			</div>

		</section>

		<section id="badges">

			<div class="user-badges row">

				<h4>Badges</h4>

				<div class="badges">
					<div class="badge">
						<div class="badge-image"></div>
						<p>Badge Name</p>
					</div>
					<div class="badge">
						<div class="badge-image"></div>
						<p>Badge Name</p>
					</div>
					<div class="badge">
						<div class="badge-image"></div>
						<p>Badge Name</p>
					</div>
					<div class="badge">
						<div class="badge-image"></div>
						<p>Badge Name</p>
					</div>
					<div class="badge">
						<div class="badge-image"></div>
						<p>Badge Name</p>
					</div>
				<div>

			</div>

		</section>

		<section id="places">

			<div class="user-places row">

				<h4>Places</h4>

				<div class="places">
					<span class="places-icon"><i class="icon icon-ok"></i><span>
					<h4 class="places-title">Where I Sweat</h4>
					<div class="places--where">

						<div class="place-single">
							<img src="img/place-holder.jpg" />
							<p><span class="place-name">As One</span>
							196 Kent Avenue &#149; Brooklyn, New York 11249 &#149; 718-208-1300</p>
							<ul class="place-actions">
								<li><a href=""><i class="icon icon-ok"></i></a></li>
								<li><a href=""><i class="icon icon-heart"></i></a></li>
								<li><a href=""><i class="icon icon-star"></i></a></li>
								<li><a href=""><i class="icon icon-pencil"></i></a></li>
							</ul>
						</div>

						<div class="place-single">
							<img src="img/place-holder.jpg" />
							<p><span class="place-name">As One</span>
							196 Kent Avenue &#149; Brooklyn, New York 11249 &#149; 718-208-1300</p>
							<ul class="place-actions">
								<li><a href=""><i class="icon icon-ok"></i></a></li>
								<li><a href=""><i class="icon icon-heart"></i></a></li>
								<li><a href=""><i class="icon icon-star"></i></a></li>
								<li><a href=""><i class="icon icon-pencil"></i></a></li>
							</ul>
						</div>

						<div class="place-single">
							<img src="img/place-holder.jpg" />
							<p><span class="place-name">As One</span>
							196 Kent Avenue &#149; Brooklyn, New York 11249 &#149; 718-208-1300</p>
							<ul class="place-actions">
								<li><a href=""><i class="icon icon-ok"></i></a></li>
								<li><a href=""><i class="icon icon-heart"></i></a></li>
								<li><a href=""><i class="icon icon-star"></i></a></li>
								<li><a href=""><i class="icon icon-pencil"></i></a></li>
							</ul>
						</div>

					</div>
				</div>

				<div class="places">
					<span class="places-icon"><i class="icon icon-heart"></i><span>
					<h4 class="places-title">Favorites</h4>
					<div class="places--favs">

						<div class="place-single">
							<img src="img/place-holder.jpg" />
							<p><span class="place-name">As One</span>
							196 Kent Avenue &#149; Brooklyn, New York 11249 &#149; 718-208-1300</p>
							<ul class="place-actions">
								<li><a href=""><i class="icon icon-ok"></i></a></li>
								<li><a href=""><i class="icon icon-heart"></i></a></li>
								<li><a href=""><i class="icon icon-star"></i></a></li>
								<li><a href=""><i class="icon icon-pencil"></i></a></li>
							</ul>
						</div>

						<div class="place-single">
							<img src="img/place-holder.jpg" />
							<p><span class="place-name">As One</span>
							196 Kent Avenue &#149; Brooklyn, New York 11249 &#149; 718-208-1300</p>
							<ul class="place-actions">
								<li><a href=""><i class="icon icon-ok"></i></a></li>
								<li><a href=""><i class="icon icon-heart"></i></a></li>
								<li><a href=""><i class="icon icon-star"></i></a></li>
								<li><a href=""><i class="icon icon-pencil"></i></a></li>
							</ul>
						</div>

						<div class="place-single">
							<img src="img/place-holder.jpg" />
							<p><span class="place-name">As One</span>
							196 Kent Avenue &#149; Brooklyn, New York 11249 &#149; 718-208-1300</p>
							<ul class="place-actions">
								<li><a href=""><i class="icon icon-ok"></i></a></li>
								<li><a href=""><i class="icon icon-heart"></i></a></li>
								<li><a href=""><i class="icon icon-star"></i></a></li>
								<li><a href=""><i class="icon icon-pencil"></i></a></li>
							</ul>
						</div>

					</div>
				</div>

				<div class="places">
					<span class="places-icon"><i class="icon icon-star"></i><span>
					<h4 class="places-title">Want To Go Here</h4>
					<div class="places--wants">

						<div class="place-single">
							<img src="img/place-holder.jpg" />
							<p><span class="place-name">As One</span>
							196 Kent Avenue &#149; Brooklyn, New York 11249 &#149; 718-208-1300</p>
							<ul class="place-actions">
								<li><a href=""><i class="icon icon-ok"></i></a></li>
								<li><a href=""><i class="icon icon-heart"></i></a></li>
								<li><a href=""><i class="icon icon-star"></i></a></li>
								<li><a href=""><i class="icon icon-pencil"></i></a></li>
							</ul>
						</div>

						<div class="place-single">
							<img src="img/place-holder.jpg" />
							<p><span class="place-name">As One</span>
							196 Kent Avenue &#149; Brooklyn, New York 11249 &#149; 718-208-1300</p>
							<ul class="place-actions">
								<li><a href=""><i class="icon icon-ok"></i></a></li>
								<li><a href=""><i class="icon icon-heart"></i></a></li>
								<li><a href=""><i class="icon icon-star"></i></a></li>
								<li><a href=""><i class="icon icon-pencil"></i></a></li>
							</ul>
						</div>

						<div class="place-single">
							<img src="img/place-holder.jpg" />
							<p><span class="place-name">As One</span>
							196 Kent Avenue &#149; Brooklyn, New York 11249 &#149; 718-208-1300</p>
							<ul class="place-actions">
								<li><a href=""><i class="icon icon-ok"></i></a></li>
								<li><a href=""><i class="icon icon-heart"></i></a></li>
								<li><a href=""><i class="icon icon-star"></i></a></li>
								<li><a href=""><i class="icon icon-pencil"></i></a></li>
							</ul>
						</div>

					</div>
				</div>

			</div>

		</section>

		<section id="friends">

			<div class="user-friends row">

				<h4>Friends</h4>
				<div class="friends">
					<div class="friend-single">
						<div class="friend-img">
							<a class="add-friend-btn"><i class="icon icon-plus-sign"></i></a>
							<img src="img/profile-image.jpg" />
						</div>
						<div class="friend-name">Friend Name</div>
					</div>
					<div class="friend-single">
						<div class="friend-img">
							<a class="add-friend-btn"><i class="icon icon-plus-sign"></i></a>
							<img src="img/profile-image.jpg" />
						</div>
						<div class="friend-name">Friend Name</div>
					</div>
					<div class="friend-single">
						<div class="friend-img">
							<a class="add-friend-btn"><i class="icon icon-plus-sign"></i></a>
							<img src="img/profile-image.jpg" />
						</div>
						<div class="friend-name">Friend Name</div>
					</div>
					<div class="friend-single">
						<div class="friend-img">
							<a class="add-friend-btn"><i class="icon icon-plus-sign"></i></a>
							<img src="img/profile-image.jpg" />
						</div>
						<div class="friend-name">Friend Name</div>
					</div>
					<div class="friend-single">
						<div class="friend-img">
							<a class="add-friend-btn"><i class="icon icon-plus-sign"></i></a>
							<img src="img/profile-image.jpg" />
						</div>
						<div class="friend-name">Friend Name</div>
					</div>
					<div class="friend-single">
						<div class="friend-img">
							<a class="add-friend-btn"><i class="icon icon-plus-sign"></i></a>
							<img src="img/profile-image.jpg" />
						</div>
						<div class="friend-name">Friend Name</div>
					</div>
				</div>

			</div>

		</section>

		<section id="reviews">

			<div class="user-reviews row">

				<h4>Reviews</h4>
				<div class="reviews">
					<div class="review-single">
						<div class="review-head">
							<span class="review-head--studio">Super Cycle Spin Center</span>
							<span class="review-head--date">December 20th, 2013</span>
							<span class="review-head--stars"><img src="img/stars.png" /></span>
						</div>
						<div class="review-body">
							<span class="review-body--title">This is the best review ever written.</span>
							<p class="review-body--copy">Nulla et arcu eu elit interdum feugiat. Nunc in turpis. Maecenas condimentum convallis eros. Aliquam lacinia arcu quis odio hendrerit tempor. Quisque lobortis tempus augue. Praesent ante. Curabitur bibendum erat at lacus. Pellentesque quis metus. Fusce ullamcorper ligula nec tellus. Nam velit tellus, venenatis at, consectetur at, volutpat id, justo. Vestibulum in augue. Donec tempor pede non sem. Etiam a orci. Vivamus nec justo a ligula bibendum posuere. Sed in turpis. In mattis elit id magna. Maecenas erat nulla, rhoncus ut, malesuada a, egestas eget, turpis.</p>
							<p class="review-body--copy">Vestibulum sed nisl quis sem auctor convallis. Suspendisse potenti. Phasellus mollis purus euismod nisi. Aliquam risus. Nunc faucibus lectus a lacus. Nullam elementum volutpat sapien. Quisque tristique sem in lectus. Vestibulum vitae magna. Vivamus molestie nulla et orci. Ut sollicitudin. Nunc eget enim.</p>
						</div>
					</div>
					<div class="review-single">
						<div class="review-head">
							<span class="review-head--studio">Super Cycle Spin Center</span>
							<span class="review-head--date">December 20th, 2013</span>
							<span class="review-head--stars"><img src="img/stars.png" /></span>
						</div>
						<div class="review-body">
							<span class="review-body--title">This is the best review ever written.</span>
							<p class="review-body--copy">Nulla et arcu eu elit interdum feugiat. Nunc in turpis. Maecenas condimentum convallis eros. Aliquam lacinia arcu quis odio hendrerit tempor. Quisque lobortis tempus augue. Praesent ante. Curabitur bibendum erat at lacus. Pellentesque quis metus. Fusce ullamcorper ligula nec tellus. Nam velit tellus, venenatis at, consectetur at, volutpat id, justo. Vestibulum in augue. Donec tempor pede non sem. Etiam a orci. Vivamus nec justo a ligula bibendum posuere. Sed in turpis. In mattis elit id magna. Maecenas erat nulla, rhoncus ut, malesuada a, egestas eget, turpis.</p>
							<p class="review-body--copy">Vestibulum sed nisl quis sem auctor convallis. Suspendisse potenti. Phasellus mollis purus euismod nisi. Aliquam risus. Nunc faucibus lectus a lacus. Nullam elementum volutpat sapien. Quisque tristique sem in lectus. Vestibulum vitae magna. Vivamus molestie nulla et orci. Ut sollicitudin. Nunc eget enim.</p>
						</div>
					</div>
					<div class="review-single">
						<div class="review-head">
							<span class="review-head--studio">Super Cycle Spin Center</span>
							<span class="review-head--date">December 20th, 2013</span>
							<span class="review-head--stars"><img src="img/stars.png" /></span>
						</div>
						<div class="review-body">
							<span class="review-body--title">This is the best review ever written.</span>
							<p class="review-body--copy">Nulla et arcu eu elit interdum feugiat. Nunc in turpis. Maecenas condimentum convallis eros. Aliquam lacinia arcu quis odio hendrerit tempor. Quisque lobortis tempus augue. Praesent ante. Curabitur bibendum erat at lacus. Pellentesque quis metus. Fusce ullamcorper ligula nec tellus. Nam velit tellus, venenatis at, consectetur at, volutpat id, justo. Vestibulum in augue. Donec tempor pede non sem. Etiam a orci. Vivamus nec justo a ligula bibendum posuere. Sed in turpis. In mattis elit id magna. Maecenas erat nulla, rhoncus ut, malesuada a, egestas eget, turpis.</p>
							<p class="review-body--copy">Vestibulum sed nisl quis sem auctor convallis. Suspendisse potenti. Phasellus mollis purus euismod nisi. Aliquam risus. Nunc faucibus lectus a lacus. Nullam elementum volutpat sapien. Quisque tristique sem in lectus. Vestibulum vitae magna. Vivamus molestie nulla et orci. Ut sollicitudin. Nunc eget enim.</p>
						</div>
					</div>
				</div>
			</div>

		</section>

	</div>

</div>

<script src='js/base.js'></script>
<script src='js/waypoints.min.js'></script>
<script src='js/fullcalendar.min.js'></script>
<script>

	$(document).ready(function() {
	
		var date = new Date();
		var d = date.getDate();
		var m = date.getMonth();
		var y = date.getFullYear();
		
		$('#calendar').fullCalendar({
			theme: false,
			header: {
				left: 'prev',
				center: 'title',
				right: 'next'
			},
			editable: true,
			
		});
		
	});

</script>

</body>
</html>