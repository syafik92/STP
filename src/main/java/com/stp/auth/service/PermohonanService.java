package com.stp.auth.service;

import java.util.List;

import com.stp.auth.model.Permohonan;

public interface PermohonanService {
    void save(Permohonan permohonanView);
    
    List<Permohonan> getAll();

    Permohonan findByUsername(String username);
}
