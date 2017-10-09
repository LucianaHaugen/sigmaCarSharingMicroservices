package com.sigmatechnology.csa.entity;


public class User {
    private Long userId;
    private String userName;
    private String password;
    private boolean isApproved;
    private Integer totalBookingsYear;
    private Double totalDistanceYear;
    private byte[] userImage;
    
    
    
	public User() {
		
	}

	public User(Long userId, String userName, String password, boolean isApproved, Integer totalBookingsYear,
			Double totalDistanceYear) {
		this.userId = userId;
		this.userName = userName;
		this.password = password;
		this.isApproved = isApproved;
		this.totalBookingsYear = totalBookingsYear;
		this.totalDistanceYear = totalDistanceYear;
	}

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
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

	public boolean isApproved() {
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

	@Override
	public String toString() {
		return "User [userId=" + userId + ", userName=" + userName + ", password=" + password + ", isApproved="
				+ isApproved + ", totalBookingsYear=" + totalBookingsYear + ", totalDistanceYear=" + totalDistanceYear
				+ "]";
	}
}