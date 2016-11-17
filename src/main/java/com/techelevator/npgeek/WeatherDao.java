package com.techelevator.npgeek;

import java.util.List;

public interface WeatherDao {
	
	public List<Weather> getWeatherByPark(String parkCode, String tempPref);
	
}

