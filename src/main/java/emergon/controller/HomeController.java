/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package emergon.controller;

import emergon.entity.Roles;
import emergon.entity.Users;
import emergon.service.RolesService;
import emergon.service.UsersService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class HomeController {
    
    @Autowired
    UsersService usersService;
    
    @Autowired
    RolesService rolesService;
    
    @ModelAttribute("roloi")    
    public List<Roles> getRoles(){
         return  rolesService.getRoles();
    }
    
    
    @GetMapping
    public String showHomePage(){
        return "home";
    }
    
    @GetMapping("/create")
    public String showCreateUserPage(Model model){
        model.addAttribute("user", new Users());
        return "createUser";
    }
    
    @PostMapping("/create")
    public String createUser(@ModelAttribute("user") Users user){
      usersService.create(user);
        return "login";
    }
}
