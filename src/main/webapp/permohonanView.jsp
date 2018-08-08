
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
						<div class="col-xs-2">
							<button type="button" class="btn btn-info form-control"
								data-toggle="modal" data-target="#modal-permohonan">Permohonan</button>
						</div>
					</div>
				</section>
				<div class="modal fade" id="modal-permohonan${pemohon.id}">
					<div class="modal-dialog modal-lg">
						<div class="modal-content">
							<div class="modal-header">
								<h4 class="modal-title">
									<center>Permohonan</center>
								</h4>
							</div>
							<div class="modal-body">
								<form:form method="POST" modelAttribute="permohonanForm"
									action="${contextPath}/permohonanForm" class="form-horizontal">
									<div class="col-md-12">
										<div class="nav-tabs-custom">
											<ul class="nav nav-tabs">
												<li class="active"><a href="#activity"
													data-toggle="tab">Maklumat Penerbangan</a></li>
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
																	<form:checkbox path="wakilPermohon" id="wakil"></form:checkbox>
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
																	<form:input type="text" class="form-control"
																		path="nama" placeholder="Seperti Dalam Kad Pengenalan"></form:input>
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
															<label for="inputPassword3"
																class="col-sm-2 control-label">No. KP</label>

															<div class="col-sm-4">
																<spring:bind path="kp">
																	<form:input type="text" class="form-control" path="kp"></form:input>
																</spring:bind>
															</div>
															<label for="inputPassword3"
																class="col-sm-2 control-label">Unit / Bahagian</label>

															<div class="col-sm-4">
																<spring:bind path="bahagian">
																	<form:input type="text" class="form-control"
																		path="bahagian"></form:input>
																</spring:bind>
															</div>
														</div>

														<div class="form-group">
															<label for="inputPassword3"
																class="col-sm-2 control-label">Emel</label>

															<div class="col-sm-4">
																<spring:bind path="emel">
																	<form:input type="email" class="form-control"
																		path="emel"></form:input>
																</spring:bind>
															</div>
															<label for="inputPassword3"
																class="col-sm-2 control-label">No. Pasport</label>

															<div class="col-sm-4">
																<spring:bind path="passport">
																	<form:input type="text" class="form-control"
																		path="passport"></form:input>
																</spring:bind>
															</div>
														</div>

														<div class="form-group">
															<label for="inputPassword3"
																class="col-sm-2 control-label">Tujuan</label>

															<div class="col-sm-4">
																<spring:bind path="tujuan">
																	<form:input type="text" class="form-control"
																		path="tujuan"></form:input>
																</spring:bind>
															</div>
															<label for="inputPassword3"
																class="col-sm-2 control-label">Tempat Bertugas</label>

															<div class="col-sm-4">
																<spring:bind path="tempatBertugas">
																	<form:input type="text" class="form-control"
																		path="tempatBertugas"></form:input>
																</spring:bind>
															</div>
														</div>

														<div class="form-group">
															<label for="inputPassword3"
																class="col-sm-2 control-label">Tarikh Mula
																Bertugas</label>

															<div class="col-sm-4">
																<spring:bind path="tarikhMula">
																	<form:input type="date" class="form-control"
																		path="tarikhMula"></form:input>
																</spring:bind>
															</div>
															<label for="inputPassword3"
																class="col-sm-2 control-label">Tarikh Tamat
																Bertugas</label>

															<div class="col-sm-4">
																<spring:bind path="tarikhTamat">
																	<form:input type="date" class="form-control"
																		path="tarikhTamat"></form:input>
																</spring:bind>
															</div>
														</div>

														<div class="form-group">
															<label for="inputPassword3"
																class="col-sm-2 control-label">No. Telefon
																Bimbit</label>

															<div class="col-sm-4">
																<spring:bind path="noTelefonBimbit">
																	<form:input type="text" class="form-control"
																		path="noTelefonBimbit"></form:input>
																</spring:bind>
															</div>
															<label for="inputPassword3"
																class="col-sm-2 control-label">Peruntukan</label>
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
															<label for="inputPassword3"
																class="col-sm-2 control-label">Pembangunan</label>
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
															<label for="inputPassword3"
																class="col-sm-2 control-label">Jenis Pesawat</label>
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
															<label for="inputPassword3"
																class="col-sm-2 control-label">No. Bil BOM</label>

															<div class="col-sm-4">
																<spring:bind path="noBilBom">
																	<form:input type="text" class="form-control"
																		path="noBilBom"></form:input>
																</spring:bind>
															</div>
															<label for="inputPassword3"
																class="col-sm-2 control-label">Kelulusan</label>
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
														<td><spring:url
																value="/updateStatus?id=${pemohon.id}"
																var="updateStatus" />

															<button type="button" class="btn btn-info "
																data-toggle="modal"
																data-target="#modal-batal${pemohon.id}">Batal</button>
															<button type="button" class="btn btn-danger "
																data-toggle="modal"
																data-target="#modal-tolak${pemohon.id}">Hapus</button>

															<div class="modal fade" id="modal-batal${pemohon.id}">
																<div class="modal-dialog modal-lg">
																	<div class="modal-content">
																		<div class="modal-header">
																			<button type="button" class="close"
																				data-dismiss="modal" aria-label="Close">
																				<span aria-hidden="true">&times;</span>
																			</button>
																			<h4 class="modal-title">Batal</h4>
																		</div>
																		<div class="modal-body">
																			<form:form method="POST"
																				modelAttribute="pembatalanPermohonan"
																				action="${contextPath}/updateStatusBatal"
																				class="form-horizontal">
																				<div class="box-body">
																					<div class="form-group">
																						<spring:bind path="id">
																							<form:input type="hidden" class="form-control"
																								path="id" value="${pemohon.id}"></form:input>
																						</spring:bind>
																						<spring:bind path="namaPelulus">
																							<form:input type="hidden" class="form-control"
																								path="namaPelulus"
																								value="${pemohon.namaPelulus}"></form:input>
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
																								path="pembangunan"
																								value="${pemohon.pembangunan}"></form:input>
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
																					<div class="form-group">
																						<label for="inputPassword3"
																							class="col-sm-2 control-label">Alasan</label>

																						<div class="col-sm-6">
																							<spring:bind path="alasan">
																								<form:input type="text" class="form-control"
																									id="alasan" path="alasan"></form:input>
																							</spring:bind>
																						</div>
																					</div>
																				</div>
																				<!-- /.box-body -->
																				<div class="box-footer">
																					<button type="submit"
																						class="btn btn-info pull-right">Hantar</button>
																				</div>
																				<!-- /.box-footer -->
																			</form:form>
																		</div>
																	</div>
																	<!-- /.modal-content -->
																</div>
																<!-- /.modal-dialog -->
															</div>

															<div class="modal fade" id="modal-hapus${pemohon.id}">
																<div class="modal-dialog modal-lg">
																	<div class="modal-content">
																		<div class="modal-header">
																			<button type="button" class="close"
																				data-dismiss="modal" aria-label="Close">
																				<span aria-hidden="true">&times;</span>
																			</button>
																			<h4 class="modal-title">Hapus</h4>
																		</div>
																		<div class="modal-body">
																			<form:form method="POST"
																				modelAttribute="penghapusanPermohonan"
																				action="${contextPath}/updateStatus"
																				class="form-horizontal">
																				<div class="box-body">
																					<div class="form-group">
																						<div class="modal-body">
																							<p class="center">Anda pasti untuk
																								menghapuskan permohonan?</p>
																						</div>
																						<div class="modal-footer">
																							<div class="col-sm-2">
																								<button type="button"
																									class="btn btn-default form-control"
																									data-dismiss="modal">Ya</button>
																							</div>
																							<div class="col-sm-2">
																								<button type="button"
																									class="btn btn-primary form-control"
																									data-dismiss="modal">Tidak</button>
																							</div>
																						</div>
																					</div>
																					<!-- /.box-body -->
																					<div class="box-footer">
																						<button type="submit"
																							class="btn btn-info pull-right">Hantar</button>
																					</div>
																					<!-- /.box-footer -->
																			</form:form>
																		</div>
																	</div>
																	<!-- /.modal-content -->
																</div>
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
