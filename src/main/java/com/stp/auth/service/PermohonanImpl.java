package com.stp.auth.service;

import java.util.ArrayList;
import java.util.List;

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

	@Override
	public List<Permohonan> getAll() {
		
		List<Permohonan> permohon = new ArrayList<>();
		permohonanRepo.findAll().forEach(permohon::add);
		return permohon;
	}
}
