package com.techelevator.dreamworld.model;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

@Component
public class JDBCSubscriberDAO implements SubscriberDAO{

	private JdbcTemplate jdbcTemplate;
	
	@Autowired
	public JDBCSubscriberDAO(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	@Override
	public void saveSubscriber(String email, String password, String fName, String lName) {
		String sqlSaveSubscriber = ("INSERT INTO subscriber(email, password, fName, lName) VALUES (?,?,?,?)");
		jdbcTemplate.update(sqlSaveSubscriber, email, password, fName, lName);
	}

	@Override
	public boolean searchForUsernameAndPassword(String email, String password) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public void updatePassword(String email, String password) {
		// TODO Auto-generated method stub
		
	}

}
