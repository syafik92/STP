package com.stp.auth.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.stp.auth.model.Barangan;
import com.stp.auth.repository.BaranganRepository;

@Service
public class BaranganImpl implements BaranganService{
	
	@Autowired
	private BaranganRepository baranganRepo;
	
	@Override
	public void save(Barangan baranganView) {
		baranganRepo.save(baranganView);
		
	}
	
	@Override
	public List<Barangan> getAll() {
		
		List<Barangan> barangan = new ArrayList<>();
		baranganRepo.findAll().forEach(barangan::add);
		return barangan;
	}
	
	@Override
	public void remove(Barangan baranganView) {
		baranganRepo.delete(baranganView.getBaranganId());
	}
}
