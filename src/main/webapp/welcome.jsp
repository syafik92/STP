<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!-- <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Create an account</title>

    <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">

 
</head>
<body>
<div class="container">

    <c:if test="${pageContext.request.userPrincipal.name != null}">
        <form id="logoutForm" method="POST" action="${contextPath}/logout">
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        </form>

        <h2>Welcome ${pageContext.request.userPrincipal.name} | <a onclick="document.forms['logoutForm'].submit()">Logout</a></h2>

    </c:if>

</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="${contextPath}/resources/js/bootstrap.min.js"></script>
</body>
</html> -->
<!DOCTYPE html>
<html>
<jsp:include page="${contextPath}/template/header.jsp" />
<body class="hold-transition skin-blue sidebar-mini fixed">
	<c:if test="${pageContext.request.userPrincipal.name != null}">
		<form id="logoutForm" method="POST" action="${contextPath}/logout">
			<input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}" />
		</form>

		<div class="wrapper">

			<jsp:include page="${contextPath}/template/mainHeader.jsp" />
			<!-- Left side column. contains the logo and sidebar -->
			<jsp:include page="${contextPath}/template/mainSideBar.jsp" />
			<!-- Content Wrapper. Contains page content -->
			<div class="content-wrapper">
				<!-- Content Header (Page header) -->
				<section class="content-header">
					<div class="box-body">
						<div class="row">
							<div class="col-xs-2">
								<label>Tarikh Permohonan</label>
							</div>
							<div class="col-xs-2">
								<label>Tarikh Penerbangan</label>
							</div>
							<div class="col-xs-2">
								<label>Tarikh Mula Bertugas</label>
							</div>
						</div>

						<div class="row">
							<div class="col-xs-2">
								<input type="date" class="form-control" id="unit1">
							</div>
							<div class="col-xs-2">
								<input type="date" class="form-control" id="unit2">
							</div>
							<div class="col-xs-2">
								<input type="date" class="form-control" id="unit3">
							</div>
							<div class="col-xs-2">
								<button type="button" class="btn btn-info form-control"
									data-toggle="modal" data-target="#modal-permohonan">Carian</button>
							</div>
						</div>

						<div class="modal fade" id="modal-permohonan">
							<div class="modal-dialog modal-lg">
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal"
											aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
										<h4 class="modal-title">Permohonan</h4>
									</div>
									<div class="modal-body">
										<form class="form-horizontal">
											<div class="col-md-12">
												<div class="nav-tabs-custom">
													<ul class="nav nav-tabs">
														<li class="active"><a href="#activity"
															data-toggle="tab">Activity</a></li>
														<li><a href="#timeline" data-toggle="tab">Timeline</a></li>
														<li><a href="#settings" data-toggle="tab">Settings</a></li>
													</ul>
													<div class="tab-content">
														<div class="active tab-pane" id="activity">
															<form class="form-horizontal">
																<div class="box-body">
																	<div class="form-group">
																		<label for="inputEmail3"
																			class="col-sm-4 control-label">Nama</label>

																		<div class="col-sm-6">
																			<input type="text" class="form-control" id="nama"
																				placeholder="Seperti Dalam Kad Pengenalan">
																		</div>
																	</div>
																	<div class="form-group">
																		<label for="inputEmail3"
																			class="col-sm-4 control-label">Nama Pelulus</label>

																		<div class="col-sm-6">
																			<input type="text" class="form-control" id="nama"
																				placeholder="Seperti Dalam Kad Pengenalan">
																		</div>
																	</div>
																	<div class="form-group">
																		<label for="inputEmail3"
																			class="col-sm-4 control-label">Wakil Pemohon</label>

																		<div class="col-sm-6">
																			<input type="checkbox" id="wakil">
																		</div>
																	</div>
																	<div class="form-group" id="hidden">
																		<label for="inputEmail3"
																			class="col-sm-4 control-label">Nama Pemohon</label>

																		<div class="col-sm-6">
																			<input type="text" class="form-control"
																				id="nama Pemohon"
																				placeholder="Seperti Dalam Kad Pengenalan">
																		</div>
																	</div>
																	<div class="form-group">
																		<label for="inputPassword3"
																			class="col-sm-4 control-label">No. KP</label>

																		<div class="col-sm-6">
																			<input type="text" class="form-control" id="kp">
																		</div>
																	</div>

																	<div class="form-group">
																		<label for="inputPassword3"
																			class="col-sm-4 control-label">Unit /
																			Bahagian</label>

																		<div class="col-sm-6">
																			<input type="text" class="form-control" id="unit">
																		</div>
																	</div>

																	<div class="form-group">
																		<label for="inputPassword3"
																			class="col-sm-4 control-label">Emel</label>

																		<div class="col-sm-6">
																			<input type="email" class="form-control" id="emel">
																		</div>
																	</div>

																	<div class="form-group">
																		<label for="inputPassword3"
																			class="col-sm-4 control-label">No. Pasport</label>

																		<div class="col-sm-6">
																			<input type="text" class="form-control" id="pasport">
																		</div>
																	</div>

																	<div class="form-group">
																		<label for="inputPassword3"
																			class="col-sm-4 control-label">Tujuan</label>

																		<div class="col-sm-6">
																			<input type="text" class="form-control"
																				id="inputPassword3">
																		</div>
																	</div>

																	<div class="form-group">
																		<label for="inputPassword3"
																			class="col-sm-4 control-label">Tempat
																			Bertugas</label>

																		<div class="col-sm-6">
																			<input type="text" class="form-control"
																				id="tempatbertugas">
																		</div>
																	</div>

																	<div class="form-group">
																		<label for="inputPassword3"
																			class="col-sm-4 control-label">Tarikh Mula
																			Bertugas</label>

																		<div class="col-sm-6">
																			<input type="date" class="form-control"
																				id="tarikhmula">
																		</div>
																	</div>

																	<div class="form-group">
																		<label for="inputPassword3"
																			class="col-sm-4 control-label">Tarikh Tamat
																			Bertugas</label>

																		<div class="col-sm-6">
																			<input type="date" class="form-control"
																				id="tarikhtamat">
																		</div>
																	</div>

																	<div class="form-group">
																		<label for="inputPassword3"
																			class="col-sm-4 control-label">No. Telefon
																			Bimbit</label>

																		<div class="col-sm-6">
																			<input type="text" class="form-control" id="telefon">
																		</div>
																	</div>

																	<div class="form-group">
																		<label for="inputPassword3"
																			class="col-sm-4 control-label">Peruntukan</label>
																		<div class="col-sm-6">
																			<select class="form-control">
																				<option></option>
																				<option>Operasi</option>
																				<option>Pembangunan</option>
																			</select>
																		</div>
																	</div>
																	<div class="form-group">
																		<label for="inputPassword3"
																			class="col-sm-4 control-label">Pembangunan</label>
																		<div class="col-sm-6">
																			<select class="form-control">
																				<option></option>
																				<option>PPE</option>
																				<option>NPDIR</option>
																				<option>MBR</option>
																			</select>
																		</div>
																	</div>
																	<div class="form-group">
																		<label for="inputPassword3"
																			class="col-sm-4 control-label">Jenis Pesawat</label>
																		<div class="col-sm-6">
																			<select class="form-control">
																				<option></option>
																				<option>MAS</option>
																				<option>AIRASIA</option>
																				<option>MALINDO</option>
																				<option>FIREFLY</option>
																			</select>
																		</div>
																	</div>

																	<div class="form-group">
																		<label for="inputPassword3"
																			class="col-sm-4 control-label">No. Bil BOM</label>

																		<div class="col-sm-6">
																			<input type="text" class="form-control" id="bom">
																		</div>
																	</div>

																	<div class="form-group">
																		<label for="inputPassword3"
																			class="col-sm-4 control-label">Kelulusan</label>
																		<div class="col-sm-6">
																			<select class="form-control">
																				<option></option>
																				<option>MAS</option>
																				<option>AIRASIA</option>
																				<option>MALINDO</option>
																				<option>FIREFLY</option>
																			</select>
																		</div>
																	</div>

																	<div class="form-group">
																		<label for="exampleInputFile"
																			class="col-sm-4 control-label">Muatnaik BOM</label>
																		<div class="col-sm-6">
																			<input type="file" id="exampleInputFile">
																		</div>
																	</div>
																</div>
																<!-- /.box-body -->

																<!-- /.box-footer -->
															</form>
														</div>
														<!-- /.tab-pane -->
														<div class="tab-pane" id="timeline">
															<!-- The timeline -->
															<div class="form-group">
																<div class="row">
																	<div class="col-xs-12">
																		<!-- /.box-header -->
																		<form class="form-horizontal">
																			<div class="box-body">
																				<div class="form-group">
																					<label for="inputPassword3"
																						class="col-sm-4 control-label">Penerbangan</label>
																					<div class="col-sm-6">
																						<select class="form-control">
																							<option></option>
																							<option>Pergi</option>
																							<option>Balik</option>
																						</select>
																					</div>
																				</div>
																				<div class="form-group">
																					<label for="inputPassword3"
																						class="col-sm-4 control-label">Tarikh
																						Pergi</label>

																					<div class="col-sm-6">
																						<input type="date" class="form-control"
																							id="tarikhtamat">
																					</div>
																				</div>
																				<div class="form-group">
																					<label for="inputPassword3"
																						class="col-sm-4 control-label">Waktu
																						Berlepas</label>

																					<div class="col-sm-6">
																						<input type="time" class="form-control"
																							id="tarikhtamat">
																					</div>
																				</div>
																				<div class="form-group">
																					<label for="inputPassword3"
																						class="col-sm-4 control-label">Waktu Tiba</label>

																					<div class="col-sm-6">
																						<input type="time" class="form-control"
																							id="tarikhtamat">
																					</div>
																				</div>
																				<div class="form-group">
																					<label for="inputPassword3"
																						class="col-sm-4 control-label">No. Pesawat</label>

																					<div class="col-sm-6">
																						<input type="text" class="form-control" id="bom">
																					</div>
																				</div>
																				<div class="form-group">
																					<label for="inputPassword3"
																						class="col-sm-4 control-label">Dari Lokasi</label>
																					<div class="col-sm-6">
																						<select class="form-control">
																							<option></option>
																							<option>KLIA</option>
																							<option>KLIA2</option>
																							<option>SUBANG</option>
																						</select>
																					</div>
																				</div>
																				<div class="form-group">
																					<label for="inputPassword3"
																						class="col-sm-4 control-label">Destinasi</label>
																					<div class="col-sm-6">
																						<select class="form-control">
																							<option></option>
																							<option>sABAH</option>
																							<option>SARAWAK</option>
																							<option>TERENGGANU</option>
																							<option>JOHOR</option>
																						</select>
																					</div>
																				</div>
																			</div>
																		</form>
																	</div>
																</div>
															</div>
														</div>
														<!-- /.tab-pane -->

														<div class="tab-pane" id="settings">
															<div class="box-body">
																<table id="example1"
																	class="table table-bordered table-hover">
																	<thead>
																		<tr>
																			<th>Bil</th>
																			<td>Barangan Dibawa</td>
																			<th>Jumlah</th>
																			<th>Anggaran Berat</th>
																		</tr>
																	</thead>
																	<tbody>
																		<tr>
																			<td><input type="text" class="form-control"
																				id="bom"></td>
																			<td><input type="text" class="form-control"
																				id="bom"></td>
																			<td><input type="text" class="form-control"
																				id="bom"></td>
																			<td><input type="text" class="form-control"
																				id="bom"></td>
																		</tr>
																	</tbody>
																</table>
															</div>
														</div>
														<!-- /.tab-pane -->
													</div>
													<!-- /.tab-content -->
												</div>
												<!-- /.nav-tabs-custom -->
											</div>
											<!-- /.box-body -->
											<div class="box-footer">
												<button type="submit" class="btn btn-info pull-right">Mohon</button>
											</div>
											<!-- /.box-footer -->
										</form>
									</div>
								</div>
								<!-- /.modal-content -->
							</div>
							<!-- /.modal-dialog -->
						</div>
				</section>

				<!-- Main content -->
				<section class="content">
					<!-- /.row -->
					<div class="row">
						<div class="col-xs-12">
							<div class="box">
								<div class="box-header">
									<h3 class="box-title">Maklumat Penerbangan</h3>
								</div>
								<!-- /.box-header -->
								<div class="box-body">
									<table id="example1" class="table table-bordered table-hover">
										<thead>
											<tr>
												<th>Tarikh Permohonan</th>
												<th>Tarikh Penerbangan</th>
												<th>Nama Pemohon</th>
												<td>Tujuan</td>
												<th>Tempat Bertugas</th>
												<th>Peruntukan</th>
												<th>Jenis Pesawat</th>
												<th>Status</th>
												<th>Tindakan</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td data-toggle="modal" data-target="#modal-lulus">10/7/2018</td>
												<td>25/7/2018</td>
												<td>Shahreza</td>
												<td>Kerja</td>
												<td>Sabah</td>
												<td>Operasi</td>
												<td>MAS</td>
												<td>Diluluskan</td>
												<td>
													<button type="button" class="btn btn-info "
														data-toggle="modal" data-target="#modal-lulus">Lulus</button>
													<button type="button" class="btn btn-danger "
														data-toggle="modal" data-target="#modal-tolak">Tolak</button>

													<div class="modal fade" id="modal-lulus">
														<div class="modal-dialog modal-lg">
															<div class="modal-content">
																<div class="modal-header">
																	<button type="button" class="close"
																		data-dismiss="modal" aria-label="Close">
																		<span aria-hidden="true">&times;</span>
																	</button>
																	<h4 class="modal-title">Lulus</h4>
																</div>
																<div class="modal-body">
																	<form class="form-horizontal">
																		<div class="box-body">
																			<div class="form-group">
																				<label for="inputEmail3"
																					class="col-sm-2 control-label">Nama Pemohon</label>

																				<div class="col-sm-6">
																					<input type="text" class="form-control" id="nama"
																						placeholder="Seperti Dalam Kad Pengenalan">
																				</div>
																			</div>
																			<div class="form-group">
																				<label for="inputPassword3"
																					class="col-sm-2 control-label">Tarikh
																					Permohonan</label>

																				<div class="col-sm-6">
																					<input type="date" class="form-control" id="kp">
																				</div>
																			</div>

																			<div class="form-group">
																				<label for="inputPassword3"
																					class="col-sm-2 control-label">Unit /
																					Bahagian</label>

																				<div class="col-sm-6">
																					<input type="text" class="form-control" id="unit">
																				</div>
																			</div>
																			<div class="form-group">
																				<label for="inputPassword3"
																					class="col-sm-2 control-label">Destinasi</label>

																				<div class="col-sm-6">
																					<input type="text" class="form-control" id="unit">
																				</div>
																			</div>
																			<div class="form-group">
																				<label for="inputPassword3"
																					class="col-sm-2 control-label">Tarikh Pergi
																					Dan Masa</label>

																				<div class="col-sm-8">
																					<div class="col-sm-4">
																						<input type="date" class="form-control" id="kp">
																					</div>
																					<div class="col-sm-4">
																						<input type="time" class="form-control" id="unit">
																					</div>
																				</div>
																			</div>
																			<div class="form-group">
																				<label for="inputPassword3"
																					class="col-sm-2 control-label">Tarikh Balik
																					Dan Masa</label>

																				<div class="col-sm-8">
																					<div class="col-sm-4">
																						<input type="date" class="form-control" id="kp">
																					</div>
																					<div class="col-sm-4">
																						<input type="time" class="form-control" id="unit">
																					</div>
																				</div>
																			</div>
																			<div class="form-group">
																				<label for="inputPassword3"
																					class="col-sm-2 control-label">Alasan</label>

																				<div class="col-sm-6">
																					<input type="text" class="form-control" id="unit">
																				</div>
																			</div>
																		</div>
																		<!-- /.box-body -->
																		<div class="box-footer">
																			<button type="submit" class="btn btn-info pull-right">Hantar</button>
																		</div>
																		<!-- /.box-footer -->
																	</form>
																</div>
															</div>
															<!-- /.modal-content -->
														</div>
														<!-- /.modal-dialog -->
													</div>

													<div class="modal fade" id="modal-tolak">
														<div class="modal-dialog modal-lg">
															<div class="modal-content">
																<div class="modal-header">
																	<button type="button" class="close"
																		data-dismiss="modal" aria-label="Close">
																		<span aria-hidden="true">&times;</span>
																	</button>
																	<h4 class="modal-title">Tolak</h4>
																</div>
																<div class="modal-body">
																	<form class="form-horizontal">
																		<div class="box-body">
																			<div class="form-group">
																				<label for="inputEmail3"
																					class="col-sm-2 control-label">Nama Pemohon</label>

																				<div class="col-sm-6">
																					<input type="text" class="form-control" id="nama"
																						placeholder="Seperti Dalam Kad Pengenalan">
																				</div>
																			</div>
																			<div class="form-group">
																				<label for="inputPassword3"
																					class="col-sm-2 control-label">Tarikh
																					Permohonan</label>

																				<div class="col-sm-6">
																					<input type="date" class="form-control" id="kp">
																				</div>
																			</div>

																			<div class="form-group">
																				<label for="inputPassword3"
																					class="col-sm-2 control-label">Unit /
																					Bahagian</label>

																				<div class="col-sm-6">
																					<input type="text" class="form-control" id="unit">
																				</div>
																			</div>
																			<div class="form-group">
																				<label for="inputPassword3"
																					class="col-sm-2 control-label">Destinasi</label>

																				<div class="col-sm-6">
																					<input type="text" class="form-control" id="unit">
																				</div>
																			</div>
																			<div class="form-group">
																				<label for="inputPassword3"
																					class="col-sm-2 control-label">Tarikh Pergi
																					Dan Masa</label>

																				<div class="col-sm-8">
																					<div class="col-sm-4">
																						<input type="date" class="form-control" id="kp">
																					</div>
																					<div class="col-sm-4">
																						<input type="time" class="form-control" id="unit">
																					</div>
																				</div>
																			</div>
																			<div class="form-group">
																				<label for="inputPassword3"
																					class="col-sm-2 control-label">Tarikh Balik
																					Dan Masa</label>

																				<div class="col-sm-8">
																					<div class="col-sm-4">
																						<input type="date" class="form-control" id="kp">
																					</div>
																					<div class="col-sm-4">
																						<input type="time" class="form-control" id="unit">
																					</div>
																				</div>
																			</div>
																			<div class="form-group">
																				<label for="inputPassword3"
																					class="col-sm-2 control-label">Alasan</label>

																				<div class="col-sm-6">
																					<input type="text" class="form-control" id="unit">
																				</div>
																			</div>
																		</div>
																		<!-- /.box-body -->
																		<div class="box-footer">
																			<button type="submit" class="btn btn-info pull-right">Hantar</button>
																		</div>
																		<!-- /.box-footer -->
																	</form>
																</div>
															</div>
															<!-- /.modal-content -->
														</div>
														<!-- /.modal-dialog -->
													</div> <!-- /.modal-dialog -->
													</div>
												</td>
											</tr>
											<tr>
												<td>10/7/2018</td>
												<td>25/7/2018</td>
												<td>Shahreza</td>
												<td>Kerja</td>
												<td>Sabah</td>
												<td>Operasi</td>
												<td>MAS</td>
												<td>Diluluskan</td>
												<td>
													<button type="button" class="btn btn-info "
														data-toggle="modal" data-target="#modal-lulus">Lulus</button>
													<button type="button" class="btn btn-danger "
														data-toggle="modal" data-target="#modal-tolak">Tolak</button>

												</td>
											</tr>
											<tr>
												<td>10/7/2018</td>
												<td>25/7/2018</td>
												<td>Shahreza</td>
												<td>Kerja</td>
												<td>Sabah</td>
												<td>Pembangunan</td>
												<td>MAS</td>
												<td>Diluluskan</td>
												<td>
													<button type="button" class="btn btn-info "
														data-toggle="modal" data-target="#modal-lulus">Lulus</button>
													<button type="button" class="btn btn-danger "
														data-toggle="modal" data-target="#modal-tolak">Tolak</button>

												</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</section>

				<!-- /.content -->
			</div>
			<!-- /.content-wrapper -->
			<footer class="main-footer">
				<div class="pull-right hidden-xs"></div>
				<strong>Copyright &copy; <a href="https://adminlte.io">Perbadanan
						Produktiviti Malaysia</a>.
				</strong> All rights reserved.
			</footer>

			<!-- Control Sidebar -->
			<aside class="control-sidebar control-sidebar-dark">
				<!-- Create the tabs -->
				<ul class="nav nav-tabs nav-justified control-sidebar-tabs">
					<li><a href="#control-sidebar-home-tab" data-toggle="tab"><i
							class="fa fa-home"></i></a></li>
					<li><a href="#control-sidebar-settings-tab" data-toggle="tab"><i
							class="fa fa-gears"></i></a></li>
				</ul>
				<!-- Tab panes -->
				<div class="tab-content">
					<!-- Home tab content -->
					<div class="tab-pane" id="control-sidebar-home-tab">
						<h3 class="control-sidebar-heading">Recent Activity</h3>
						<ul class="control-sidebar-menu">
							<li><a href="javascript:void(0)"> <i
									class="menu-icon fa fa-birthday-cake bg-red"></i>

									<div class="menu-info">
										<h4 class="control-sidebar-subheading">Langdon's Birthday</h4>

										<p>Will be 23 on April 24th</p>
									</div>
							</a></li>
							<li><a href="javascript:void(0)"> <i
									class="menu-icon fa fa-user bg-yellow"></i>

									<div class="menu-info">
										<h4 class="control-sidebar-subheading">Frodo Updated His
											Profile</h4>

										<p>New phone +1(800)555-1234</p>
									</div>
							</a></li>
							<li><a href="javascript:void(0)"> <i
									class="menu-icon fa fa-envelope-o bg-light-blue"></i>

									<div class="menu-info">
										<h4 class="control-sidebar-subheading">Nora Joined
											Mailing List</h4>

										<p>nora@example.com</p>
									</div>
							</a></li>
							<li><a href="javascript:void(0)"> <i
									class="menu-icon fa fa-file-code-o bg-green"></i>

									<div class="menu-info">
										<h4 class="control-sidebar-subheading">Cron Job 254
											Executed</h4>

										<p>Execution time 5 seconds</p>
									</div>
							</a></li>
						</ul>
						<!-- /.control-sidebar-menu -->

						<h3 class="control-sidebar-heading">Tasks Progress</h3>
						<ul class="control-sidebar-menu">
							<li><a href="javascript:void(0)">
									<h4 class="control-sidebar-subheading">
										Custom Template Design <span
											class="label label-danger pull-right">70%</span>
									</h4>

									<div class="progress progress-xxs">
										<div class="progress-bar progress-bar-danger"
											style="width: 70%"></div>
									</div>
							</a></li>
							<li><a href="javascript:void(0)">
									<h4 class="control-sidebar-subheading">
										Update Resume <span class="label label-success pull-right">95%</span>
									</h4>

									<div class="progress progress-xxs">
										<div class="progress-bar progress-bar-success"
											style="width: 95%"></div>
									</div>
							</a></li>
							<li><a href="javascript:void(0)">
									<h4 class="control-sidebar-subheading">
										Laravel Integration <span
											class="label label-warning pull-right">50%</span>
									</h4>

									<div class="progress progress-xxs">
										<div class="progress-bar progress-bar-warning"
											style="width: 50%"></div>
									</div>
							</a></li>
							<li><a href="javascript:void(0)">
									<h4 class="control-sidebar-subheading">
										Back End Framework <span
											class="label label-primary pull-right">68%</span>
									</h4>

									<div class="progress progress-xxs">
										<div class="progress-bar progress-bar-primary"
											style="width: 68%"></div>
									</div>
							</a></li>
						</ul>
						<!-- /.control-sidebar-menu -->

					</div>
					<!-- /.tab-pane -->
					<!-- Stats tab content -->
					<div class="tab-pane" id="control-sidebar-stats-tab">Stats
						Tab Content</div>
					<!-- /.tab-pane -->
					<!-- Settings tab content -->
					<div class="tab-pane" id="control-sidebar-settings-tab">
						<form method="post">
							<h3 class="control-sidebar-heading">General Settings</h3>

							<div class="form-group">
								<label class="control-sidebar-subheading"> Report panel
									usage <input type="checkbox" class="pull-right" checked>
								</label>

								<p>Some information about this general settings option</p>
							</div>
							<!-- /.form-group -->

							<div class="form-group">
								<label class="control-sidebar-subheading"> Allow mail
									redirect <input type="checkbox" class="pull-right" checked>
								</label>

								<p>Other sets of options are available</p>
							</div>
							<!-- /.form-group -->

							<div class="form-group">
								<label class="control-sidebar-subheading"> Expose author
									name in posts <input type="checkbox" class="pull-right" checked>
								</label>

								<p>Allow the user to show his name in blog posts</p>
							</div>
							<!-- /.form-group -->

							<h3 class="control-sidebar-heading">Chat Settings</h3>

							<div class="form-group">
								<label class="control-sidebar-subheading"> Show me as
									online <input type="checkbox" class="pull-right" checked>
								</label>
							</div>
							<!-- /.form-group -->

							<div class="form-group">
								<label class="control-sidebar-subheading"> Turn off
									notifications <input type="checkbox" class="pull-right">
								</label>
							</div>
							<!-- /.form-group -->

							<div class="form-group">
								<label class="control-sidebar-subheading"> Delete chat
									history <a href="javascript:void(0)"
									class="text-red pull-right"><i class="fa fa-trash-o"></i></a>
								</label>
							</div>
							<!-- /.form-group -->
						</form>
					</div>
					<!-- /.tab-pane -->
				</div>
			</aside>
			<!-- /.control-sidebar -->
			<!-- Add the sidebar's background. This div must be placed
  	immediately after the control sidebar -->
			<div class="control-sidebar-bg"></div>
		</div>
		<!-- ./wrapper -->

		<!-- jQuery 3 -->
		<script
			src="${contextPath}/resources/css/bower_components/jquery/dist/jquery.min.js"></script>
		<!-- Bootstrap 3.3.7 -->
		<script
			src="${contextPath}/resources/css/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
		<!-- Slimscroll -->
		<script
			src="${contextPath}/resources/css/bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
		<!-- FastClick -->
		<script
			src="${contextPath}/resources/css/bower_components/fastclick/lib/fastclick.js"></script>
		<!-- AdminLTE App -->
		<script src="${contextPath}/resources/css/dist/js/adminlte.min.js"></script>
		<!-- AdminLTE for demo purposes -->
		<script src="${contextPath}/resources/css/dist/js/demo.js"></script>
		<!-- DataTables -->
		<script
			src="${contextPath}/resources/css/bower_components/datatables.net/js/jquery.dataTables.min.js"></script>
		<script
			src="${contextPath}/resources/css/bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
		<script>
  	$(function () {

      // Get the form fields and hidden div
      var checkbox = $("#wakil");
      var hidden = $("#hidden");
      
  // Hide the fields.
  // Use JS to do this in case the user doesn't have JS 
  // enabled.
  hidden.hide();
  
  // Setup an event listener for when the state of the 
  // checkbox changes.
  checkbox.change(function() {
    // Check to see if the checkbox is checked.
    // If it is, show the fields and populate the input.
    // If not, hide the fields.
    if (checkbox.is(':checked')) {
      // Show the hidden fields.
      hidden.show();
      // Populate the input.
  } else {
      // Make sure that the hidden fields are indeed
      // hidden.
      hidden.hide();
      
      // You may also want to clear the value of the 
      // hidden fields here. Just in case somebody 
      // shows the fields, enters data to them and then 
      // unticks the checkbox.
      //
      // This would do the job:
      //
      // $("#hidden_field").val("");
  }
};
{
	$('#example1').DataTable({
		'paging'      : true,
		'lengthChange': false,
		'searching'   : false,
		'ordering'    : true,
		'info'        : true,
		'autoWidth'   : false
	})
	$('#example2').DataTable({
		'paging'      : true,
		'lengthChange': false,
		'searching'   : false,
		'ordering'    : true,
		'info'        : true,
		'autoWidth'   : false
	})
}
</script>

	</c:if>
</body>
</html>
