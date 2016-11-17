package com.techelevator.npgeek;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ParkController {
	
	private ParkDao parkDao;
	
	@Autowired 
	public ParkController(ParkDao parkDao) {
		this.parkDao = parkDao;
	}

	@RequestMapping("/homePage")
	public String showHomePage(ModelMap model) {
		model.addAttribute("parks", parkDao.getAllParks());
		return "homePage";
	}
	
	@RequestMapping("/parkDetails")
	public String showParkDetails(@RequestParam String parkCode, ModelMap model) {
		model.addAttribute("parks", parkDao.getParkByCode(parkCode));
		return "parkDetails";
	}
	
}
