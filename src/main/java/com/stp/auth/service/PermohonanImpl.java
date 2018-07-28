package com.stp.auth.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.stp.auth.model.Permohonan;
import com.stp.auth.repository.PermohonanRepository;

@Service
public class PermohonanImpl implements PermohonanService {
    @Autowired
    private PermohonanRepository permohonanRepo;



	@Override
	public void save(Permohonan permohonan) {
		permohonanRepo.save(permohonan);
		
	}

	@Override
	public Permohonan findByUsername(String username) {
		// TODO Auto-generated method stub
		return null;
	}
}
