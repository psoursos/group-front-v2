
package emergon.dao;

import emergon.entity.Courses;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface CoursesDao  extends JpaRepository<Courses, Integer> {
    
   
  
@Query("SELECT c FROM Courses c WHERE c.title LIKE %?1%"
            + " OR  c.description LIKE %?1%"
            + " OR  c.stream LIKE %?1%"
            + " OR CONCAT(c.price, '') LIKE %?1%")
    public List<Courses> search(String keyword);
   
    
}
