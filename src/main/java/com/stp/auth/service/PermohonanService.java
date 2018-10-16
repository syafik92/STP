package com.stp.auth.service;

import java.util.List;

import com.stp.auth.model.Pengguna;
import com.stp.auth.model.Permohonan;

public interface PermohonanService {
    void save(Permohonan permohonanView);
    
    List<Permohonan> getAll();

    List<Permohonan> findByNama(String nama);
    List<Permohonan> findByNamaPelulus(String namaPelulus);
   	Permohonan findById(Long id);
   	void remove(Permohonan permohonanForm);
}
