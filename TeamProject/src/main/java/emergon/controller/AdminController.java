
package emergon.controller;

import emergon.entity.Courses;
import emergon.entity.Roles;
import emergon.entity.Users;
import emergon.service.CoursesService;
import emergon.service.RolesService;
import emergon.service.UsersService;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/admin")
public class AdminController {
    
    
    @Autowired
    private UsersService usersService;
 
    @ModelAttribute("users")    
    public List<Users> getUsers(){
        List<Users> users = usersService.allStudents();
       return users;
    }
    
    @Autowired
    RolesService rolesService;
    
    @ModelAttribute("roloi")    
    public List<Roles> getRoles(){
        List<Roles> roles = rolesService.getRoles();
        roles.remove(0);
         return  roles;
    }
     

    
   
    @Autowired
    private CoursesService coursesService;
    
    @GetMapping()
    public String showAdminPage(Model model){
        List<Courses> courses = coursesService.findAll();
        model.addAttribute("courses", courses);
        return "admin/adminHome";
    }
    
    @GetMapping("/create")
    public String createNewCoursePage(Model model){
        model.addAttribute("course", new Courses());
        return "admin/createCourse";
    }
    

  
   @PostMapping("/create")
    public String createUser(@ModelAttribute("course") @Valid Courses course, BindingResult result, Model model){
        if(result.hasErrors()){
            String message ="Create a new Course failed : ";
            for (ObjectError o : result.getAllErrors()){
                message = message + "<br/>" + "<i>" + o.getDefaultMessage() + "</i>";
            }
            
            model.addAttribute("message", message);
            return "admin/createCourse";
        }
        else {
            coursesService.create(course);
           return "redirect:/admin";
        }
    }
  
    @GetMapping("/delete")
    public String deleteCourse(@RequestParam("id") int id){
        coursesService.removeCustomer(id);
        return "redirect:/admin";
    }
    
    @GetMapping("/edit")
   public String showEditCoursePage(@RequestParam("id") int id, Model model){
        Optional<Courses> findById = coursesService.findById(id);
        model.addAttribute("course", findById);
        model.addAttribute("users", findById.get().getUsers());
        model.addAttribute("videos", findById.get().getVideosList());
        return "admin/editCourse";
       
   }
   

   
   @PostMapping("/edit")
   public String editCourse(@ModelAttribute("course") @Valid Courses course, BindingResult result, Model model){
      if(result.hasErrors()){
            String message ="Edit Course failed : ";
            for (ObjectError o : result.getAllErrors()){
                message = message + "<br/>" + "<i>" + o.getDefaultMessage() + "</i>";
            }
            
            model.addAttribute("message", message);
            return "admin/editCourse";
        }
        else {
            coursesService.edit(course);
             model.addAttribute("course", course);
           return "redirect:/admin";
        }
   }
 
    
    @PostMapping("/search")
    public String viewHomePage(Model model , String keyword ) {
        System.out.println("Adminnnnnnnnnnnnnnn");
        List<Courses> courses = coursesService.listAll(keyword);
        model.addAttribute("courses", courses);
        model.addAttribute("keyword", keyword);
        return "admin/adminHome";
        
    }
    
    
      @GetMapping("/createUser")
    public String showCreateUserPage(Model model){
        model.addAttribute("user", new Users());
        return "admin/createAdminUser";
    }
    
    
    @PostMapping("/createUser")
    public String createUser(@ModelAttribute("user") @Valid Users user, BindingResult result, Model model){
        if(result.hasErrors()){
            String message ="Registration failed : ";
            for (ObjectError o : result.getAllErrors()){
                message = message + "<br/>" + "<i>" + o.getDefaultMessage() + "</i>";
            }
            
            model.addAttribute("message", message);
            return "admin/createAdminUser";
        }
        else {
            usersService.create(user);
            return "admin/adminHome";
        }
    }
}
