<header class="main-header">
			<!-- Logo -->
			<a href="index2.html" class="logo">
				<!-- mini logo for sidebar mini 50x50 pixels -->
				<span class="logo-mini"><b>MPC</b></span>
				<!-- logo for regular state and mobile devices -->
				<span class="logo-lg"><b>MPC</b></span>
			</a>
			<!-- Header Navbar: style can be found in header.less -->
			<nav class="navbar navbar-static-top">
				<!-- Sidebar toggle button-->
				<a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
					<span class="sr-only">Toggle navigation</span>
				</a>
	

			<c:if test="${pageContext.request.userPrincipal.name != null}">
				<form id="logoutForm" method="POST" action="${contextPath}/logout">
					<input type="hidden" name="${_csrf.parameterName}"
						value="${_csrf.token}" />
				</form>

			</c:if>


		<!-- /container -->
		<div class="col-xs-10">
					<p align="center"><h4><font size="4" color="white">SISTEM TEMPAHAN PENERBANGAN</font></h4></p>
				</div>
				<div class="navbar-custom-menu">
					<ul class="nav navbar-nav">
						
						<!-- Messages: style can be found in dropdown.less-->
						<li class="dropdown notifications-menu">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">
								<i class="fa fa-bell-o"></i>
								<span class="label label-warning">1</span>
							</a>
							<ul class="dropdown-menu">
								<li class="header">You have 1 notifications</li>
								<li>
									<!-- inner menu: contains the actual data -->
									<ul class="menu">
										<li>
											<a href="#">
												<i class="fa fa-users text-aqua"></i> Ketua Pejabat menghantar tarikh dan masa lawatan untuk disemak
											</a>
										</li>
									</ul>
								</li>
								<li class="footer"><a href="#">View all</a></li>
							</ul>
						</li>
						<!-- User Account: style can be found in dropdown.less -->
						<li class="dropdown user user-menu">
							<ul class="dropdown-menu">
								<!-- User image -->
								<li class="user-header">
									<img src="saufi.jpg" class="img-circle" alt="User Image">

									<p>
										Pegawai
									</p>con
								</li>
								<!-- Menu Footer-->
								<li class="user-footer">
									<div style="text-align: center;">
										<a href="#" class="btn btn-default btn-flat">Sign out</a>
									</div>
								</li>
							</ul>
						</li>

						<li>
							<a onclick="document.forms['logoutForm'].submit()" ><i class="fa fa-power-off"></i></a>
							
						</li>
					</ul>
				</div>
			</nav>
		</header>