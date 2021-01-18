/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package emergon.dao;

import emergon.entity.Users;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface UsersDao extends JpaRepository<Users, Integer> {

    @Query(value = "SELECT u FROM Users u WHERE u.username = ?1")
    Users findByUsername(String username);
    
    @Query(value = "SELECT u FROM Users u WHERE u.role.rid = 3")
    List<Users> findStudents();
    
    
}
