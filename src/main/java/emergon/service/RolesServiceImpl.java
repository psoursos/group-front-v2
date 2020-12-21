
package emergon.service;

import emergon.dao.RolesDao;
import emergon.entity.Roles;
import java.util.List;
import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
@Transactional
public class RolesServiceImpl implements RolesService {
      @Autowired
    RolesDao rdao;

    @Override
    public List<Roles> getRoles() {
      return rdao.findAll();
    }
      
    
}
