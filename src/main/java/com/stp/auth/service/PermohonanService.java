package com.stp.auth.service;

import com.stp.auth.model.Permohonan;
import com.stp.auth.model.User;

public interface PermohonanService {
    void save(Permohonan permohonan);

    Permohonan findByUsername(String username);
}
