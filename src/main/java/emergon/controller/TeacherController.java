
package emergon.controller;

import emergon.entity.Courses;
import emergon.service.CoursesService;
import java.util.List;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/teacher")
public class TeacherController {
    
     @Autowired
    private CoursesService coursesService;
//    
//    @GetMapping()
//    public String showAdminPage(Model model){
//        List<Courses> courses = coursesService.findAll();
//        model.addAttribute("courses", courses);
//        return "admin/adminHome";
//    }
    
    @GetMapping
   public String showTeacherHomePage(Model model){
        List<Courses> courses = coursesService.findAll();
        model.addAttribute("courses", courses);
        return "teacher/teacherHome";
   }
   
   
   @GetMapping("/create")
    public String createNewCoursePage(Model model){
        model.addAttribute("course", new Courses());
        return "teacher/createCourse";
    }
    

  
   @PostMapping("/create")
    public String createUser(@ModelAttribute("course") @Valid Courses course, BindingResult result, Model model){
        if(result.hasErrors()){
            String message ="Create a new Course failed : ";
            for (ObjectError o : result.getAllErrors()){
                message = message + "<br/>" + "<i>" + o.getDefaultMessage() + "</i>";
            }
            
            model.addAttribute("message", message);
            return "teacher/createCourse";
        }
        else {
            coursesService.create(course);
           return "redirect:/teacher";
        }
    }
   
   
   
   
    
}
