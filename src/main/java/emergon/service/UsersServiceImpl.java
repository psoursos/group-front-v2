/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package emergon.service;

import emergon.dao.UsersDao;
import emergon.entity.Roles;
import emergon.entity.Users;
import java.util.ArrayList;
import java.util.List;
import javax.transaction.Transactional;
import static org.apache.tomcat.jni.User.username;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

@Service
@Transactional
public class UsersServiceImpl implements UsersService {

    
    @Autowired
    private UsersDao udao;
   @Autowired
    PasswordEncoder passwordEncoder;
    
    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        Users myuser = udao.findByUsername(username);
       List<GrantedAuthority> authorities = convertRolesToGrantedAuthorities(myuser.getRolesList());
        User user = new User(myuser.getUsername(),  myuser.getPasswd(), authorities);
        return user;
    }
    
    
    private List<GrantedAuthority>  convertRolesToGrantedAuthorities(List<Roles> roloi){
          List<GrantedAuthority> authorities = new  ArrayList(); // a list with GrantedAuthority
          for (Roles roles : roloi) {
              SimpleGrantedAuthority  authority = new SimpleGrantedAuthority("ROLE_" + roles.getRole());
              authorities.add(authority);
          }
          return authorities;
      }

    @Override
    public void create(Users user) {
       String firstPassword = user.getPasswd();
        String encodedPassword = passwordEncoder.encode(firstPassword);
        user.setPasswd(encodedPassword);
        udao.save(user);
    }
    
    
    

}
