package com.sigmatechnology.csa.entity;

import java.util.Arrays;
import java.util.Calendar;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Transient;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.sigmatechnology.csa.controller.UserController;

/**
 * Created by lucianahaugen on 31/08/17.
 */

@Entity
public class User {
	private static final Logger log = LoggerFactory.getLogger(UserController.class);
	private static final Integer MAX_BOOKINGS_YEAR = 5;
	private static final Double MAX_DISTANCE_YEAR = 400.0;

	@Id
	@Column(name = "user_id")
    @GeneratedValue(strategy=GenerationType.AUTO)
    private Long id;
	@Column(name = "user_name")
    private String userName;
	@JsonIgnore
    private String password;
    @Column(name = "is_approved")
    private boolean isApproved;
    @Column(name = "total_bookings_year")
    private Integer totalBookingsYear;
    @Column(name = "total_distance_year")
    private Double totalDistanceYear;
    private byte[] userImage;   
    @Transient
    private Boolean isWithinBookingTimeLimit;
    @Transient
    private Boolean isWithinBookingDistanceLimit;
    @Transient
    int currentYear = Calendar.getInstance().get(Calendar.YEAR);
    private boolean isBookable;
    
	public User() {
		
	}


	public User(Long id, String userName, String password, boolean isApproved, Integer totalBookingsYear,
			Double totalDistanceYear, byte[] userImage) {
		super();
		this.id = id;
		this.userName = userName;
		this.password = password;
		this.isApproved = isApproved;
		this.totalBookingsYear = totalBookingsYear;
		this.totalDistanceYear = totalDistanceYear;
		this.userImage = userImage;
		this.isWithinBookingTimeLimit = (totalBookingsYear < MAX_BOOKINGS_YEAR);
		this.isWithinBookingDistanceLimit = (totalDistanceYear < MAX_DISTANCE_YEAR);
		log.debug("User " + userName + " has been created.");
	}



	public Long getUserId() {
		return id;
	}

	public void setUserId(Long userId) {
		this.id = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public boolean getIsApproved() {
		return isApproved;
	}

	public void setApproved(boolean isApproved) {
		this.isApproved = isApproved;
	}

	public Integer getTotalBookingsYear() {
		return totalBookingsYear;
	}

	public void setTotalBookingsYear(Integer totalBookingsYear) {
		this.totalBookingsYear = totalBookingsYear;
	}

	public Double getTotalDistanceYear() {
		return totalDistanceYear;
	}

	public void setTotalDistanceYear(Double totalDistanceYear) {
		this.totalDistanceYear = totalDistanceYear;
	}

	public byte[] getUserImage() {
		return userImage;
	}

	public void setUserImage(byte[] userImage) {
		this.userImage = userImage;
	}
	
	@Transient
	public Boolean getIsWithinBookingTimeLimit() {
		return isWithinBookingTimeLimit;
	}
	@Transient
	public Boolean getIsWithinBookingDistanceLimit() {
		return isWithinBookingDistanceLimit;
	}
		

	public boolean getIsBookable() {
		return isBookable;
	}


	public void setIsBookable(boolean isBookable) {
		this.isBookable = isBookable;
	}


	public Boolean isBookable(User user) {
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


	@Override
	public String toString() {
		return "User [id=" + id + ", userName=" + userName + ", password=" + password + ", isApproved=" + isApproved
				+ ", totalBookingsYear=" + totalBookingsYear + ", totalDistanceYear=" + totalDistanceYear
				+ ", userImage=" + Arrays.toString(userImage) + ", isWithinBookingTimeLimit=" + isWithinBookingTimeLimit
				+ ", isWithingBoookingDistanceLimit=" + isWithinBookingDistanceLimit + "]";
	}

	
	
    
    
    
}
