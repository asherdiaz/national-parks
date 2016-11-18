package com.techelevator.npgeek;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;


@Controller
@SessionAttributes("weatherList")
public class WeatherController {

	private WeatherDao weatherDao;
	
	@Autowired
	public WeatherController(WeatherDao weatherDao) {
		this.weatherDao = weatherDao;
	}
	
	@RequestMapping(path="/fiveDayForecast", method=RequestMethod.GET)
	public List<Weather> showWeatherDetails(@RequestParam String parkCode, @RequestParam String tempPref, ModelMap model) {
		List<Weather> weatherList = weatherDao.getWeatherByPark(parkCode, tempPref);
		model.addAttribute("weatherList", weatherList);
		return weatherList;
	}
	
}
