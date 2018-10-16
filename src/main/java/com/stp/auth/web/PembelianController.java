package com.stp.auth.web;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.stp.auth.model.Barangan;
import com.stp.auth.model.Pembelian;
import com.stp.auth.model.Penerbangan;
import com.stp.auth.model.Permohonan;
import com.stp.auth.model.PermohonanTemp;
import com.stp.auth.model.User;
import com.stp.auth.service.PembelianService;
import com.stp.auth.service.PenerbanganService;
import com.stp.auth.service.PermohonanService;
import com.stp.auth.service.UserService;

@Controller
public class PembelianController {

	@Autowired
	private PembelianService pembelianService;

	@Autowired
	private PermohonanService permohonanService;
	
	@Autowired
	private PenerbanganService penerbanganService;

	@Autowired
	private UserService userService;

	@RequestMapping(value = { "/pembelian" }, method = RequestMethod.GET)
	public String pembelian(Model model, HttpSession session) {

		String username = SecurityContextHolder.getContext().getAuthentication().getName();

		User user = userService.findByUsername(username);
		session.setAttribute("user", user);
		model.addAttribute("welcome", permohonanService.getAll());
		model.addAttribute("Penerbangan", penerbanganService.getAll());
		model.addAttribute("kemaskiniPermohon", new PermohonanTemp());
		model.addAttribute("updatePembelian", new Pembelian());
		model.addAttribute("jawatan", user.getJawatan());
		System.out.println(username + "=============================" + user.getJawatan());

		return "pembelian";
	}

	@RequestMapping(value = "/updatePembelianForm", method = RequestMethod.POST)
	public String pembelian(@ModelAttribute("updatePembelian") Permohonan userForm, Pembelian pembelianForm,
			Model model, HttpSession session) {
		String username = SecurityContextHolder.getContext().getAuthentication().getName();

		User user = userService.findByUsername(username);
		session.setAttribute("user", user);

		model.addAttribute("welcome", permohonanService.getAll());
		// userForm.setPermohonan(permohonanForm);
		// permohonanService.save(permohonanForm);
		userForm.setStatusPermohonan("Selesai");
		Permohonan permohonan = new Permohonan();
		pembelianForm.setPermohonan(permohonan);
		
		permohonanService.save(userForm);
		pembelianService.save(pembelianForm);
		model.addAttribute("permohonanForm", new PermohonanTemp());
		model.addAttribute("permohonanPenerbangan", new Penerbangan());
		model.addAttribute("permohonanBarangan", new Barangan());
		model.addAttribute("kemaskiniPermohon", new PermohonanTemp());
		model.addAttribute("updatePembelian", new Pembelian());

		return "redirect:/pembelian";
	}

}
