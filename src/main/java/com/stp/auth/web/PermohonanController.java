package com.stp.auth.web;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.stp.auth.model.Barangan;
import com.stp.auth.model.Penerbangan;
//import com.stp.auth.model.Penerbangan;
import com.stp.auth.model.Permohonan;
import com.stp.auth.model.User;
import com.stp.auth.service.PenerbanganService;
import com.stp.auth.service.PermohonanService;
import com.stp.auth.service.SendHTMLEmail;
import com.stp.auth.service.UserService;

@Controller
public class PermohonanController {

	@Autowired
	private PermohonanService permohonanService;
	
	@Autowired
    private UserService userService;
	
//	@Autowired
//	private PenerbanganService penerbanganService;
//	
//	@Autowired
//	private BaranganService baranganService;

	@RequestMapping(value = "/permohonanTiket", method = RequestMethod.GET)
	public String permohonan(Model model,  HttpSession session) {
		String username = SecurityContextHolder.getContext().getAuthentication().getName();

    	User user=userService.findByUsername(username);
    	session.setAttribute("user",user );
		model.addAttribute("welcome", permohonanService.getAll());
//		model.addAttribute("welcome", penerbanganService.getAll());
//		model.addAttribute("welcome", baranganService.getAll());
		model.addAttribute("permohonanForm", new Permohonan());
		model.addAttribute("permohonanPenerbangan", new Penerbangan());
		model.addAttribute("permohonanBarangan", new Barangan());
		model.addAttribute("permohonanOpen", new Permohonan());
		model.addAttribute("penghapusanPermohonan", new Permohonan());
		model.addAttribute("permohonanBatal", new Permohonan());
		model.addAttribute("jawatan", user.getJawatan());
        System.out.println(username +"============================="+ user.getJawatan());
		

		return "permohonanTiket";
	}
	
	@RequestMapping(value = "/hapusPermohonan", method = RequestMethod.GET)
	public String permohonanHapus(@RequestParam("id") Long id ,Model model) {
		model.addAttribute("welcome", permohonanService.getAll());
		model.addAttribute("permohonanForm", new Permohonan());
		model.addAttribute("permohonanPenerbangan", new Penerbangan());
		model.addAttribute("permohonanBarangan", new Barangan());
		model.addAttribute("permohonanOpen", new Permohonan());
		model.addAttribute("penghapusanPermohonan", permohonanService.findById(id));
		model.addAttribute("permohonanBatal", new Permohonan());

		return "permohonanTiket";
	}
	
	@RequestMapping(value = "/permohonanOpen", method = RequestMethod.GET)
	public String permohonanOpen(@RequestParam("id") Long id ,Model model) {
		model.addAttribute("welcome", permohonanService.getAll());
//		model.addAttribute("permohonanForm", new Permohonan());
		Permohonan permohonanOpen = permohonanService.findById(id);
		System.out.println("Masuk La sini=========="+ permohonanOpen.getNama());
		model.addAttribute("permohonanOpen",permohonanOpen);
		model.addAttribute("permohonanForm" , new Permohonan());
		model.addAttribute("permohonanPenerbangan", new Penerbangan());
		model.addAttribute("permohonanBarangan", new Barangan());
		model.addAttribute("penghapusanPermohonan", new Permohonan());
		model.addAttribute("permohonanBatal", new Permohonan());

		return "permohonanTiket";
	}
	
	@RequestMapping(value = "/batalPermohonan", method = RequestMethod.GET)
	public String batalPermohonan(@RequestParam("id") Long id ,Model model) {
		model.addAttribute("welcome", permohonanService.getAll());
		model.addAttribute("permohonanForm", new Permohonan());
		model.addAttribute("permohonanPenerbangan", new Penerbangan());
		model.addAttribute("permohonanBarangan", new Barangan());
		model.addAttribute("permohonanOpen", new Permohonan());
		model.addAttribute("penghapusanPermohonan", new Permohonan());
		model.addAttribute("permohonanBatal", permohonanService.findById(id));
		return "permohonanTiket";
		
	}
	

	@RequestMapping(value = "/permohonanForm", method = RequestMethod.POST)
	public String registration(@ModelAttribute("permohonanForm") Permohonan userForm, Penerbangan penerbanganForm) {
		
		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		
		userForm.setTarikhMohon(dateFormat.format(date));
		userForm.setStatusPermohonan("Baru");
		permohonanService.save(userForm);

		return "redirect:/permohonanTiket";
	}
	
	@RequestMapping(value = "/permohonanOpen", method = RequestMethod.POST)
	public String registrationOpenTiket(@ModelAttribute("permohonanForm") Permohonan userForm) {

		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		
		userForm.setTarikhMohon(dateFormat.format(date));
		userForm.setStatusPermohonan("Open Tiket Baru");
//		permohonanService.save(userForm);

		return "redirect:/permohonanTiket";
	}
	
	@RequestMapping(value = "/penerbanganForm", method = RequestMethod.POST)
	public String registrationOpenTiket(@ModelAttribute("permohonanPenerbangan") Penerbangan userForm) {

//		penerbanganService.save(userForm);
//		permohonanService.save(userForm);

		return "redirect:/permohonanTiket";
	}
	
	/*@RequestMapping(value = "/hapusPermohonan", method = RequestMethod.GET)
	public String hapusPermohonan( @ModelAttribute("penghapusanPermohonan") Permohonan userForm, Model model) {
		
		System.out.println("masuk hapus view");
		model.addAttribute("welcome", permohonanService.getAll());
		model.addAttribute("permohonanForm", new Permohonan());
		model.addAttribute("permohonanOpen", new Permohonan());
		model.addAttribute("penghapusanPermohonan", new Permohonan());
		model.addAttribute("permohonanBatal", new Permohonan());
		return "permohonanTiket";
		
	}*/
	
	@RequestMapping(value = "/hapusPermohonan", method = RequestMethod.POST)
	public String hapusPermohonan( @ModelAttribute("penghapusanPermohonan") Permohonan userForm, Penerbangan penerbanganForm, Barangan baranganForm, BindingResult bindingResult, Model model) {
		
		permohonanService.remove(userForm);
//		penerbanganService.remove(penerbanganForm);
//		baranganService.remove(baranganForm);
		
		model.addAttribute("welcome", permohonanService.getAll());
		model.addAttribute("permohonanForm", new Permohonan());
		model.addAttribute("permohonanPenerbangan", new Penerbangan());
		model.addAttribute("permohonanBarangan", new Barangan());
		model.addAttribute("permohonanOpen", new Permohonan());
		model.addAttribute("penghapusanPermohonan", new Permohonan());
		model.addAttribute("permohonanBatal", new Permohonan());
		return "permohonanTiket";
		
	}

	@RequestMapping(value = "/batalPermohonan", method = RequestMethod.POST)
	public String batakPermohonan(HttpServletRequest request, @ModelAttribute("permohonanBatal") Permohonan userForm, Model model) {
		model.addAttribute("welcome", permohonanService.getAll());
		
		userForm.setStatusPermohonan("Batal");
		permohonanService.save(userForm);
		
		model.addAttribute("permohonanForm", new Permohonan());
		model.addAttribute("permohonanPenerbangan", new Penerbangan());
		model.addAttribute("permohonanBarangan", new Barangan());
		model.addAttribute("permohonanOpen", new Permohonan());
		model.addAttribute("penghapusanPermohonan", new Permohonan());
		model.addAttribute("permohonanBatal", new Permohonan());
        String contextPath = request.getContextPath();
        System.out.println(contextPath);

		SendHTMLEmail.sendHtmlEmail("mohdsyafiksyaaban@gmail.com","<!DOCTYPE html><html><body><style type='text/css'>#imageSize"
				+ " {width: 100%;height: 3%;}#footer {background: rgba(226,226,226,1);background: -moz-linear-gradient(left,"
				+ " rgba(226,226,226,1) 0%, rgba(219,219,219,1) 50%, rgba(209,209,209,1) 51%, rgba(254,254,254,1) 100%);background: "
				+ "-webkit-gradient(left top, right top, color-stop(0%, rgba(226,226,226,1)), color-stop(50%, rgba(219,219,219,1)), "
				+ "color-stop(51%, rgba(209,209,209,1)), color-stop(100%, rgba(254,254,254,1)));background: -webkit-linear-gradient(left,"
				+ " rgba(226,226,226,1) 0%, rgba(219,219,219,1) 50%, rgba(209,209,209,1) 51%, rgba(254,254,254,1) 100%);background: "
				+ "-o-linear-gradient(left, rgba(226,226,226,1) 0%, rgba(219,219,219,1) 50%, rgba(209,209,209,1) 51%, rgba(254,254,254,1) "
				+ "100%);background: -ms-linear-gradient(left, rgba(226,226,226,1) 0%, rgba(219,219,219,1) 50%, rgba(209,209,209,1) 51%, "
				+ "rgba(254,254,254,1) 100%);background: linear-gradient(to right, rgba(226,226,226,1) 0%, rgba(219,219,219,1) 50%, rgba"
				+ "(209,209,209,1) 51%, rgba(254,254,254,1) 100%);filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#e2e2e2',"
				+ " endColorstr='#fefefe', GradientType=1 );width: 100%;height: 3%;}</style>"
				+ "<img src='C:\\Users\\saufirasid\\Desktop\\STP\\STP\\src"
				+ "\\main\\webapp\\resources\\img\\mpc-header.psng' id ='imageSize'/><p>Assalamuaikum dan Salam Sejahtera,Terdapat permohonan PEMBATALAN "
				+ "diterima untuk kelulusan. Sila log masuk <a href=''>di sini</a>untuk melihat maklumat permohonan pembatalan.Sekian, terima kasih."
				+ "</p><p>Maklumat Hubungan: <a href='mailto:systempahantiket@gmail.com'>systempahantiket@gmail.com</a>.</p><footer><div id='footer'>"
				+ "</div></footer></body></html>");

		return "permohonanTiket";
		
	}
	
	@RequestMapping(value = "/updateStatus", method = RequestMethod.POST)
	public String updateStatus( @ModelAttribute("kemaskiniPermohon") Permohonan userForm, Model model) {
		model.addAttribute("welcome", permohonanService.getAll());
		
		userForm.setStatusPermohonan("Tolak");
		permohonanService.save(userForm);
		
		model.addAttribute("permohonanForm", new Permohonan());
		model.addAttribute("permohonanPenerbangan", new Penerbangan());
		model.addAttribute("permohonanBarangan", new Barangan());
		model.addAttribute("permohonanOpen", new Permohonan());
		model.addAttribute("kemaskiniPermohon", new Permohonan());

		return "welcome";
		
	}
	
	@RequestMapping(value = "/updateStatusLulus", method = RequestMethod.POST)
	public String updateStatusLulus( @ModelAttribute("kemaskiniPermohon") Permohonan userForm, Model model) {
		model.addAttribute("welcome", permohonanService.getAll());
		
		userForm.setStatusPermohonan("Proses");
		permohonanService.save(userForm);
		
		model.addAttribute("permohonanForm", new Permohonan());
		model.addAttribute("permohonanPenerbangan", new Penerbangan());
		model.addAttribute("permohonanBarangan", new Barangan());
		model.addAttribute("permohonanOpen", new Permohonan());
		model.addAttribute("kemaskiniPermohon", new Permohonan());

		return "welcome";
		
	}
	
	@RequestMapping(value = "/updateStatusPengesahan", method = RequestMethod.POST)
	public String updateStatusPengesahan( @ModelAttribute("kemaskiniPengesahan") Permohonan userForm, Model model) {
		model.addAttribute("welcome", permohonanService.getAll());
		
		userForm.setStatusPermohonan("Tiket Terbuka");
		permohonanService.save(userForm);
		
		model.addAttribute("permohonanForm", new Permohonan());
		model.addAttribute("permohonanPenerbangan", new Penerbangan());
		model.addAttribute("permohonanBarangan", new Barangan());
		model.addAttribute("permohonanOpen", new Permohonan());
		model.addAttribute("kemaskiniPengesahan", new Permohonan());

		return "pengesahan";
		
	}
	

}
