package com.sigmatechnology.csa.service;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sigmatechnology.csa.controller.UserController;
import com.sigmatechnology.csa.entity.User;
import com.sigmatechnology.csa.repository.UserRepository;

/**
 * Created by lucianahaugen on 31/08/17.
 */
@Service
public class UserService {
	private static final Logger log = LoggerFactory.getLogger(UserController.class);
	int currentYear = Calendar.getInstance().get(Calendar.YEAR);
	
	@Autowired
	private UserRepository userRepository;

	
	public List<User> getAll(){
		List<User> usersList = new ArrayList<>();
		userRepository.findAll().forEach(usersList::add);
		return usersList;
	}
	
	public User getUser(Long id) {
		return userRepository.findOne(id);
	}

	public void createUser(User user) {
		userRepository.save(user);
	}

	public void updateUser(long id, User user) {
		List<User> usersList = new ArrayList<>();
		userRepository.findAll().forEach(usersList::add);
		for(User olderUser:usersList) {
			if(olderUser.getUserId()==id) {
				log.debug("User " + olderUser.getUserId() + "has been found and will be updated by " + id );
				userRepository.save(user);
				return;
			}
		}	
	}

	public void deleteUser(long id) {
		userRepository.delete(id);
	}
	
	public boolean checkUserIsBookable(User user) {
		if (user.getIsWithinBookingTimeLimit() && user.getIsWithinBookingDistanceLimit()) {
			return true;
		} else if (!user.getIsWithinBookingTimeLimit()) {
			System.out.println("You have exceded your Booking Limit");
			log.debug("User has exceded the amout of times he/she can do a booking this year/" + currentYear);
			return false;
		} else if (!user.getIsWithinBookingDistanceLimit()) {
			System.out.println("You have exceded your Distance Limit");
			log.debug("User has exceded the distance of 400km he/she is allowed to this year/" + currentYear);
			return false;
		}
		return (user.getIsWithinBookingTimeLimit() && user.getIsWithinBookingDistanceLimit());
	}
	

	//TODO: NOVO
	public void save(User user) {
		userRepository.save(user);
		
	}


}
