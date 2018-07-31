package com.stp.auth.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.stp.auth.model.Permohonan;
import com.stp.auth.model.User;

public interface PermohonanRepository extends JpaRepository<Permohonan, Long> {

}
