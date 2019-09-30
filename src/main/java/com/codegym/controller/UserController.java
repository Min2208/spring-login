package com.codegym.controller;

import com.codegym.model.Login;
import com.codegym.model.User;
import com.codegym.model.UserLogin;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UserController {
    @GetMapping("/home")
    public ModelAndView home(){
        ModelAndView modelAndView = new ModelAndView("home", "login", new User("vuong","123456","Vuong dai ca","vuong@gmail.com",30));
        return modelAndView;
    }

    @PostMapping("/login")
    public ModelAndView login(@ModelAttribute Login login){
        User user = UserLogin.checkLogin(login);
        if(user == null){
            ModelAndView modelAndView = new ModelAndView("error");
            return modelAndView;
        } else {
            ModelAndView modelAndView = new ModelAndView("user");
            modelAndView.addObject("user", user);
            return modelAndView;
        }
    }

}
