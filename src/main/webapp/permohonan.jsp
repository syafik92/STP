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

<title>Permohonan</title>

<link href="${contextPath}/resources/css/bootstrap.min.css"
	rel="stylesheet">
</head>

<body>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script src="${contextPath}/resources/js/bootstrap.min.js"></script>
</body>
</html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<jsp:include page="${contextPath}/template/header.jsp" />
<body class="hold-transition skin-blue sidebar-mini fixed">
	<c:if test="${pageContext.request.userPrincipal.name != null}">

		<br>

		<div class="wrapper">

			<jsp:include page="${contextPath}/template/mainHeader.jsp" />
			<!-- Left side column. contains the logo and sidebar -->
			<jsp:include page="${contextPath}/template/mainSideBar.jsp" />
			<!-- Content Wrapper. Contains page content -->
			<div class="content-wrapper">

				<div id="modal-permohonan">
					<div class="modal-content">
						<div class="modal-header">
							<h4 class="modal-title">
								<center>Permohonan</center>
							</h4>
						</div>
						<div class="modal-body">
							<form:form method="POST" modelAttribute="permohonanForm"
								class="form-horizontal">
								<div class="col-md-12">
									<div class="nav-tabs-custom">
										<ul class="nav nav-tabs">
											<li class="active"><a href="#activity" data-toggle="tab">Maklumat
													Penerbangan</a></li>
											<li><a href="#timeline" data-toggle="tab">Butiran
													Penerbangan</a></li>
											<li><a href="#settings" data-toggle="tab">Butiran
													Barangan</a></li>
										</ul>
										<div class="tab-content">
											<div class="active tab-pane" id="activity">
												<div class="box-body">
													<div class="form-group">
														<label for="inputEmail3" class="col-sm-2 control-label">Wakil
															Pemohon</label>

														<div class="col-sm-4">
															<spring:bind path="wakilPermohon">
																<form:checkbox path="wakilPermohon"></form:checkbox>
															</spring:bind>
														</div>

														<div id="hidden">
															<label for="inputEmail3" class="col-sm-2 control-label">Nama
																Pemohon</label>

															<div class="col-sm-4">
																<spring:bind path="namaPemohon">
																	<form:input type="text" class="form-control"
																		path="namaPemohon"
																		placeholder="Seperti Dalam Kad Pengenalan"></form:input>
																</spring:bind>
															</div>
														</div>
													</div>
													<div class="form-group">
														<label for="inputEmail3" class="col-sm-2 control-label">Nama</label>

														<div class="col-sm-4">
															<spring:bind path="nama">
																<form:input type="text" class="form-control" path="nama"
																	placeholder="Seperti Dalam Kad Pengenalan"></form:input>
															</spring:bind>
														</div>
														<label for="inputEmail3" class="col-sm-2 control-label">Nama
															Pelulus</label>

														<div class="col-sm-4">
															<spring:bind path="namaPelulus">
																<form:input type="text" class="form-control"
																	path="namaPelulus"
																	placeholder="Seperti Dalam Kad Pengenalan"></form:input>
															</spring:bind>
														</div>
													</div>
													<div class="form-group">
														<label for="inputPassword3" class="col-sm-2 control-label">No.
															KP</label>

														<div class="col-sm-4">
															<spring:bind path="kp">
																<form:input type="text" class="form-control" path="kp"></form:input>
															</spring:bind>
														</div>
														<label for="inputPassword3" class="col-sm-2 control-label">Unit
															/ Bahagian</label>

														<div class="col-sm-4">
															<spring:bind path="bahagian">
																<form:input type="text" class="form-control"
																	path="bahagian"></form:input>
															</spring:bind>
														</div>
													</div>

													<div class="form-group">
														<label for="inputPassword3" class="col-sm-2 control-label">Emel</label>

														<div class="col-sm-4">
															<spring:bind path="emel">
																<form:input type="email" class="form-control"
																	path="emel"></form:input>
															</spring:bind>
														</div>
														<label for="inputPassword3" class="col-sm-2 control-label">No.
															Pasport</label>

														<div class="col-sm-4">
															<spring:bind path="passport">
																<form:input type="text" class="form-control"
																	path="passport"></form:input>
															</spring:bind>
														</div>
													</div>

													<div class="form-group">
														<label for="inputPassword3" class="col-sm-2 control-label">Tujuan</label>

														<div class="col-sm-4">
															<spring:bind path="tujuan">
																<form:input type="text" class="form-control"
																	path="tujuan"></form:input>
															</spring:bind>
														</div>
														<label for="inputPassword3" class="col-sm-2 control-label">Tempat
															Bertugas</label>

														<div class="col-sm-4">
															<spring:bind path="tempatBertugas">
																<form:input type="text" class="form-control"
																	path="tempatBertugas"></form:input>
															</spring:bind>
														</div>
													</div>

													<div class="form-group">
														<label for="inputPassword3" class="col-sm-2 control-label">Tarikh
															Mula Bertugas</label>

														<div class="col-sm-4">
															<spring:bind path="tarikhMula">
																<form:input type="date" class="form-control"
																	path="tarikhMula"></form:input>
															</spring:bind>
														</div>
														<label for="inputPassword3" class="col-sm-2 control-label">Tarikh
															Tamat Bertugas</label>

														<div class="col-sm-4">
															<spring:bind path="tarikhTamat">
																<form:input type="date" class="form-control"
																	path="tarikhTamat"></form:input>
															</spring:bind>
														</div>
													</div>

													<div class="form-group">
														<label for="inputPassword3" class="col-sm-2 control-label">No.
															Telefon Bimbit</label>

														<div class="col-sm-4">
															<spring:bind path="noTelefonBimbit">
																<form:input type="text" class="form-control"
																	path="noTelefonBimbit"></form:input>
															</spring:bind>
														</div>
														<label for="inputPassword3" class="col-sm-2 control-label">Peruntukan</label>
														<div class="col-sm-4">
															<spring:bind path="peruntukan">
																<form:select path="peruntukan" class="form-control">
																	<option></option>
																	<option value="Operasi">Operasi</option>
																	<option value="Pembangunan">Pembangunan</option>
																</form:select>
															</spring:bind>
														</div>
													</div>
													<div class="form-group">
														<label for="inputPassword3" class="col-sm-2 control-label">Pembangunan</label>
														<div class="col-sm-4">
															<spring:bind path="pembangunan">
																<form:select path="pembangunan" class="form-control">
																	<option></option>
																	<option value="PPE">PPE</option>
																	<option value="NPDIR">NPDIR</option>
																	<option value="MBR">MBR</option>
																</form:select>
															</spring:bind>
														</div>
														<label for="inputPassword3" class="col-sm-2 control-label">Jenis
															Pesawat</label>
														<div class="col-sm-4">
															<spring:bind path="jenisPesawat">
																<form:select path="jenisPesawat" class="form-control">
																	<option></option>
																	<option value="MAS">MAS</option>
																	<option value="AIRASIA">AIRASIA</option>
																	<option value="MALINDO">MALINDO</option>
																	<option value="FIREFLY">FIREFLY</option>
																</form:select>
															</spring:bind>
														</div>
													</div>

													<div class="form-group">
														<label for="inputPassword3" class="col-sm-2 control-label">No.
															Bil BOM</label>

														<div class="col-sm-4">
															<spring:bind path="noBilBom">
																<form:input type="text" class="form-control"
																	path="noBilBom"></form:input>
															</spring:bind>
														</div>
														<label for="inputPassword3" class="col-sm-2 control-label">Kelulusan</label>
														<div class="col-sm-4">
															<spring:bind path="kelulusan">
																<form:select path="kelulusan" class="form-control">
																	<option></option>
																	<option value="mas">MAS</option>
																	<option value="airasia">AIRASIA</option>
																	<option value="malindo">MALINDO</option>
																	<option value="firefly">FIREFLY</option>
																</form:select>
															</spring:bind>
														</div>
													</div>

													<div class="form-group">
														<label for="exampleInputFile"
															class="col-sm-2 control-label">Muatnaik BOM</label>
														<div class="col-sm-4">
															<input type="file" id="exampleInputFile">
														</div>
													</div>
												</div>
												<!-- /.box-body -->

												<!-- /.box-footer -->
											</div>
											<div class="tab-pane" id="timeline">
												<!-- The timeline -->
												<div class="form-group">
													<div class="row">
														<div class="col-xs-12">
															<!-- /.box-header -->
															<div class="box-body">
																<div class="form-group">
																	<label for="inputPassword3"
																		class="col-sm-4 control-label">Penerbangan</label>
																	<div class="col-sm-6">
																		<spring:bind path="penerbangan">
																			<form:select path="penerbangan" class="form-control">
																				<option></option>
																				<option value="Pergi">Pergi</option>
																				<option value="Balik">Balik</option>
																			</form:select>
																		</spring:bind>
																	</div>
																</div>
																<div class="form-group">
																	<label for="inputPassword3"
																		class="col-sm-4 control-label">Tarikh Pergi</label>

																	<div class="col-sm-6">
																		<spring:bind path="tarikhPergi">
																			<form:input type="date" class="form-control"
																				path="tarikhPergi"></form:input>
																		</spring:bind>
																	</div>
																</div>
																<div class="form-group">
																	<label for="inputPassword3"
																		class="col-sm-4 control-label">Waktu Berlepas</label>

																	<div class="col-sm-6">
																		<spring:bind path="waktuBerlepas">
																			<form:input type="time" class="form-control"
																				path="waktuBerlepas"></form:input>
																		</spring:bind>
																	</div>
																</div>
																<div class="form-group">
																	<label for="inputPassword3"
																		class="col-sm-4 control-label">Waktu Tiba</label>

																	<div class="col-sm-6">
																		<spring:bind path="waktuTiba">
																			<form:input type="time" class="form-control"
																				path="waktuTiba"></form:input>
																		</spring:bind>
																	</div>
																</div>
																<div class="form-group">
																	<label for="inputPassword3"
																		class="col-sm-4 control-label">No. Pesawat</label>

																	<div class="col-sm-6">
																		<spring:bind path="noPesawat">
																			<form:input type="text" class="form-control"
																				path="noPesawat"></form:input>
																		</spring:bind>
																	</div>
																</div>
																<div class="form-group">
																	<label for="inputPassword3"
																		class="col-sm-4 control-label">Dari Lokasi</label>
																	<div class="col-sm-6">
																		<spring:bind path="dariLokasi">
																			<form:select path="dariLokasi" class="form-control">
																				<option></option>
																				<option value="KLIA">KLIA</option>
																				<option value="KLIA2">KLIA2</option>
																				<option value="Subang">Subang</option>
																			</form:select>
																		</spring:bind>
																	</div>
																</div>
																<div class="form-group">
																	<label for="inputPassword3"
																		class="col-sm-4 control-label">Destinasi</label>
																	<div class="col-sm-6">
																		<spring:bind path="destinasi">
																			<form:select path="destinasi" class="form-control">
																				<option></option>
																				<option value="Sabah">Sabah</option>
																				<option value="Sarawak">Sarawak</option>
																				<option value="Terengganu">Terengganu</option>
																				<option value="Johor">Johor</option>
																				</form:select>
																		</spring:bind>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
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
							</form:form>
						</div>
					</div>
					<!-- /.modal-content -->
				</div>

			</div>



		</div>
		<!--  wrapper -->

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
			$(function() {

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
				});
				$('#example1').DataTable({
					'paging' : true,
					'lengthChange' : false,
					'searching' : false,
					'ordering' : true,
					'info' : true,
					'autoWidth' : false
				})
				$('#example2').DataTable({
					'paging' : true,
					'lengthChange' : false,
					'searching' : false,
					'ordering' : true,
					'info' : true,
					'autoWidth' : false
				})
			})
		</script>
	</c:if>
</body>
</html>

