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

	@RequestMapping(value = "/permohonan", method = RequestMethod.GET)
	public String permohonan(Model model) {

		model.addAttribute("permohonanForm", new Permohonan());

		return "permohonan";
	}

	@RequestMapping(value = "/permohonan", method = RequestMethod.POST)
	public String registration(@ModelAttribute("permohonanForm") Permohonan userForm) {

		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		
		userForm.setTarikhMohon(dateFormat.format(date));
		permohonanService.save(userForm);

		return "redirect:/welcome";
	}
	
	@RequestMapping(value = "/updateStatus", method = RequestMethod.GET)
	public String updateStatus(@RequestParam("id") Long id, Model model) {

		model.addAttribute("permohonanForm", new Permohonan());
		model.addAttribute("welcome", permohonanService.getAll());
		System.out.println(id);

		return "welcome";
		
	}
	
	

}
