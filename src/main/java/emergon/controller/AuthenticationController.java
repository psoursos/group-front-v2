
package emergon.controller;

import emergon.entity.Users;
import javax.validation.Valid;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class AuthenticationController {
    
    @GetMapping("/loginPage")
    public String showLoginPage(){
        return "login";
    }
    
    @RequestMapping("/access-denied")
    public String showAccessDeniedPage(){
        return "access-denied";
    }
  
    
    
}
