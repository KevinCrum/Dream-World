package com.techelevator.dreamworld.model;


public interface SubscriberDAO {

	public void saveSubscriber(String email, String password, String fName, String lName);

	public boolean searchForUsernameAndPassword(String email, String password);

	public void updatePassword(String email, String password);

}


	

