package com.stp.auth.web;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.stp.auth.model.Pembelian;
import com.stp.auth.model.Permohonan;
import com.stp.auth.model.User;
import com.stp.auth.service.PembelianService;
import com.stp.auth.service.PermohonanService;
import com.stp.auth.service.UserService;

@Controller
public class PembelianController {

   @Autowired
   private PembelianService pembelianService;
   
   @Autowired
   private PermohonanService permohonanService;
   
	@Autowired
    private UserService userService;


   @RequestMapping(value = {"/pembelian"}, method = RequestMethod.GET)
   public String pembelian(Model model, HttpSession session) {
	   
	   String username = SecurityContextHolder.getContext().getAuthentication().getName();

   	User user=userService.findByUsername(username);
   	session.setAttribute("user",user );
   	model.addAttribute("welcome", permohonanService.getAll());
		model.addAttribute("kemaskiniPermohon", new Permohonan());
		model.addAttribute("updatePembelian", new Pembelian());
		model.addAttribute("jawatan", user.getJawatan());
        System.out.println(username +"============================="+ user.getJawatan());
		
       return "pembelian";
   }
   
//   @RequestMapping(value = {"/pembelian"}, method = RequestMethod.GET)
//   public String pembelianBatal(Model model) {
//   	model.addAttribute("welcome", permohonanService.getAll());
//		model.addAttribute("kemaskiniPermohon", new Permohonan());
//		model.addAttribute("pembatalanPermohonan", new Pembelian());
//		
//       return "pembelian";
//   }
	
	@RequestMapping(value = "/updatePembelianForm", method = RequestMethod.POST)
	public String pembelian(@ModelAttribute("updatePembelian") Permohonan permohonanForm, Pembelian userForm, Model model) {
		
		model.addAttribute("welcome", permohonanService.getAll());
		//userForm.setPermohonan(permohonanForm);
		///permohonanService.save(permohonanForm);
		pembelianService.save(userForm);
		//permohonanForm.setStatusPermohonan("Selesai");
		
		model.addAttribute("permohonanForm", new Permohonan());
		model.addAttribute("kemaskiniPermohon", new Permohonan());
		model.addAttribute("updatePembelian", new Pembelian());
		
		return "redirect:/pembelian";
	}
	
/*	@RequestMapping(value = "/batalPermohonan", method = RequestMethod.POST)
	public String batalPermohonan(@ModelAttribute("updatePembelian") Permohonan userForm, Model model) {
		
		model.addAttribute("welcome", permohonanService.getAll());

		userForm.setStatusPermohonan("Batal");
		permohonanService.save(userForm);

		model.addAttribute("kemaskiniPermohon", new Permohonan());
		model.addAttribute("updatePembelian", new Pembelian());
		
		return "redirect:/pembelian";
	}*/
	
//	@RequestMapping(value = "/updateStatusBatal", method = RequestMethod.POST)
//	public String pembelianBatal(@ModelAttribute("pembatalanPermohonan") Pembelian userForm, Model model) {
//
//		pembelianService.save(userForm);
//
//		model.addAttribute("kemaskiniPermohon", new Permohonan());
//		model.addAttribute("pembatalanPermohonan", new Pembelian());
//		
//		return "redirect:/pembelian";
//	}
	
//    @RequestMapping(value = "/updateStatus", method = RequestMethod.POST)
//	public String pembelian( @ModelAttribute("pembelian") Pembelian userForm, Model model) {
//		model.addAttribute("pembelian", pembelianService.getAll());
//		
////		userForm.setStatusPembelian("Lulus");
//		pembelianService.save(userForm);
//		
//		model.addAttribute("kemaskiniPermohon", new Permohonan());
//		model.addAttribute("pembelian", new Pembelian());
//
//		return "pembelian";
//		
//	}

//	@RequestMapping(value = "/pembelian", method = RequestMethod.POST)
//	public String registration(@ModelAttribute("pembelianForm") Pembelian userForm) {
//
//		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
//		Date date = new Date();
//		
//		userForm.setTarikhMohon(dateFormat.format(date));
//		pembelianService.save(userForm);
//
//		return "redirect:/pembelian";
//	}
//	
//	@RequestMapping(value = "/updateStatus", method = RequestMethod.POST)
//	public String updateStatus( @ModelAttribute("kemaskiniPermohon") Permohonan userForm, Model model) {
//		model.addAttribute("welcome", permohonanService.getAll());
//		
//		userForm.setStatusPermohonan("Tolak");
//		permohonanService.save(userForm);
//		
//		model.addAttribute("permohonanForm", new Permohonan());
//		model.addAttribute("kemaskiniPermohon", new Permohonan());
//
//		return "welcome";
//		
//	}
//	
//	@RequestMapping(value = "/updateStatusLulus", method = RequestMethod.POST)
//	public String updateStatusLulus( @ModelAttribute("kemaskiniPermohon") Permohonan userForm, Model model) {
//		model.addAttribute("welcome", permohonanService.getAll());
//		
//		userForm.setStatusPermohonan("Lulus");
//		permohonanService.save(userForm);
//		
//		model.addAttribute("permohonanForm", new Permohonan());
//		model.addAttribute("kemaskiniPermohon", new Permohonan());
//
//		return "welcome";
//		
//	}
	

}
