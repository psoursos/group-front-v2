
package emergon.service;

import emergon.entity.Courses;
import java.util.List;
import java.util.Optional;




public interface CoursesService {

    public List<Courses> findAll();

    public Courses create(Courses course);

    public void removeCustomer(int id);

    public Optional<Courses> findById(int id);

    public Courses edit(Courses course);

    public List<Courses> listAll(String keyword);

   
    
}
