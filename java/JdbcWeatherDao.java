package com.techelevator.npgeek;

import java.util.ArrayList;
import java.util.List;
import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

@Component
public class JdbcWeatherDao implements WeatherDao {

	private JdbcTemplate jdbcTemplate;
	
	@Autowired
	public JdbcWeatherDao(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}
	


	@Override
	public List<Weather> getWeatherByPark(String parkCode, String tempPref) {
		List<Weather> weatherList = new ArrayList<>();
		String sqlSelectWeatherByParkCode = "SELECT * FROM weather WHERE parkcode = ?";
		SqlRowSet results = jdbcTemplate.queryForRowSet(sqlSelectWeatherByParkCode, parkCode);
		while(results.next()) {
			Weather weather = new Weather();
			weather.setFiveDayForecastValue(results.getInt("fivedayforecastvalue"));
			weather.setForecast(results.getString("forecast"));
			weather.setHighTemp(results.getInt("high"));
			weather.setLowTemp(results.getInt("low"));
			weather.setParkCode(results.getString("parkcode"));
			weather.setLowTempC(weather.getHighTempC());
			weather.setHighTempC(weather.getLowTempC());
			weather.setTempPref(tempPref);
			weatherList.add(weather);
		}
		return weatherList;
	}

}
