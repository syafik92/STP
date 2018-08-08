package com.stp.auth.service;

import java.util.List;

import com.stp.auth.model.Pembelian;
//import com.stp.auth.model.Permohonan;

public interface PembelianService {
//	void savePembelian(Pembelian pembelian);
	
	List<Pembelian> getAll2();
	
	Pembelian findByUsername(String username);

	void save(Pembelian pembelian);

//	void save(Pembelian userForm);
	
}
