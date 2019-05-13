package com.skilldistillery.project.data;

import java.util.List;

import com.skilldistillery.project.entities.Passenger;

public interface PassengerDAO {

	public Passenger getPassengerById(int id);
	public List<Passenger> getAllPassengers();
	public Passenger addPassenger(Passenger p);
	Passenger updatePassenger(Passenger p);
	Passenger deletePassenger(Passenger p);
	List<Passenger> getPassengerByKeyword(String keyword);
	List<Passenger> getAllPassengersOrderByFirstName();
	List<Passenger> getAllPassengersOrderByLastName();
	List<Passenger> getAllPassengersOrderByAge();
	
}
