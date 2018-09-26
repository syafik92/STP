package com.stp.auth.service;

import java.util.List;

import com.stp.auth.model.Penerbangan;

public interface PenerbanganService {

	List<Penerbangan> getAll();
	void save(Penerbangan penerbanganForm);
	void remove(Penerbangan penerbanganForm);
}
