
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Sistem Tempahan Penerbangan</title>

<link href="${contextPath}/resources/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="${contextPath}/resources/js/bootstrap.min.js"></script>
</head>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />


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
							<button type="button" class="btn btn-info form-control">Carian</button>
						</div>
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
											<c:forEach items="${welcome}" var="pemohon">
												<tr>
													<td data-toggle="modal" data-target="#modal-lulus">${pemohon.tarikhMohon}</td>
													<td>${pemohon.tarikhMula}</td>
													<td>${pemohon.nama}</td>
													<td>${pemohon.tujuan}</td>
													<td>${pemohon.tempatBertugas}</td>
													<td>${pemohon.peruntukan}</td>
													<td>${pemohon.jenisPesawat}</td>
													<td>${pemohon.statusPermohonan}</td>
													<td><spring:url value="/updateStatus?id=${pemohon.id}"
															var="updateStatus" />

														<button type="button" class="btn btn-info "
															data-toggle="modal"
															data-target="#modal-lulus${pemohon.id}">Pembelian</button>


														<div class="modal fade" id="modal-lulus${pemohon.id}">
															<div class="modal-dialog modal-lg">
																<div class="modal-content">
																	<div class="modal-header">
																		<button type="button" class="close"
																			data-dismiss="modal" aria-label="Close">
																			<span aria-hidden="true">&times;</span>
																		</button>
																		<h4 class="modal-title">Pembelian</h4>
																	</div>
																	<div class="modal-body">
																		<form:form method="POST"
																			modelAttribute="kemaskiniPermohon"
																			action="${contextPath}/updateStatusLulus"
																			class="form-horizontal">
																			<div class="box-body">
																				<div class="form-group">
																					<spring:bind path="id">
																						<form:input type="hidden" class="form-control"
																							path="id" value="${pemohon.id}"></form:input>
																					</spring:bind>
																					<spring:bind path="namaPelulus">
																						<form:input type="hidden" class="form-control"
																							path="namaPelulus" value="${pemohon.namaPelulus}"></form:input>
																					</spring:bind>
																					<spring:bind path="kp">
																						<form:input type="hidden" class="form-control"
																							path="kp" value="${pemohon.kp}"></form:input>
																					</spring:bind>
																					<spring:bind path="emel">
																						<form:input type="hidden" class="form-control"
																							path="emel" value="${pemohon.emel}"></form:input>
																					</spring:bind>
																					<spring:bind path="passport">
																						<form:input type="hidden" class="form-control"
																							path="passport" value="${pemohon.passport}"></form:input>
																					</spring:bind>
																					<spring:bind path="tujuan">
																						<form:input type="hidden" class="form-control"
																							path="tujuan" value="${pemohon.tujuan}"></form:input>
																					</spring:bind>
																					<spring:bind path="noTelefonBimbit">
																						<form:input type="hidden" class="form-control"
																							path="noTelefonBimbit"
																							value="${pemohon.noTelefonBimbit}"></form:input>
																					</spring:bind>
																					<spring:bind path="peruntukan">
																						<form:input type="hidden" class="form-control"
																							path="peruntukan" value="${pemohon.peruntukan}"></form:input>
																					</spring:bind>
																					<spring:bind path="pembangunan">
																						<form:input type="hidden" class="form-control"
																							path="pembangunan" value="${pemohon.pembangunan}"></form:input>
																					</spring:bind>
																					<spring:bind path="jenisPesawat">
																						<form:input type="hidden" class="form-control"
																							path="jenisPesawat"
																							value="${pemohon.jenisPesawat}"></form:input>
																					</spring:bind>
																					<spring:bind path="noBilBom">
																						<form:input type="hidden" class="form-control"
																							path="noBilBom" value="${pemohon.noBilBom}"></form:input>
																					</spring:bind>
																					<spring:bind path="kelulusan">
																						<form:input type="hidden" class="form-control"
																							path="kelulusan" value="${pemohon.kelulusan}"></form:input>
																					</spring:bind>
																					<spring:bind path="namaPemohon">
																						<form:input type="hidden" class="form-control"
																							path="kelulusan" value="${pemohon.namaPemohon}"></form:input>
																					</spring:bind>

																					<label for="inputEmail3"
																						class="col-sm-2 control-label">Nama
																						Pemohon</label>

																					<div class="col-sm-6">
																						<spring:bind path="nama">
																							<form:input type="text" class="form-control"
																								id="nama" path="nama" value="${pemohon.nama}"></form:input>
																						</spring:bind>
																					</div>
																				</div>
																				<div class="form-group">
																					<label for="inputPassword3"
																						class="col-sm-2 control-label">Tarikh
																						Permohonan</label>

																					<div class="col-sm-6">
																						<spring:bind path="tarikhMohon">
																							<form:input type="date" class="form-control"
																								id="tarikhMohon" path="tarikhMohon"
																								value="${pemohon.tarikhMohon}"></form:input>
																						</spring:bind>
																					</div>
																				</div>

																				<div class="form-group">
																					<label for="inputPassword3"
																						class="col-sm-2 control-label">Unit /
																						Bahagian</label>

																					<div class="col-sm-6">
																						<spring:bind path="bahagian">
																							<form:input type="text" class="form-control"
																								id="bahagian" path="bahagian"
																								value="${pemohon.bahagian}"></form:input>
																						</spring:bind>
																					</div>
																				</div>
																				<div class="form-group">
																					<label for="inputPassword3"
																						class="col-sm-2 control-label">Destinasi</label>

																					<div class="col-sm-6">
																						<spring:bind path="tempatBertugas">
																							<form:input type="text" class="form-control"
																								id="tempatBertugas" path="tempatBertugas"
																								value="${pemohon.tempatBertugas}"></form:input>
																						</spring:bind>
																					</div>
																				</div>
																				<div class="form-group">
																					<label for="inputPassword3"
																						class="col-sm-2 control-label">Tarikh
																						Pergi</label>

																					<div class="col-sm-8">
																						<div class="col-sm-4">
																							<spring:bind path="tarikhMula">
																								<form:input type="date" class="form-control"
																									id="tarikhMula" path="tarikhMula"
																									value="${pemohon.tarikhMula}"></form:input>
																							</spring:bind>
																						</div>
																					</div>
																				</div>
																				<div class="form-group">
																					<label for="inputPassword3"
																						class="col-sm-2 control-label">Tarikh
																						Balik</label>

																					<div class="col-sm-8">
																						<div class="col-sm-4">
																							<spring:bind path="tarikhTamat">
																								<form:input type="date" class="form-control"
																									id="tarikhTamat" path="tarikhTamat"
																									value="${pemohon.tarikhTamat}"></form:input>
																							</spring:bind>
																						</div>
																					</div>
																				</div>
																		</form:form>
																		<form:form method="POST"
																			modelAttribute="updatePembelian"
																			action="${contextPath}/updatePembelianForm"	
																			class="form-horizontal">
																			<div class="form-group">
																				<label for="inputPassword3"
																					class="col-sm-2 control-label">Cara Beli</label>
																				<div class="col-sm-6">
																					<spring:bind path="caraBeli">
																						<form:select path="caraBeli" class="form-control">
																							<option></option>
																							<option value="KadKredit">Kad Kredit</option>
																							<option value="Waran">Waran</option>
																						</form:select>
																					</spring:bind>
																				</div>
																			</div>
																			<div class="form-group">
																				<label for="inputEmail3"
																					class="col-sm-2 control-label">Harga Tiket</label>
																				<div class="col-sm-6">
																					<spring:bind path="hargaTiket">
																						<form:input type="text" class="form-control"
																							path="hargaTiket" placeholder="Harga Tiket"></form:input>
																					</spring:bind>
																				</div>
																			</div>
																			<div class="form-group">
																				<label for="inputPassword3"
																					class="col-sm-2 control-label">Waran</label>
																				<div class="col-sm-6">
																					<spring:bind path="waran">
																						<form:select path="waran" class="form-control">
																							<option></option>
																							<option>Kad Kredit</option>
																							<option>Waran</option>
																						</form:select>
																					</spring:bind>
																				</div>
																			</div>
																			<div class="form-group">
																				<label for="inputEmail3"
																					class="col-sm-2 control-label">Harga
																					Pengurangan</label>

																				<div class="col-sm-6">
																					<spring:bind path="hargaPengurangan">
																						<form:input type="text" class="form-control"
																							path="hargaPengurangan"
																							placeholder="Harga Pengurangan"></form:input>
																					</spring:bind>
																				</div>
																			</div>
																			<div class="form-group">
																				<label for="exampleInputFile"
																					class="col-sm-2 control-label">Muatnaik
																					Tiket</label>
																				<div class="col-sm-6">
																					<spring:bind path="muatNaikTiket">
																						<input type="file" id="exampleInputFile">
																					</spring:bind>
																				</div>
																			</div>
																			
																	</div>
																	<!-- /.box-body -->
																	<div class="box-footer">
																		<button type="submit" class="btn btn-info pull-right">Hantar</button>
																	</div>
																	</form:form>
																	<!-- /.box-footer -->
																</div>
															</div>
															<!-- /.modal-content -->
														</div> <!-- /.modal-dialog -->
														</div></td>
												</tr>
											</c:forEach>
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
	</c:if>
</body>
</html>
