package com.stp.auth.model;

import java.awt.print.Book;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "permohonan")
public class Permohonan {
	private Long id;
	private Long kp;

	private Boolean wakilPermohon;

//	private Pengguna pengguna;
	private String noBilBom;
	private String nama;
	private String namaPelulus;
	private String namaPemohon;
	private String bahagian;
	private String emel;
	private String noTelefonBimbit;
	private String pembangunan;
	private String jenisPesawat;
	private String kelulusan;
	private String passport;
	private String tujuan;
	private String tempatBertugas;
	private String peruntukan;
	private String tarikhMohon;
	private String tarikhMula;
	private String tarikhTamat;
	private String alasan;
	private String staffNo;
	private String statusPermohonan;
	
	
	public String getStaffNo() {
		return staffNo;
	}

	public void setStaffNo(String staffNo) {
		this.staffNo = staffNo;
	}

	public String getStatusPermohonan() {
		return statusPermohonan;
	}

	public void setStatusPermohonan(String statusPermohonan) {
		this.statusPermohonan = statusPermohonan;
	}

	public String getAlasan() {
		return alasan;
	}

	public void setAlasan(String alasan) {
		this.alasan = alasan;
	}

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getTarikhMohon() {
		return tarikhMohon;
	}

	public void setTarikhMohon(String tarikhMohon) {
		this.tarikhMohon = tarikhMohon;
	}

	public Boolean getWakilPermohon() {
		return wakilPermohon;
	}

	public void setWakilPermohon(Boolean wakilPermohon) {
		this.wakilPermohon = wakilPermohon;
	}

	public String getTarikhMula() {
		return tarikhMula;
	}

	public void setTarikhMula(String tarikhMula) {
		this.tarikhMula = tarikhMula;
	}

	public String getTarikhTamat() {
		return tarikhTamat;
	}

	public void setTarikhTamat(String tarikhTamat) {
		this.tarikhTamat = tarikhTamat;
	}

	public String getPassport() {
		return passport;
	}

	public void setPassport(String passport) {
		this.passport = passport;
	}

	public String getTujuan() {
		return tujuan;
	}

	public void setTujuan(String tujuan) {
		this.tujuan = tujuan;
	}

	public String getPeruntukan() {
		return peruntukan;
	}

	public void setPeruntukan(String peruntukan) {
		this.peruntukan = peruntukan;
	}

	public String getNama() {
		return nama;
	}

	public void setNama(String nama) {
		this.nama = nama;
	}

	public String getNamaPelulus() {
		return namaPelulus;
	}

	public void setNamaPelulus(String namaPelulus) {
		this.namaPelulus = namaPelulus;
	}

	public String getNamaPemohon() {
		return namaPemohon;
	}

	public void setNamaPemohon(String namaPemohon) {
		this.namaPemohon = namaPemohon;
	}

	public Long getKp() {
		return kp;
	}

	public void setKp(Long kp) {
		this.kp = kp;
	}

	public String getBahagian() {
		return bahagian;
	}

	public void setBahagian(String bahagian) {
		this.bahagian = bahagian;
	}

	public String getEmel() {
		return emel;
	}

	public void setEmel(String emel) {
		this.emel = emel;
	}

	public String getNoTelefonBimbit() {
		return noTelefonBimbit;
	}

	public void setNoTelefonBimbit(String noTelefonBimbit) {
		this.noTelefonBimbit = noTelefonBimbit;
	}

	public String getPembangunan() {
		return pembangunan;
	}

	public void setPembangunan(String pembangunan) {
		this.pembangunan = pembangunan;
	}

	public String getJenisPesawat() {
		return jenisPesawat;
	}

	public void setJenisPesawat(String jenisPesawat) {
		this.jenisPesawat = jenisPesawat;
	}

	public String getNoBilBom() {
		return noBilBom;
	}

	public void setNoBilBom(String noBilBom) {
		this.noBilBom = noBilBom;
	}

	public String getKelulusan() {
		return kelulusan;
	}

	public void setKelulusan(String kelulusan) {
		this.kelulusan = kelulusan;
	}

	public String getTempatBertugas() {
		return tempatBertugas;
	}

	public void setTempatBertugas(String tempatBertugas) {
		this.tempatBertugas = tempatBertugas;
	}
	
//    @ManyToOne
//    @JoinColumn(name = "staff_no")
//    public Pengguna getPengguna() {
//        return pengguna;
//    }
//
//    public void setPengguna(Pengguna pengguna) {
//        this.pengguna = pengguna;
//    }


}
