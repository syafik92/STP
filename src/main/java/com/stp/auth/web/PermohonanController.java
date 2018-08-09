package com.stp.auth.web;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.stp.auth.model.Permohonan;
import com.stp.auth.service.PermohonanService;

@Controller
public class PermohonanController {

	@Autowired
	private PermohonanService permohonanService;

	@RequestMapping(value = "/permohonanView", method = RequestMethod.GET)
	public String permohonan(Model model) {
		model.addAttribute("welcome", permohonanService.getAll());
		model.addAttribute("permohonanForm", new Permohonan());
		model.addAttribute("pembatalanPermohonan", new Permohonan());

		return "permohonanView";
	}

	@RequestMapping(value = "/permohonanForm", method = RequestMethod.POST)
	public String registration(@ModelAttribute("permohonanForm") Permohonan userForm) {

		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		
		userForm.setTarikhMohon(dateFormat.format(date));
		permohonanService.save(userForm);

		return "redirect:/permohonanView";
	}
	
	@RequestMapping(value = "/updateStatus", method = RequestMethod.POST)
	public String updateStatus( @ModelAttribute("kemaskiniPermohon") Permohonan userForm, Model model) {
		model.addAttribute("welcome", permohonanService.getAll());
		
		userForm.setStatusPermohonan("Tolak");
		permohonanService.save(userForm);
		
		model.addAttribute("permohonanForm", new Permohonan());
		model.addAttribute("kemaskiniPermohon", new Permohonan());

		return "welcome";
		
	}
	
	@RequestMapping(value = "/updateStatusLulus", method = RequestMethod.POST)
	public String updateStatusLulus( @ModelAttribute("kemaskiniPermohon") Permohonan userForm, Model model) {
		model.addAttribute("welcome", permohonanService.getAll());
		
		userForm.setStatusPermohonan("Lulus");
		permohonanService.save(userForm);
		
		model.addAttribute("permohonanForm", new Permohonan());
		model.addAttribute("kemaskiniPermohon", new Permohonan());

		return "welcome";
		
	}
	
	@RequestMapping(value = "/updateStatusBatal", method = RequestMethod.POST)
	public String updateStatusBatal( @ModelAttribute("pembatalanPermohonan") Permohonan userForm, Model model) {
		model.addAttribute("welcome", permohonanService.getAll());
		
		userForm.setStatusPermohonan("Open Tiket");
		permohonanService.save(userForm);
		
		model.addAttribute("permohonanForm", new Permohonan());
		model.addAttribute("pembatalanPermohonan", new Permohonan());

		return "permohonanView";
		
	}
	
	@RequestMapping(value = "/updateStatusPengesahan", method = RequestMethod.POST)
	public String updateStatusPengesahan( @ModelAttribute("kemaskiniPengesahan") Permohonan userForm, Model model) {
		model.addAttribute("welcome", permohonanService.getAll());
		
		userForm.setStatusPermohonan("Selesai");
		permohonanService.save(userForm);
		
		model.addAttribute("permohonanForm", new Permohonan());
		model.addAttribute("kemaskiniPengesahan", new Permohonan());

		return "pengesahan";
		
	}
	

}
