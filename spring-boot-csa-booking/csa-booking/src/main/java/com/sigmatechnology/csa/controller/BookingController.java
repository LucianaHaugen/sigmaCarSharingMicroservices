package com.sigmatechnology.csa.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.sigmatechnology.csa.entity.Booking;
import com.sigmatechnology.csa.service.BookingService;


/**
 * @author lucianahaugen on 05/09/17
 * Return a JSON payload from user REST API endpoint 
 * by returning objects from user Spring MVC controller method.
 */

@RestController
@RequestMapping("api/csa/")
public class BookingController {
	
	@Autowired
	private BookingService bookingService;
	
	@GetMapping("/bookings")
	public List<Booking> getAllBookings(){
		return bookingService.getAllBookings();
	}
	
	@GetMapping("/users/{id}/bookings")
	public List<Booking> getAllBookings(@PathVariable long id){
		return bookingService.getAllBookingsOfUser(id);
	}
	
	@GetMapping("/users/{usersId}/bookings/{id}")
	public Booking getBooking(@PathVariable long id) {
		return bookingService.getBooking(id);
	}
	
	@GetMapping("/bookings/user/{userId}")
	public List<Booking>getAllBookingByUser(@PathVariable long userId){
		return bookingService.getAllBookingsOfUser(userId);
	}
	
	@GetMapping("/bookings/vehicle/{vehicleId}")
	public List<Booking>getAllBookingByVehicle(@PathVariable long vehicleId){
		return bookingService.getAllBookingsOfVehicle(vehicleId);
	}
	
	@RequestMapping(method=RequestMethod.POST, value="users/{userId}/bookings")
	public void addBooking(@RequestBody Booking booking, @PathVariable long userId) {
		//TODO: booking.setUser(userId);
		bookingService.createBooking(booking);
	}
	
	@RequestMapping(method=RequestMethod.PUT, value="users/{userId}/bookings/{id}")
	public void updateBooking(@RequestBody Booking booking, @PathVariable long userId, @PathVariable long id) {
		//TODO: booking.setUser(id);
		//booking.setUser(new User());
		bookingService.updateBooking(id, booking);
	}
	
	@RequestMapping(method=RequestMethod.DELETE, value="users/{userId}/bookings/{id}")
	public void deleteBooking(@PathVariable long id) {
		bookingService.deleteBooking(id);
	}
}
