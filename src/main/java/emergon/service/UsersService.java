
package emergon.service;

import emergon.entity.Courses;/////////////////////////////////////////////////
import emergon.entity.Users;
import java.util.List;
import java.util.Optional;/////////////////////////////////////////////////////
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////
//public interface UsersService extends UserDetailsService {
//
//    public void create(Users user);
//
// 
//
//    public List<Users> allUsers();
//    
//  
//    public List<Users> allStudents();
//}
////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////
public interface UsersService extends UserDetailsService {

  

    public void create(Users user);

    public Users findUserByUsername(String username);

    public List<Users> allUsers();
    
  
    public List<Users> allStudents();

//    public Optional<Users> findById(int id);

    public Optional findById(int id);

  
}