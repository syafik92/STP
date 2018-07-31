package com.stp.auth.service;

import java.util.List;

import com.stp.auth.model.Permohonan;

public interface PermohonanService {
    void save(Permohonan permohonan);
    
    List<Permohonan> getAll();

    Permohonan findByUsername(String username);
}
