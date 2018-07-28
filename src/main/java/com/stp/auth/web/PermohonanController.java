package com.stp.auth.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.stp.auth.model.Permohonan;
import com.stp.auth.model.User;
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
    public String registration(@ModelAttribute("permohonanForm") Permohonan userForm, BindingResult bindingResult, Model model) {

    	permohonanService.save(userForm);

        return "redirect:/welcome";
    }




}
