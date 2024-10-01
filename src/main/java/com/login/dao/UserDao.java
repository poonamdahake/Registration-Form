package com.login.dao;

import java.util.List;
import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.login.entity.User;

@Repository
public class UserDao {

	@Autowired
	private HibernateTemplate hibernateTemplate;

	@Transactional
	public void  createUser(User user) {

		hibernateTemplate.save(user);
	

	}

	public List<User> getAll() {

		return hibernateTemplate.loadAll(User.class);
	}

	

	public User findByid(int id) {
		
		return hibernateTemplate.get(User.class, id);
	}

	public boolean existsByLoginId(String loginId) {
		
		return hibernateTemplate.equals(loginId);
	}
	
	@Transactional
	public void deleteUser(int id) {
		User user = hibernateTemplate.get(User.class, id);
		hibernateTemplate.delete(user);

	}

	public List<User> findAll() {
	 
	    return hibernateTemplate.loadAll(User.class);
	}



}

	
 
