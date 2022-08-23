package ecom.dao;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import ecom.model.Users;


@Component
public class UsersDAO {
	@Autowired
	HibernateTemplate hibernateTemplate;
	@Transactional
	public void addUser(Users usr)
	{
		hibernateTemplate.save(usr);
	}
	
	public List<Users> getAllUsers(){
		return hibernateTemplate.loadAll(Users.class);
	}
	
	public Users getUserById(long id) {
		
		return hibernateTemplate.get(Users.class,id);
		
	}
	@Transactional
	public void updateUser(Users usr) {
		hibernateTemplate.update(usr);
	}
	@Transactional
	public void deleteUser(long id) {
		
		hibernateTemplate.delete(hibernateTemplate.load(Users.class,id));
	}

}
