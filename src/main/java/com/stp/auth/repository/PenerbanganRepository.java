package com.stp.auth.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.stp.auth.model.Penerbangan;

public interface PenerbanganRepository extends JpaRepository<Penerbangan, Long> {

//	Page<Penerbangan> findById(Long id);
}
