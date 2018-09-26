package com.stp.auth.service;

import java.util.List;

import com.stp.auth.model.Pengguna;
import com.stp.auth.model.Permohonan;

public interface PermohonanService {
    void save(Permohonan permohonanView);
    
    List<Permohonan> getAll();

    Permohonan findByUsername(String username);
   	Permohonan findById(Long id);
   	void remove(Permohonan permohonanForm);
}
