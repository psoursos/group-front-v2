
package emergon.service;

import emergon.dao.CoursesDao;
import emergon.entity.Courses;
import java.util.List;
import java.util.Optional;
import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
@Transactional
public class CoursesServiceImpl implements CoursesService {

    
     
    
    @Autowired
    private CoursesDao cdao;
    
    @Override
    public List<Courses> findAll() {
        List<Courses> courses = cdao.findAll();
        return courses;
    }

    @Override
    public Courses create(Courses course) {
         Courses newCourse = cdao.save(course);
         return newCourse;
    }

    @Override
    public void removeCustomer(int id) {
      cdao.deleteById(id);
    }

    @Override
    public Optional<Courses> findById(int id) {
        Optional<Courses> findById = cdao.findById(id);
        System.out.println("Courseee " + findById.get().getUsers().toString());
        return findById;
    }

    @Override
    public Courses edit(Courses course) {
        Courses editCourse = cdao.save(course);
        return editCourse;
    }

    @Override
    public List<Courses> listAll(String keyword) {
         System.out.println("CoursesServicesssssssssssssssss");
           if (keyword != null) {
               System.out.println("CoursesServicesssssssssssssssssIfffffffffff");
            return cdao.search(keyword);
        }
        return cdao.findAll();
    }
    }

    

   

    

    

   

    

    
      
    
    

