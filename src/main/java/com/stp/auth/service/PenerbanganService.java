package com.stp.auth.service;

import java.util.List;

import com.stp.auth.model.Penerbangan;
import com.stp.auth.model.Permohonan;

public interface PenerbanganService {

	List<Penerbangan> getAll();
//	Penerbangan findById(Long penerbanganId);
	void save(Penerbangan penerbangan);
	void remove(Penerbangan penerbangan);
}
