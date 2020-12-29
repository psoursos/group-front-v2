
package emergon.service;

import emergon.entity.Users;
import org.springframework.security.core.userdetails.UserDetailsService;


public interface UsersService extends UserDetailsService {

    public void create(Users user);
    
  
    
}
