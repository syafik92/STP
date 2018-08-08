package com.stp.auth.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "pembelian")
public class Pembelian {
	private Long id;
	private String caraBeli;
	private String hargaTiket;
	private String waran;
	private String hargaPengurangan;
	private String muatNaikTiket;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getCaraBeli() {
		return caraBeli;
	}

	public void setCaraBeli(String caraBeli) {
		this.caraBeli = caraBeli;
	}

	public String getHargaTiket() {
		return hargaTiket;
	}

	public void setHargaTiket(String hargaTiket) {
		this.hargaTiket = hargaTiket;
	}

	public String getWaran() {
		return waran;
	}

	public void setWaran(String waran) {
		this.waran = waran;
	}

	public String getHargaPengurangan() {
		return hargaPengurangan;
	}

	public void setHargaPengurangan(String hargaPengurangan) {
		this.hargaPengurangan = hargaPengurangan;
	}

	public String getMuatNaikTiket() {
		return muatNaikTiket;
	}

	public void setMuatNaikTiket(String muatNaikTiket) {
		this.muatNaikTiket = muatNaikTiket;
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
