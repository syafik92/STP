
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<script>
	$(function() {
		var check = $('#batalProses').val();
		if (check > 0) {

			$('#modal-batalProses').modal('show');
		}
	});
</script>
<script>
	function alert() {
		alert("Sila segera hubungi Pn. Farah Diyana di ext: 385 untuk urusan pembatalan seterusnya");
	}
</script>
<div class="modal modal-warning fade" id="modal-kemaskini">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title">Alert!</h4>
			</div>
			<div class="modal-body">
				<p class="text-center">Sila segera hubungi Pn. Farah Diyana di
					ext: 385 untuk urusan pembatalan seterusnya</p>
			</div>
		</div>
	</div>
</div>
<div class="col-md-6 col-xs-6">
	<div class="modal fade" id="modal-batalProses${pemohon.id}"
		tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title">Batal</h4>
				</div>
				<div class="modal-body">
					<form:form method="POST" modelAttribute="permohonanBatalProses"
						action="${contextPath}/batalPermohonanProses"
						class="form-horizontal">
						<div class="box-body">
							<div class="form-group">
								<spring:bind path="id">
									<form:input type="hidden" class="form-control" path="id"
										id="batalProses"></form:input>
								</spring:bind>
								<spring:bind path="namaPelulus">
									<form:input type="hidden" class="form-control"
										path="namaPelulus" value="${pemohon.namaPelulus}"></form:input>
								</spring:bind>
								<spring:bind path="kp">
									<form:input type="hidden" class="form-control" path="kp"
										value="${pemohon.kp}"></form:input>
								</spring:bind>
								<spring:bind path="emel">
									<form:input type="hidden" class="form-control" path="emel"
										value="${pemohon.emel}"></form:input>
								</spring:bind>
								<spring:bind path="passport">
									<form:input type="hidden" class="form-control" path="passport"
										value="${pemohon.passport}"></form:input>
								</spring:bind>
								<spring:bind path="tujuan">
									<form:input type="hidden" class="form-control" path="tujuan"
										value="${pemohon.tujuan}"></form:input>
								</spring:bind>
								<spring:bind path="noTelefonBimbit">
									<form:input type="hidden" class="form-control"
										path="noTelefonBimbit" value="${pemohon.noTelefonBimbit}"></form:input>
								</spring:bind>
								<spring:bind path="peruntukan">
									<form:input type="hidden" class="form-control"
										path="peruntukan" value="${pemohon.peruntukan}"></form:input>
								</spring:bind>
								<spring:bind path="pembangunan">
									<form:input type="hidden" class="form-control"
										path="pembangunan" value="${pemohon.pembangunan}"></form:input>
								</spring:bind>
								<%-- <spring:bind path="jenisPesawat">
								<form:input type="hidden" class="form-control"
									path="jenisPesawat" value="${pemohon.jenisPesawat}"></form:input>
							</spring:bind> --%>
								<spring:bind path="noBilBom">
									<form:input type="hidden" class="form-control" path="noBilBom"
										value="${pemohon.noBilBom}"></form:input>
								</spring:bind>
								<spring:bind path="kelulusan">
									<form:input type="hidden" class="form-control" path="kelulusan"
										value="${pemohon.kelulusan}"></form:input>
								</spring:bind>
								<spring:bind path="namaPemohon">
									<form:input type="hidden" class="form-control" path="kelulusan"
										value="${pemohon.namaPemohon}"></form:input>
								</spring:bind>
								<spring:bind path="tarikhMula">
									<form:input type="hidden" class="form-control"
										path="tarikhMula" value="${pemohon.tarikhMula}"></form:input>
								</spring:bind>

								<label for="inputEmail3" class="col-sm-2 control-label">Nama
									Pemohon</label>

								<div class="col-sm-6">
									<spring:bind path="nama">
										<form:input type="text" class="form-control" id="nama"
											path="nama" value="${pemohon.nama}" readonly="true"></form:input>
									</spring:bind>
								</div>
							</div>
							<div class="form-group">
								<label for="inputPassword3" class="col-sm-2 control-label">Tarikh
									Permohonan</label>

								<div class="col-sm-6">
									<spring:bind path="tarikhMohon">
										<form:input type="text" class="form-control" id="tarikhMohon"
											path="tarikhMohon" value="${pemohon.tarikhMohon}" readonly="true"></form:input>
									</spring:bind>
								</div>
							</div>

							<div class="form-group">
								<label for="inputPassword3" class="col-sm-2 control-label">Unit</label>

								<div class="col-sm-6">
									<spring:bind path="bahagian">
										<form:input type="text" class="form-control" id="bahagian"
											path="bahagian" value="${pemohon.bahagian}" readonly="true"></form:input>
									</spring:bind>
								</div>
							</div>
							<div class="form-group">
								<label for="inputPassword3" class="col-sm-2 control-label">Tempat
									Bertugas</label>

								<div class="col-sm-6">
									<spring:bind path="tempatBertugas">
										<form:input type="text" class="form-control"
											id="tempatBertugas" path="tempatBertugas"
											value="${pemohon.tempatBertugas}" readonly="true"></form:input>
									</spring:bind>
								</div>
							</div>
							<div class="form-group">
								<label for="inputPassword3" class="col-sm-2 control-label">Tujuan</label>

								<div class="col-sm-6">
									<spring:bind path="tujuan">
										<form:input type="text" class="form-control" id="tujuan"
											path="tujuan" value="${pemohon.tujuan}" readonly="true"></form:input>
									</spring:bind>
								</div>
							</div>
							<div class="table-responsive">
								<table id="example1" class="table table-bordered table-hover">
									<thead>
										<tr>
											<th>Bil</th>
											<th>Tarikh Pergi</th>
											<th>Waktu Berlepas</th>
											<th>Waktu Tiba</th>
											<th>No Pesawat</th>
											<th>Dari Lokasi</th>
											<th>Destinasi</th>
										</tr>
									</thead>
									<tbody>
										<%
											int i = 1;
										%>
										<c:forEach var="penerbangan" items="${Penerbangan}">
											<tr>
												<td>${penerbangan.penerbangan}</td>
												<td>${penerbangan.tarikhPergi}</td>
												<td>${penerbangan.waktuBerlepas}</td>
												<td>${penerbangan.waktuTiba}</td>
												<td>${penerbangan.noPesawat}</td>
												<td>${penerbangan.dariLokasi}</td>
												<td>${penerbangan.destinasi}</td>
											</tr>
											<%
												i++;
											%>
										</c:forEach>
									</tbody>
								</table>
							</div>
							<div class="form-group">
								<label for="inputPassword3" class="col-sm-2 control-label">Catatan</label>

								<div class="col-sm-6">
									<spring:bind path="alasan">
										<form:input type="text" class="form-control" id="alasan"
											path="alasan"></form:input>
									</spring:bind>
								</div>
							</div>
						</div>
						<!-- /.box-body -->
						<div class="box-footer">
							<button type="submit" class="btn btn-info pull-right">Batal</button>
						</div>
						<!-- /.box-footer -->
					</form:form>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
	</div>
</div>
<script>
	$('#example1').DataTable({
		'paging' : true,
		'lengthChange' : false,
		'searching' : false,
		'ordering' : true,
		'info' : true,
		'autoWidth' : false
	})
</script>
