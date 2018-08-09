package com.stp.auth.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.stp.auth.model.Pembelian;
import com.stp.auth.model.Permohonan;
import com.stp.auth.model.User;
import com.stp.auth.service.PembelianService;
import com.stp.auth.service.PermohonanService;
import com.stp.auth.service.SecurityService;
import com.stp.auth.service.UserService;
import com.stp.auth.validator.UserValidator;

@Controller
public class UserController {
    @Autowired
    private UserService userService;

    @Autowired
    private SecurityService securityService;
    
    @Autowired
    private PermohonanService permohonanService;
    
    @Autowired
    private PembelianService pembelianService;

    @Autowired
    private UserValidator userValidator;

    @RequestMapping(value = "/registration", method = RequestMethod.GET)
    public String registration(Model model) {
        model.addAttribute("userForm", new User());

        return "registration";
    }

    @RequestMapping(value = "/registration", method = RequestMethod.POST)
    public String registration(@ModelAttribute("userForm") User userForm, BindingResult bindingResult, Model model) {
        userValidator.validate(userForm, bindingResult);

        if (bindingResult.hasErrors()) {
            return "registration";
        }

        userService.save(userForm);

        securityService.autologin(userForm.getUsername(), userForm.getPasswordConfirm());

        return "redirect:/welcome";
    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login(Model model, String error, String logout) {
        if (error != null)
            model.addAttribute("error", "Your username and password is invalid.");

        if (logout != null)
            model.addAttribute("message", "You have been logged out successfully.");

        return "login";
    }

    @RequestMapping(value = {"/", "/welcome"}, method = RequestMethod.GET)
    public String welcome(Model model) {
    	model.addAttribute("welcome", permohonanService.getAll());
    	model.addAttribute("kemaskiniPermohon", new Permohonan());
        return "welcome";
    }
    
    @RequestMapping(value = {"/pengesahan"}, method = RequestMethod.GET)
    public String pengesahan(Model model) {
    	model.addAttribute("welcome", permohonanService.getAll());
    	model.addAttribute("kemaskiniPengesahan", new Permohonan());
        return "pengesahan";
    }
    
}
