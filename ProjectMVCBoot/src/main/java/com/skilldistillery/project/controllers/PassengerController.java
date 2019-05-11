package com.skilldistillery.project.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.project.data.PassengerDAO;
import com.skilldistillery.project.entities.Passenger;

@Controller
public class PassengerController {
	
	@Autowired
	private PassengerDAO passengerDAO;
	
	@RequestMapping(path="/")
	public String index() {
		System.out.println("here");
		return "WEB-INF/index.jsp";
	}
	@RequestMapping(path="home.do")
	public ModelAndView homeView() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("WEB-INF/index.jsp");
		return mv;
	}
	@RequestMapping(path="add.do")
	public ModelAndView addPassengerView() {
		ModelAndView mv = new ModelAndView();
		mv.addObject("passenger", new Passenger());
		mv.setViewName("WEB-INF/add.jsp");
		return mv;
	}
	@RequestMapping(path="addPassenger.do",method=RequestMethod.POST)
	public ModelAndView addPassenger(@ModelAttribute("passenger") Passenger passenger) {
		ModelAndView mv = new ModelAndView();
		Passenger p = passengerDAO.addPassenger(passenger);
		System.out.println(p.getFirstName());
		
		mv.addObject("passenger", p);
		mv.setViewName("WEB-INF/result.jsp");
		return mv;
	}
	@RequestMapping(path="updateView.do")
	public ModelAndView updatePassengerView(int id) {
		ModelAndView mv = new ModelAndView();
		Passenger p = passengerDAO.getPassengerById(id);
		
		mv.addObject("passenger", p);
		mv.setViewName("WEB-INF/update.jsp");
		return mv;
	}
	@RequestMapping(path="update.do",method=RequestMethod.POST)
	public ModelAndView updatePassenger(@ModelAttribute("passenger") Passenger passenger) {
		ModelAndView mv = new ModelAndView();
		Passenger p = passengerDAO.updatePassenger(passenger);
		
		mv.addObject("passenger", p);
		mv.setViewName("WEB-INF/result.jsp");
		return mv;
	}
	
	@RequestMapping(path="getPassenger.do", method=RequestMethod.GET)
	public ModelAndView getPassengerbyId(int id) {
		ModelAndView mv = new ModelAndView();
		Passenger p = passengerDAO.getPassengerById(id);
		
		mv.addObject("passenger",p);
		mv.setViewName("WEB-INF/result.jsp");
		return mv;
	}
	
	
	@RequestMapping(path="delete.do",method=RequestMethod.POST)
	public ModelAndView deletePassenger(int id) {
		ModelAndView mv = new ModelAndView();
		Passenger p = passengerDAO.getPassengerById(id);
		p = passengerDAO.deletePassenger(p);
		
		mv.addObject("deletedPassenger", p);
		mv.setViewName("WEB-INF/index.jsp");
		return mv;
	}
	@RequestMapping(path="allPassengers.do")
	public ModelAndView allPassengers() {
		ModelAndView mv = new ModelAndView();
		List<Passenger> passengers = passengerDAO.getAllPassengers();
		
		mv.addObject("passengers", passengers);
		mv.setViewName("WEB-INF/result.jsp");
		return mv;
	}
	
	

}
