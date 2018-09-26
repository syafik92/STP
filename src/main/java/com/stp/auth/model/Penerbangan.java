package com.stp.auth.model;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.OnDelete;
import org.hibernate.annotations.OnDeleteAction;

@Entity
@Table(name = "Penerbangan")
public class Penerbangan {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long penerbanganId;
	
	private String jenisPesawat;
	private String penerbangan;
	private String tarikhPergi;
	private String waktuBerlepas;
	private String waktuTiba;
	private String noPesawat;
	private String dariLokasi;
	private String destinasi;
	
	@ManyToOne(fetch = FetchType.LAZY, optional = false)
	@JoinColumn(name = "permohonan_id", nullable = false)
	@OnDelete(action = OnDeleteAction.CASCADE)
	private Permohonan permohonan;
		
	public String getPenerbangan() {
		return penerbangan;
	}
	public void setPenerbangan(String penerbangan) {
		this.penerbangan = penerbangan;
	}
	public String getWaktuBerlepas() {
		return waktuBerlepas;
	}
	public void setWaktuBerlepas(String waktuBerlepas) {
		this.waktuBerlepas = waktuBerlepas;
	}
	public String getTarikhPergi() {
		return tarikhPergi;
	}
	public void setTarikhPergi(String tarikhPergi) {
		this.tarikhPergi = tarikhPergi;
	}
	public String getWaktuTiba() {
		return waktuTiba;
	}
	public void setWaktuTiba(String waktuTiba) {
		this.waktuTiba = waktuTiba;
	}
	public String getNoPesawat() {
		return noPesawat;
	}
	public void setNoPesawat(String noPesawat) {
		this.noPesawat = noPesawat;
	}
	public String getDariLokasi() {
		return dariLokasi;
	}
	public void setDariLokasi(String dariLokasi) {
		this.dariLokasi = dariLokasi;
	}
	public String getDestinasi() {
		return destinasi;
	}
	public void setDestinasi(String destinasi) {
		this.destinasi = destinasi;
	}
	
	public Long getPenerbanganId() {
		return penerbanganId;
	}
	public void setPenerbanganId(Long penerbanganId) {
		this.penerbanganId = penerbanganId;
	}
	public String getJenisPesawat() {
		return jenisPesawat;
	}
	public void setJenisPesawat(String jenisPesawat) {
		this.jenisPesawat = jenisPesawat;
	}

}
