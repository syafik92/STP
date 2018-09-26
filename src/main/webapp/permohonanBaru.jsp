
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<script>
	$(function() {

		var today = new Date();
		var dd = today.getDate() + 1;
		var mm = today.getMonth() + 1;
		var yyyy = today.getFullYear();
		if (dd < 10) {
			dd = '0' + dd
		}
		if (mm < 10) {
			mm = '0' + mm
		}
		today = yyyy + '-' + mm + '-' + dd;
		document.getElementById("date").setAttribute("min", today);
		document.getElementById("to").setAttribute("min", today);
		document.getElementById("tarikhPergi").setAttribute("min", today);

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
		$('#tablePenerbangan').DataTable({
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
	var btnTambahAntarabandarHidden = document.getElementById('btnTambahAntarabandarHidden');
	btnTambahAntarabandarHidden.style.display = "none";

	var tablePenerbangan = document.getElementById('tablePenerbangan');
	tablePenerbangan.style.display = "none";

	function showPenerbangan() {
		var penerbanganId = document.getElementById('penerbanganId').value;

		if (penerbanganId == 'PergiBalik') {
			btnTambahAntarabandarHidden.style.display = "inline";
			tablePenerbangan.style.display = "inline";
		} else if (penerbanganId == "Antarabandar") {

			btnTambahAntarabandarHidden.style.display = "inline";
			tablePenerbangan.style.display = "inline";

		} else if (penerbanganId == "Sehala") {
			btnTambahAntarabandarHidden.style.display = "none";
			tablePenerbangan.style.display = "none";
		}

	}
</script>
<script>
	var nowDate = new Date();
	var today = new Date(nowDate.getFullYear(), nowDate.getMonth(), nowDate
			.getDate(), 0, 0, 0, 0);

	function date() {
		$('#date').datepicker({
			startDate : new Date()
		});
	}
</script>

<div class="modal fade" id="modal-permohonan${pemohon.id}">
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
									<form:form method="POST" modelAttribute="permohonanForm"
										action="${contextPath}/permohonanForm" class="form-horizontal">
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
														required="required"  value="Pegawai"></form:input>
												</spring:bind>
											</div>
											<label for="inputEmail3" class="col-sm-2 control-label">Nama
												Pelulus</label>

											<div class="col-sm-4">
												<spring:bind path="namaPelulus">
													<form:input type="text" class="form-control"
														path="namaPelulus"
														placeholder="Seperti Dalam Kad Pengenalan" value="KPegawai"></form:input>
												</spring:bind>
											</div>
										</div>
										<div class="form-group">
											<label for="inputPassword3" class="col-sm-2 control-label">No.
												KP</label>

											<div class="col-sm-4">
												<spring:bind path="kp">
													<form:input type="text" class="form-control" path="kp"
														required="required" value="950928055375"></form:input>
												</spring:bind>
											</div>
											<label for="inputPassword3" class="col-sm-2 control-label">Unit
												/ Bahagian</label>

											<div class="col-sm-4">
												<spring:bind path="bahagian">
													<form:input type="text" class="form-control"
														path="bahagian" required="required" value="PIC"></form:input>
												</spring:bind>
											</div>
										</div>

										<div class="form-group">
											<label for="inputPassword3" class="col-sm-2 control-label">Emel</label>

											<div class="col-sm-4">
												<spring:bind path="emel">
													<form:input type="email" class="form-control" path="emel"
														required="required" value="pegawai@gmail.com"></form:input>
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
													<form:input type="text" class="form-control" path="tujuan"
														required="required"></form:input>
												</spring:bind>
											</div>
											<label for="inputPassword3" class="col-sm-2 control-label">Tempat
												Bertugas</label>

											<div class="col-sm-4">
												<spring:bind path="tempatBertugas">
													<form:input type="text" class="form-control"
														path="tempatBertugas" required="required"></form:input>
												</spring:bind>
											</div>
										</div>

										<div class="form-group">
											<label for="inputPassword3" class="col-sm-2 control-label">Tarikh
												Mula Bertugas</label>

											<div class="col-sm-4">
												<spring:bind path="tarikhMula">
													<form:input type="date" id="date" onchange="date()"
														class="form-control" path="tarikhMula" required="required"></form:input>
												</spring:bind>
											</div>
											<label for="inputPassword3" class="col-sm-2 control-label">Tarikh
												Tamat Bertugas</label>

											<div class="col-sm-4">
												<spring:bind path="tarikhTamat">
													<form:input type="date" id="to" class="form-control"
														path="tarikhTamat" required="required"></form:input>
												</spring:bind>
											</div>
										</div>

										<div class="form-group">
											<label for="inputPassword3" class="col-sm-2 control-label">No.
												Telefon Bimbit</label>

											<div class="col-sm-4">
												<spring:bind path="noTelefonBimbit">
													<form:input type="text" class="form-control"
														path="noTelefonBimbit" required="required"></form:input>
												</spring:bind>
											</div>
											<label for="inputPassword3" class="col-sm-2 control-label">Peruntukan</label>
											<div class="col-sm-4">
												<spring:bind path="peruntukan">
													<form:select path="peruntukan" class="form-control"
														id="peruntukanId" onchange="show()" required="required">
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
													<form:input type="text" class="form-control" path="catatan"
														id="catatan" rel="textTooltip" data-toogle="tooltip"></form:input>
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
													<form:input type="file" path="muatNaikBom"
														id="exampleInputFile"></form:input>
												</spring:bind>
											</div>
										</div>
										<div class="box-footer">
											<button type="submit" class="btn btn-info pull-right" data-backdrop="static">Mohon</button>
										</div>
									</form:form>
								</div>
								<!-- /.box-body -->

								<!-- /.box-footer -->

							</div>
							<div class="tab-pane" id="timeline">
								<!-- /.box-header -->
								<div class="box-body">
									<form:form method="POST" modelAttribute="permohonanPenerbangan"
										action="${contextPath}/penerbanganForm" class="form-horizontal">
										<div class="form-group">
											<label for="inputPassword3" class="col-sm-4 control-label">Penerbangan</label>
											<div class="col-sm-6">
												<spring:bind path="penerbangan">
													<form:select path="penerbangan" class="form-control"
														id="penerbanganId" onchange="showPenerbangan()">
														<option></option>
														<option value="Sehala">Sehala</option>
														<option value="PergiBalik">Pergi Balik</option>
														<option value="Antarabandar">Antarabandar</option>
													</form:select>
												</spring:bind>
											</div>
										</div>
										<div class="form-group">
											<label for="inputPassword3" class="col-sm-4 control-label">Tarikh
												Pergi</label>

											<div class="col-sm-6">
												<spring:bind path="tarikhPergi">
													<form:input type="date" id="tarikhPergi"
														class="form-control" path="tarikhPergi"></form:input>
												</spring:bind>
											</div>
										</div>
										<div class="form-group">
											<label for="inputPassword3" class="col-sm-4 control-label">Waktu
												Berlepas</label>

											<div class="col-sm-6">
												<spring:bind path="waktuBerlepas">
													<form:input type="time" class="form-control"
														path="waktuBerlepas"></form:input>
												</spring:bind>
											</div>
										</div>
										<div class="form-group">
											<label for="inputPassword3" class="col-sm-4 control-label">Waktu
												Tiba</label>

											<div class="col-sm-6">
												<spring:bind path="waktuTiba">
													<form:input type="time" class="form-control"
														path="waktuTiba"></form:input>
												</spring:bind>
											</div>
										</div>
										<div class="form-group">
											<label for="inputPassword3" class="col-sm-4 control-label">Jenis
												Pesawat</label>
											<div class="col-sm-6">
												<spring:bind path="jenisPesawat">
													<form:select path="jenisPesawat" class="form-control"
														required="required">
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
											<label for="inputPassword3" class="col-sm-4 control-label">No.
												Pesawat</label>

											<div class="col-sm-6">
												<spring:bind path="noPesawat">
													<form:input type="text" class="form-control"
														path="noPesawat"></form:input>
												</spring:bind>
											</div>
										</div>
										<div class="form-group">
											<label for="inputPassword3" class="col-sm-4 control-label">Dari
												Lokasi</label>
											<div class="col-sm-6">
												<spring:bind path="dariLokasi">
													<form:select path="dariLokasi" class="form-control">
														<option></option>
														<option value="KLIA">Lapangan Terbang
															Antarabangsa Kuala Lumpur</option>
														<option value="Langkawi">Lapangan Terbang
															Antarabangsa Langkawi</option>
														<option value="Kuching">Lapangan Terbang
															Antarabangsa Kuching</option>
														<option value="PPinang">Lapangan Terbang
															Antarabangsa Pulau Pinang</option>
														<option value="KKinabalu">Lapangan Terbang
															Antarabangsa Kota Kinabalu</option>
														<option value="Senai">Lapangan Terbang
															Antarabangsa Senai</option>
													</form:select>
												</spring:bind>
											</div>
										</div>
										<div class="form-group">
											<label for="inputPassword3" class="col-sm-4 control-label">Destinasi</label>
											<div class="col-sm-6">
												<spring:bind path="destinasi">
													<form:select path="destinasi" class="form-control">
														<option></option>
														<option value="KLIA">Lapangan Terbang
															Antarabangsa Kuala Lumpur</option>
														<option value="Langkawi">Lapangan Terbang
															Antarabangsa Langkawi</option>
														<option value="Kuching">Lapangan Terbang
															Antarabangsa Kuching</option>
														<option value="PPinang">Lapangan Terbang
															Antarabangsa Pulau Pinang</option>
														<option value="KKinabalu">Lapangan Terbang
															Antarabangsa Kota Kinabalu</option>
														<option value="Senai">Lapangan Terbang
															Antarabangsa Senai</option>
													</form:select>
												</spring:bind>
											</div>
										</div>
										<div class="form-group"  id="btnTambahAntarabandarHidden"
												onchange="showPenerbangan()" >
											<button type="button" class="btn btn-info pull-right">Tambah</button>
										</div>
										<div class="box-body" id="tablePenerbangan"
											onchange="showPenerbangan()" >
										<table class="table table-bordered table-hover">
											<thead>
												<tr>
													<th>Penerbangan</th>
													<td>Tarikh Pergi</td>
													<th>Waktu Berlepas</th>
													<th>Waktu Tiba</th>
													<th>No Pesawat</th>
													<th>Dari Lokasi</th>
													<th>Destinasi</th>
												</tr>
											</thead>
											<tbody>
												<%
													int x = 1;
												%>
												<c:forEach var="Penerbangan" items="${listPenerbangan}">
													<tr>
														<td><%=x%></td>
														<td><spring:bind path="penerbangan">
																<form:input type="text" class="form-control"
																	path="penerbangan"></form:input>
															</spring:bind></td>
														<td><spring:bind path="tarikhPergi">
																<form:input type="text" class="form-control"
																	path="tarikhPergi"></form:input>
															</spring:bind></td>
														<td><spring:bind path="waktuBerlepas">
																<form:input type="text" class="form-control"
																	path="waktuBerlepas"></form:input>
															</spring:bind></td>
														<td><spring:bind path="waktuTiba">
																<form:input type="text" class="form-control"
																	path="waktuTiba"></form:input>
															</spring:bind></td>
														<td><spring:bind path="noPesawat">
																<form:input type="text" class="form-control"
																	path="noPesawat"></form:input>
															</spring:bind></td>
														<td><spring:bind path="dariLokasi">
																<form:input type="text" class="form-control"
																	path="dariLokasi"></form:input>
															</spring:bind></td>
														<td><spring:bind path="destinasi">
																<form:input type="text" class="form-control"
																	path="destinasi"></form:input>
															</spring:bind></td>
														<td><button type="button" id="tambah"
																class="btn btn-info pull-right">Tambah</button></td>
														<!--  <td><input type="text" class="form-control"
																		id="bom"></td>
																	<td><input type="text" class="form-control"
																		id="bom"></td>
																	<td><input type="text" class="form-control"
																		id="bom"></td>
																	<td><input type="text" class="form-control"
																		id="bom"></td>-->
													</tr>
													<%
														x++;
													%>
												</c:forEach>
											</tbody>
										</table>
										</div>
										<div class="box-footer">
											<button type="submit" class="btn btn-info pull-right">Mohon</button>
										</div>
									</form:form>
								</div>
							</div>
							<div class="tab-pane" id="settings">
								<div class="box-body">
									<form:form method="POST" modelAttribute="permohonanBarangan"
										action="${contextPath}/permohonanForm" class="form-horizontal">
										<table id="tableBarangan" class="table table-bordered table-hover">
											<thead>
												<tr>
													<th>Bil</th>
													<td>Barangan Dibawa</td>
													<th>Jumlah</th>
													<th>Anggaran Berat</th>
													<th>Tambahan</th>
												</tr>
											</thead>
											<tbody>
												<%
													int i = 1;
												%>
												<tr>
													<td><%=i%></td>
													<td><spring:bind path="baranganDibawa">
															<form:input type="text" class="form-control"
																path="baranganDibawa"></form:input>
														</spring:bind></td>
													<td><spring:bind path="jumlah">
															<form:input type="text" class="form-control"
																path="jumlah"></form:input>
														</spring:bind></td>
													<td><spring:bind path="anggaranBerat">
															<form:input type="text" class="form-control"
																path="anggaranBerat"></form:input>
														</spring:bind></td>
													<td><button type="button" id="tambah"
															class="btn btn-info pull-right">Tambah</button></td>
													<!--  <td><input type="text" class="form-control"
																		id="bom"></td>
																	<td><input type="text" class="form-control"
																		id="bom"></td>
																	<td><input type="text" class="form-control"
																		id="bom"></td>
																	<td><input type="text" class="form-control"
																		id="bom"></td>-->
												</tr>
												<tr>
													<td></td>
													<td></td>
													<td></td>
													<td><spring:bind path="total">
															<form:input type="text" class="form-control" path="total"
																placeholder="JUMLAH ANGGARAN BERAT"></form:input>
														</spring:bind></td>
													<td></td>
												</tr>
												<%
													i++;
												%>
											</tbody>
										</table>
										<div class="box-footer">
											<button type="submit" class="btn btn-info pull-right">Mohon</button>
										</div>
									</form:form>
								</div>
							</div>

						</div>
						<!-- /.tab-content -->
					</div>
					<!-- /.nav-tabs-custom -->
				</div>
				<!-- /.box-body -->
			</div>
			<!-- /.box-footer -->
		</div>
		<!-- /.modal-content -->
	</div>
</div>