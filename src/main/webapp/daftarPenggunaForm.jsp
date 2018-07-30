
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<div class="modal fade" id="modal-penggunaForm">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title">Daftar Pengguna</h4>
			</div>
			<form:form method="POST" modelAttribute="daftarPenggunaForm"
				action="${contextPath}/admin/daftarPengguna" class="form-horizontal">
				<div class="modal-body">


					<div class="box-body">
						<div class="form-group">
							<label for="inputEmail3" class="col-sm-2 control-label">Nombor
								Staf</label>

							<div class="col-sm-4">
								<spring:bind path="staffNo">
									<form:input type="text" class="form-control" path="staffNo"
										placeholder="Staf No"></form:input>
								</spring:bind>
							</div>
							<label for="inputEmail3" class="col-sm-2 control-label">Nama
								Pengguna</label>

							<div class="col-sm-4">
								<spring:bind path="username">
									<form:input type="text" class="form-control" path="username"
										placeholder="Nama Pengguna"></form:input>
								</spring:bind>
							</div>

						</div>


						<div class="form-group">
							<label for="inputEmail3" class="col-sm-2 control-label">Nama</label>

							<div class="col-sm-4">
								<spring:bind path="namaStaff">
									<form:input type="text" class="form-control" path="namaStaff"
										placeholder="Nama Staf"></form:input>
								</spring:bind>
							</div>
							<label for="inputEmail3" class="col-sm-2 control-label">Nama
								Pengurus</label>

							<div class="col-sm-4">
								<spring:bind path="namaPengurus">
									<form:input type="text" class="form-control"
										path="namaPengurus" placeholder="Nama Pengurus"></form:input>
								</spring:bind>
							</div>
						</div>

						<div class="form-group">
							<label for="inputPassword3" class="col-sm-2 control-label">No.
								KP</label>

							<div class="col-sm-4">
								<spring:bind path="noKP">
									<form:input type="text" class="form-control" path="noKP"
										placeholder="Nombor Kad Pengenalan"></form:input>
								</spring:bind>
							</div>
							<label class="col-sm-2 control-label">Unit / Bahagian</label>

							<div class="col-sm-4">
								<spring:bind path="unit">
									<form:input type="text" class="form-control" path="unit"
										placeholder="Unit"></form:input>
								</spring:bind>
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-2 control-label">Emel</label>

							<div class="col-sm-4">
								<spring:bind path="email">
									<form:input type="text" class="form-control" path="email"
										placeholder="email(exp:xxx@yahoo.com)"></form:input>
								</spring:bind>
							</div>
							<label class="col-sm-2 control-label">No. Telefon Bimbit</label>

							<div class="col-sm-4">
								<spring:bind path="noTelefon">
									<form:input type="text" class="form-control" path="noTelefon"
										placeholder="No telefon Bimbit"></form:input>
								</spring:bind>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">Jawatan</label>

							<div class="col-sm-4">
								<form:select path="Jawatan" class="form-control">
									<option></option>
									<option>Pegawai</option>
									<option>Staf</option>
								</form:select>
							</div>
							<label class="col-sm-2 control-label">Status</label>

							<div class="col-sm-4">
								<form:select path="status" class="form-control">
									<option></option>
									<option>Aktif</option>
									<option>Tidak Aktif</option>
								</form:select>
							</div>
						</div>
					</div>
				</div>
		</div>

		<!-- /.box-body -->
		<div class="box-footer">
			<button type="submit" class="btn btn-info pull-right">Daftar</button>
		</div>
		</form:form>

		<!-- /.box-footer -->
	</div>
</div>
<!-- /.modal-content -->
</div>
<!-- /.modal-dialog -->
</div>