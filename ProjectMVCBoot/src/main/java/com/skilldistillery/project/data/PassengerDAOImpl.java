package com.skilldistillery.project.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.project.entities.Passenger;

@Transactional
@Service
public class PassengerDAOImpl implements PassengerDAO {
	
	@PersistenceContext
	private EntityManager em;

	@Override
	public Passenger getPassengerById(int id) {
		Passenger p = em.find(Passenger.class, id);
		return p;
	}
	@Override
	public List<Passenger> getPassengerByKeyword(String keyword) {
		String query = "Select p from Passenger p where p.firstName like :name or p.lastName like :name";
		
		List<Passenger> p = em.createQuery(query, Passenger.class).setParameter("name", "%"+keyword+"%").getResultList();
		return p;
	}
	@Override
	public List<Passenger> getAllPassengersOrderByFirstName() {
		String query = "Select p from Passenger p order by firstName";
		
		List<Passenger> p = em.createQuery(query, Passenger.class).getResultList();
		return p;
	}
	@Override
	public List<Passenger> getAllPassengersOrderByLastName() {
		String query = "Select p from Passenger p order by lastName";
		
		List<Passenger> p = em.createQuery(query, Passenger.class).getResultList();
		return p;
	}
	@Override
	public List<Passenger> getAllPassengersOrderByAge() {
		String query = "Select p from Passenger p order by age";
		
		List<Passenger> p = em.createQuery(query, Passenger.class).getResultList();
		return p;
	}
	@Override
	public List<Passenger> getAllPassengers() {
		String query = "Select passenger from Passenger passenger";
		
		List<Passenger> passengers = em.createQuery(query, Passenger.class).getResultList();
		return passengers;
	}

	@Override
	public Passenger addPassenger(Passenger p) {
		Passenger passenger = new Passenger();
		passenger.setFirstName(p.getFirstName());
		passenger.setLastName(p.getLastName());
		passenger.setAge(p.getAge());
		passenger.setCountry(p.getCountry());
		passenger.setPassport(p.getPassport());
		em.persist(passenger);
		em.flush();
		return passenger;
	}
	
	@Override
	public Passenger updatePassenger(Passenger p) {
		Passenger passenger = em.find(Passenger.class, p.getId());
		passenger.setId(p.getId());
		passenger.setFirstName(p.getFirstName());
		passenger.setLastName(p.getLastName());
		passenger.setAge(p.getAge());
		passenger.setCountry(p.getCountry());
		passenger.setPassport(p.getPassport());
		em.persist(passenger);
		em.flush();
		
		return passenger;
	}
	
	@Override
	public Passenger deletePassenger(Passenger p) {
		Passenger passenger = em.find(Passenger.class, p.getId());
		
		em.remove(passenger);
		
		return passenger;
	}

}
