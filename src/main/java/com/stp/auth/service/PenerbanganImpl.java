package com.stp.auth.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.stp.auth.model.Penerbangan;
import com.stp.auth.repository.PenerbanganRepository;

public class PenerbanganImpl implements PenerbanganService{
	
	@Autowired
    private PenerbanganRepository penerbanganRepo;
	
	@Override
	public void save(Penerbangan permohonanView) {
		penerbanganRepo.save(permohonanView);
		
	}

	@Override
	public List<Penerbangan> getAll() {
		
		List<Penerbangan> penerbangan = new ArrayList<>();
		//penerbanganRepo.findAll().forEach(penerbangan::add);
		return penerbangan;
	}

	@Override
	public void remove(Penerbangan penerbanganForm) {
		penerbanganRepo.delete(penerbanganForm.getPenerbanganId());
		
	}
	
//	@Autowired
//	private PenerbanganRepository penerbanganRepo;
//
//	@Override
//	public List<Penerbangan> getAll() {
//		List<Penerbangan> penerbangan = new ArrayList<>();
//		penerbanganRepo.findAll().forEach(penerbangan::add);
//		return penerbangan;
//	}
//
//	@Override
//	public void remove(Penerbangan penerbanganForm) {
//		penerbanganRepo.delete(penerbanganForm.getPenerbanganId());
//	}

}
