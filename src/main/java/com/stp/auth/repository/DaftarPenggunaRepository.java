package com.stp.auth.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.stp.auth.model.Pengguna;

public interface DaftarPenggunaRepository extends JpaRepository<Pengguna, Long> {
	
	public Pengguna findById(Long id);
}
