
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<script>
	$(function() {
		var check = $('#open').val();
		if (check > 0) {

			$('#modal-permohonanOpen').modal('show');
		}
	});
</script>
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
		$('#tableOpenTiket').DataTable({
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
<script>
	var pembangunanHidden = document.getElementById('pembangunanHidden');
	pembangunanHidden.style.display = "none";

	var bomHidden = document.getElementById('bomHidden');
	bomHidden.style.display = "none";

	var muatNaikHidden = document.getElementById('muatNaikHidden');
	muatNaikHidden.style.display = "none";

	function show() {
		var peruntukanId = document.getElementById('peruntukanId').value;

		if (peruntukanId == 'Pembangunan') {
			pembangunanHidden.style.display = "inline";
			bomHidden.style.display = "inline";
			muatNaikHidden.style.display = "inline";
		} else if (peruntukanId == "Operasi") {
			pembangunanHidden.style.display = "none";
			bomHidden.style.display = "none";
			muatNaikHidden.style.display = "none";
		}
	}
</script>
<script>
	var tarikhPergiHidden = document.getElementById('tarikhPergiHidden');
	tarikhPergiHidden.style.display = "none";

	var waktuBerlepasHidden = document.getElementById('waktuBerlepasHidden');
	waktuBerlepasHidden.style.display = "none";

	var waktuTibaHidden = document.getElementById('waktuTibaHidden');
	waktuTibaHidden.style.display = "none";

	var jenisPesawatHidden = document.getElementById('jenisPesawatHidden');
	jenisPesawatHidden.style.display = "none";

	var noPesawatHidden = document.getElementById('noPesawatHidden');
	noPesawatHidden.style.display = "none";

	var dariLokasiHidden = document.getElementById('dariLokasiHidden');
	dariLokasiHidden.style.display = "none";

	var destinasiHidden = document.getElementById('destinasiHidden');
	destinasiHidden.style.display = "none";

	function showPenerbangan() {
		var penerbanganId = document.getElementById('penerbanganId').value;

		if (penerbanganId == 'PergiBalik') {
			tarikhPergiHidden.style.display = "inline";
			waktuBerlepasHidden.style.display = "inline";
			waktuTibaHidden.style.display = "inline";
			jenisPesawatHidden.style.display = "inline";
			noPesawatHidden.style.display = "inline";
			dariLokasiHidden.style.display = "inline";
			destinasiHidden.style.display = "inline";

		} else if (penerbanganId == "Antarabandar") {
			tarikhPergiHidden.style.display = "none";
			waktuBerlepasHidden.style.display = "none";
			waktuTibaHidden.style.display = "none";
			jenisPesawatHidden.style.display = "none";
			noPesawatHidden.style.display = "none";
			dariLokasiHidden.style.display = "none";
			destinasiHidden.style.display = "none";

		} else if (penerbanganId == "Sehala") {
			tarikhPergiHidden.style.display = "none";
			waktuBerlepasHidden.style.display = "none";
			waktuTibaHidden.style.display = "none";
			jenisPesawatHidden.style.display = "none";
			noPesawatHidden.style.display = "none";
			dariLokasiHidden.style.display = "none";
			destinasiHidden.style.display = "none";
		}
	}
</script>

<div class="modal fade" id="modal-permohonanOpen">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title">Permohonan Open Tiket</h4>
			</div>
			<div class="modal-body">
				<form:form method="POST" modelAttribute="permohonanOpen"
					action="${contextPath}/permohonanOpen" class="form-horizontal">
					<div class="box-body">
						<spring:bind path="id">
							<form:input type="hidden" class="form-control" path="id"
								id="open"></form:input>
						</spring:bind>

						<div class="col-md-12">
							<div class="nav-tabs-custom">
								<ul class="nav nav-tabs">
									<li class="active"><a href="#activity2" data-toggle="tab">Maklumat
											Penerbangan</a></li>
									<li><a href="#timeline2" data-toggle="tab">Butiran
											Penerbangan</a></li>
									<li><a href="#settings2" data-toggle="tab">Butiran
											Barangan</a></li>
								</ul>
								<div class="tab-content">
									<div class="active tab-pane" id="activity2">
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
														Wakil</label>

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
															placeholder="Seperti Dalam Kad Pengenalan"
															disabled="true"></form:input>
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
														<form:input type="text" class="form-control" path="kp"
															disabled="true"></form:input>
													</spring:bind>
												</div>
												<label for="inputPassword3" class="col-sm-2 control-label">Unit
													/ Bahagian</label>

												<div class="col-sm-4">
													<spring:bind path="bahagian">
														<form:input type="text" class="form-control"
															path="bahagian" disabled="true"></form:input>
													</spring:bind>
												</div>
											</div>

											<div class="form-group">
												<label for="inputPassword3" class="col-sm-2 control-label">Emel</label>

												<div class="col-sm-4">
													<spring:bind path="emel">
														<form:input type="email" class="form-control" path="emel"
															disabled="true"></form:input>
													</spring:bind>
												</div>
												<label for="inputPassword3" class="col-sm-2 control-label">No.
													Pasport</label>

												<div class="col-sm-4">
													<spring:bind path="passport">
														<form:input type="text" class="form-control"
															path="passport" disabled="true"></form:input>
													</spring:bind>
												</div>
											</div>

											<div class="form-group">
												<label for="inputPassword3" class="col-sm-2 control-label">Tujuan</label>

												<div class="col-sm-4">
													<spring:bind path="tujuan">
														<form:input type="text" class="form-control" path="tujuan"
															disabled="true"></form:input>
													</spring:bind>
												</div>
												<label for="inputPassword3" class="col-sm-2 control-label">Tempat
													Bertugas</label>

												<div class="col-sm-4">
													<spring:bind path="tempatBertugas">
														<form:input type="text" class="form-control"
															path="tempatBertugas" disabled="true"></form:input>
													</spring:bind>
												</div>
											</div>

											<div class="form-group">
												<label for="inputPassword3" class="col-sm-2 control-label">Tarikh
													Mula Bertugas</label>

												<div class="col-sm-4">
													<spring:bind path="tarikhMula">
														<form:input type="date" class="form-control"
															path="tarikhMula" disabled="true"></form:input>
													</spring:bind>
												</div>
												<label for="inputPassword3" class="col-sm-2 control-label">Tarikh
													Tamat Bertugas</label>

												<div class="col-sm-4">
													<spring:bind path="tarikhTamat">
														<form:input type="date" class="form-control"
															path="tarikhTamat" disabled="true"></form:input>
													</spring:bind>
												</div>
											</div>

											<div class="form-group">
												<label for="inputPassword3" class="col-sm-2 control-label">No.
													Telefon Bimbit</label>

												<div class="col-sm-4">
													<spring:bind path="noTelefonBimbit">
														<form:input type="text" class="form-control"
															path="noTelefonBimbit" disabled="true"></form:input>
													</spring:bind>
												</div>
												<label for="inputPassword3" class="col-sm-2 control-label">Peruntukan</label>
												<div class="col-sm-4">
													<spring:bind path="peruntukan">
														<form:select path="peruntukan" class="form-control"
															id="peruntukanId" onchange="show()" disabled="true">
															<option></option>
															<option value="Operasi">Operasi</option>
															<option value="Pembangunan">Pembangunan</option>
														</form:select>
													</spring:bind>
												</div>
											</div>
											<div class="form-group">
												<label for="inputPassword3" class="col-sm-2 control-label">Catatan</label>
												<div class="col-sm-4">
													<spring:bind path="muatNaikBom">
														<form:input type="text" class="form-control"
															path="catatan" id="catatan" rel="textTooltip"
															data-toogle="tooltip"></form:input>
													</spring:bind>
												</div>
												<div id="pembangunanHidden">
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
												</div>
											</div>

											<div class="form-group">
												<!-- <label for="inputPassword3"
																class="col-sm-2 control-label">Kelulusan</label>
															<div class="col-sm-4">
																<spring:bind path="kelulusan">
																	<form:select path="kelulusan" class="form-control"
																		required="required">
																		<option></option>
																		<option value="mas">MAS</option>
																		<option value="airasia">AIRASIA</option>
																		<option value="malindo">MALINDO</option>
																		<option value="firefly">FIREFLY</option>
																	</form:select>
																</spring:bind>
															</div> -->
												<div id="bomHidden">
													<label for="inputPassword3" class="col-sm-2 control-label">No.
														Bil BOM</label>

													<div class="col-sm-4">
														<spring:bind path="noBilBom">
															<form:input type="text" class="form-control"
																path="noBilBom"></form:input>
														</spring:bind>
													</div>
												</div>
											</div>

											<div class="form-group" id="muatNaikHidden">
												<label for="exampleInputFile" class="col-sm-2 control-label">Muatnaik
													Lampiran</label>
												<div class="col-sm-4">
													<spring:bind path="muatNaikBom">
														<form:input type="file" class="form-control-file"
															path="muatNaikBom" id="exampleInputFile"></form:input>
													</spring:bind>
												</div>
											</div>
										</div>
										<!-- /.box-body -->

										<!-- /.box-footer -->
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
					</div>
				</form:form>
			</div>
		</div>
	</div>
	<!-- /.modal-content -->
</div>