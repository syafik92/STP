<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:if test="${jawatan == 'Pegawai'}">
	<aside class="main-sidebar">
		<!-- sidebar: style can be found in sidebar.less -->
		<section class="sidebar">
			<!-- Sidebar user panel -->
			<div class="user-panel">
				<div class="pull-left image">
					<img src="${contextPath}/resources/css/dist/img/user2-160x160.jpg"
						class="img-circle" alt="User Image">
				</div>
				<div class="pull-left info">
					<p>${jawatan}</p>
				</div>
			</div>
			<ul class="sidebar-menu" data-widget="tree">
				<li class="header" style="text-align: center;">SELAMAT DATANG</li>
				<li class="treeview"><a href="#"> <i
						class="fa fa-dashboard"></i> <span>Menu</span> <span
						class="pull-right-container"> <i
							class="fa fa-angle-left pull-right"></i>
					</span>
				</a>
					<ul class="treeview-menu">
						<li class="active"><a href="permohonanTiket"><i
								class="fa fa-circle-o"></i>Permohonan</a></li>
					</ul></li>
			</ul>
		</section>
	</aside>
</c:if>
<c:if test="${jawatan == 'Ketua Pegawai'}">
	<aside class="main-sidebar">
		<!-- sidebar: style can be found in sidebar.less -->
		<section class="sidebar">
			<!-- Sidebar user panel -->
			<div class="user-panel">
				<div class="pull-left image">
					<img src="${contextPath}/resources/css/dist/img/user2-160x160.jpg"
						class="img-circle" alt="User Image">
				</div>
				<div class="pull-left info">
					<p>${jawatan}</p>
				</div>
			</div>
			<ul class="sidebar-menu" data-widget="tree">
				<li class="header" style="text-align: center;">SELAMAT DATANG</li>
				<li class="treeview"><a href="#"> <i
						class="fa fa-dashboard"></i> <span>Menu</span> <span
						class="pull-right-container"> <i
							class="fa fa-angle-left pull-right"></i>
					</span>
				</a>
					<ul class="treeview-menu">
						<li class="active"><a href="permohonanTiket"><i
								class="fa fa-circle-o"></i>Permohonan</a></li>
						<li class="active"><a href="welcome"><i
								class="fa fa-circle-o"></i>Kelulusan</a></li>
					</ul></li>
			</ul>

		</section>
	</aside>
</c:if>
<c:if test="${jawatan == 'Pentadbir'}">
	<aside class="main-sidebar">
		<!-- sidebar: style can be found in sidebar.less -->
		<section class="sidebar">
			<!-- Sidebar user panel -->
			<div class="user-panel">
				<div class="pull-left image">
					<img src="${contextPath}/resources/css/dist/img/user2-160x160.jpg"
						class="img-circle" alt="User Image">
				</div>
				<div class="pull-left info">
					<p>${jawatan}</p>
				</div>
			</div>
			<ul class="sidebar-menu" data-widget="tree">
				<li class="header" style="text-align: center;">SELAMAT DATANG</li>
				<li class="treeview"><a href="#"> <i
						class="fa fa-dashboard"></i> <span>Menu</span> <span
						class="pull-right-container"> <i
							class="fa fa-angle-left pull-right"></i>
					</span>
				</a>
					<ul class="treeview-menu">
						<li class="active"><a href="permohonanTiket"><i
								class="fa fa-circle-o"></i>Permohonan</a></li>
						<li class="active"><a href="pembelian"><i
								class="fa fa-circle-o"></i>Pembelian</a></li>
						<li class="active"><a href="report"><i
								class="fa fa-circle-o"></i>Laporan</a></li>

					</ul></li>
				<li class="treeview"><a href="#"> <i
						class="fa fa-dashboard"></i> <span>Syarikat Penerbangan</span> <span
						class="pull-right-container"> <i
							class="fa fa-angle-left pull-right"></i>
					</span>
				</a>
					<ul class="treeview-menu">
						<li class="active"><a href="https://www.malaysiaairlines.com"
							target="_blank"><i class="fa fa-circle-o"></i>MALAYSIA
								AIRLINES</a></li>
						<li class="active"><a href="https://www.airasia.com"
							target="_blank"><i class="fa fa-circle-o"></i>AIR ASIA</a></li>
						<li class="active"><a href="https://www.malindoair.com"
							target="_blank"><i class="fa fa-circle-o"></i>MALINDO</a></li>
						<li class="active"><a href="http://www.fireflyz.com"
							target="_blank"><i class="fa fa-circle-o"></i>FIREFLY</a></li>
					</ul></li>

			</ul>

		</section>
	</aside>
</c:if>
<c:if test="${jawatan == 'Pengarah'}">
	<aside class="main-sidebar">
		<!-- sidebar: style can be found in sidebar.less -->
		<section class="sidebar">
			<!-- Sidebar user panel -->
			<div class="user-panel">
				<div class="pull-left image">
					<img src="${contextPath}/resources/css/dist/img/user2-160x160.jpg"
						class="img-circle" alt="User Image">
				</div>
				<div class="pull-left info">
					<p>${jawatan}</p>
				</div>
			</div>
			<ul class="sidebar-menu" data-widget="tree">
				<li class="header" style="text-align: center;">SELAMAT DATANG</li>
				<li class="treeview"><a href="#"> <i
						class="fa fa-dashboard"></i> <span>Menu</span> <span
						class="pull-right-container"> <i
							class="fa fa-angle-left pull-right"></i>
					</span>
				</a>
					<ul class="treeview-menu">
						<li class="active"><a href="permohonanTiket"><i
								class="fa fa-circle-o"></i>Permohonan</a></li>
						<li class="active"><a href="pengesahan"><i
								class="fa fa-circle-o"></i>Pengesahan</a></li>

					</ul></li>
			</ul>

		</section>
	</aside>
</c:if>