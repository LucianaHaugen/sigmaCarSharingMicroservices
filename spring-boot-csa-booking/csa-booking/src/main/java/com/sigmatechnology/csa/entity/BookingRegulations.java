package com.sigmatechnology.csa.entity;

public enum BookingRegulations {

	MAX_BOOKINGS_YEAR,
    MAX_DISTANCE_YEAR;
    
    int getMaxBookingYear() {
		return 5;
	}
	
	double getMaxDistanceYear() {
		return 400.0;
	}
    
    
}
