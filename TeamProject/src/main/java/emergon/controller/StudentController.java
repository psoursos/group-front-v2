
package emergon.controller;

import emergon.entity.Courses;
import emergon.entity.Users;////////////////////////////////
import emergon.service.CoursesService;
import emergon.service.UsersService;/////////////////////////
import java.security.Principal;/////////////////////////////
import java.util.List;
import java.util.Optional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////
//@Controller
//@RequestMapping("/student")
//public class StudentController {
//    
//     @Autowired
//    private CoursesService coursesService;
//
//      @GetMapping
//   public String showStudentHomePage(Model model){
//        List<Courses> courses = coursesService.findAll();
//        model.addAttribute("courses", courses);
//       return "student/studentHome";
//   }
//   
//   
//   @GetMapping("/testPage")
//     public String showStudentTestPage(Model model){
//         List<Courses> courses = coursesService.findAll();
//        model.addAttribute("courses", courses);
//          return "student/testPage";
//     }
//     
//     @GetMapping("/loginPage")
//        public String logoReturnEkpaideusi(){
//            return "login";
//        }
//        
//         @GetMapping("/logout/loginPage")
//        public String logoutStudent(){
//            return "login";
//        }
//        
//        
//         @GetMapping("/find")
//   public String showEditCoursePage(@RequestParam("id") int id, Model model){
//        Optional<Courses> findById = coursesService.findById(id);
//        model.addAttribute("course", findById);
////        model.addAttribute("users", findById.get().getUsers());
//        model.addAttribute("videos", findById.get().getVideosList());
//        return "student/find";
//       
//   }
//}
//////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////
@Controller
@RequestMapping("/student")
public class StudentController {
    
     @Autowired
    private CoursesService coursesService;
      @Autowired
    private UsersService usersService;
//    
//    @GetMapping()
//    public String showStudentHomePage(){
//        return "student/studentHome";
//    }
     
//      @GetMapping("/mycourses")
//   public String showEditCoursePage(@RequestParam("id") int id, Model model){
//        Optional<Users> findById = usersService.findById(id);
//        
//        model.addAttribute("course", findById);
//        model.addAttribute("users", findById.get().getUsers());
//        model.addAttribute("videos", findById.get().getVideosList());
//        return "admin/editCourse";
       
//   }
      
      @GetMapping("/mycourses")
     public String showStudentCoursePage(Principal principal, Model model){
         Users  user = usersService.findUserByUsername(principal.getName());
         List<Courses> userCourses = user.getCoursesList();
         if(userCourses.isEmpty() || userCourses.equals(null)) {
             String message = user.getUsername() + " is not registered in any course.";
             model.addAttribute("noCourses", message);
             return "student/studentHome";
         }else {
            model.addAttribute("userCourses", userCourses);
            return "student/mycourses";
         }
     }
   
    
    
//      @GetMapping
//   public String showStudentHomePage(Model model){
//        List<Courses> courses = coursesService.findAll();
//        model.addAttribute("courses", courses);
//       return "student/studentHome";
//   }
   
   
   @GetMapping()
     public String showStudentTestPage(Model model){
         List<Courses> courses = coursesService.findAll();
        model.addAttribute("courses", courses);
          return "student/studentHome";
     }
     
     @GetMapping("/loginPage")
        public String logoReturnEkpaideusi(){
            return "login";
        }
        
         @GetMapping("/logout/loginPage")
        public String logoutStudent(){
            return "login";
        }
        
        
         @GetMapping("/find")
   public String showEditCoursePage(@RequestParam("id") int id, Model model){
        Optional<Courses> findById = coursesService.findById(id);
        model.addAttribute("course", findById);
//        model.addAttribute("users", findById.get().getUsers());
        model.addAttribute("videos", findById.get().getVideosList());
        return "student/find";
//  return "admin/editCourse";
       
   }
   /////////nikos ////////////////////////////////////////////////////////////////
       @GetMapping("/videos")
    public String showVideoPage(@RequestParam("courseId") int courseId, Model model) {
        Optional<Courses> course = coursesService.findById(courseId);
        model.addAttribute("course", course);
        model.addAttribute("videos", course.get().getVideosList());
        model.addAttribute("title", course.get().getTitle());
        return "student/videos";
    }
   

   
}
