package com.techelevator.npgeek;



public class Weather {

	private String parkCode;
	private int fiveDayForecastValue;
	private int lowTemp;
	private int highTemp;
	private String forecast;
	private double lowTempC;
	private double highTempC;
	private String tempPref;

	
	public String getParkCode() {
		return parkCode;
	}
	public void setParkCode(String parkCode) {
		this.parkCode = parkCode;
	}
	public int getFiveDayForecastValue() {
		return fiveDayForecastValue;
	}
	public void setFiveDayForecastValue(int fiveDayForecastValue) {
		this.fiveDayForecastValue = fiveDayForecastValue;
	}
	public int getLowTemp() {
		return lowTemp;
	}
	public void setLowTemp(int lowTemp) {
		this.lowTemp = lowTemp;
	}
	public int getHighTemp() {
		return highTemp;
	}
	public void setHighTemp(int highTemp) {
		this.highTemp = highTemp;
	}
	public String getForecast() {
		return forecast;
	}
	public void setForecast(String forecast) {
		this.forecast = forecast;
	}
	public int getLowTempC() {
		lowTempC = ((double)lowTemp - 32) * 0.556;
		return (int)lowTempC;
	}
	public void setLowTempC(int lowTempC) {
		this.lowTempC = lowTempC;
	}
	public int getHighTempC() {
		highTempC = ((double)highTemp - 32) * 0.556;
		return (int)highTempC;
	}
	public void setHighTempC(int highTempC) {
		this.highTempC = highTempC;
	}
	public String getTempPref() {
		return tempPref;
	}
	public void setTempPref(String tempPref) {
		this.tempPref = tempPref;
	}
	
}
