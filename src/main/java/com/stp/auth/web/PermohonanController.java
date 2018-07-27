package com.stp.auth.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.stp.auth.model.User;

@Controller
public class PermohonanController {

    @RequestMapping(value = "/permohonan", method = RequestMethod.GET)
    public String permohonan() {


        return "permohonan";
    }



}
