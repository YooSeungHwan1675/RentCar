package com.spring.dto;

import java.util.List;
import java.util.Map;

public class CarParam {
	
	private int carInfo_idx;
	private List<String> maker;
	private List<String> model;
	private List<String> series;
	private List<String> type;
	private List<String> transmission;
	private List<String> fuel;
	private List<String> fuelRatio;
	private List<String> seatCount;		// '5인승', '5인승초과' 
	public int getCarInfo_idx() {
		return carInfo_idx;
	}
	public void setCarInfo_idx(int carInfo_idx) {
		this.carInfo_idx = carInfo_idx;
	}
	public List<String> getMaker() {
		return maker;
	}
	public void setMaker(List<String> maker) {
		this.maker = maker;
	}
	public List<String> getModel() {
		return model;
	}
	public void setModel(List<String> model) {
		this.model = model;
	}
	public List<String> getSeries() {
		return series;
	}
	public void setSeries(List<String> series) {
		this.series = series;
	}
	public List<String> getType() {
		return type;
	}
	public void setType(List<String> type) {
		this.type = type;
	}
	public List<String> getTransmission() {
		return transmission;
	}
	public void setTransmission(List<String> transmission) {
		this.transmission = transmission;
	}
	public List<String> getFuel() {
		return fuel;
	}
	public void setFuel(List<String> fuel) {
		this.fuel = fuel;
	}
	public List<String> getFuelRatio() {
		return fuelRatio;
	}
	public void setFuelRatio(List<String> fuelRatio) {
		this.fuelRatio = fuelRatio;
	}
	public List<String> getSeatCount() {
		return seatCount;
	}
	public void setSeatCount(List<String> seatCount) {
		this.seatCount = seatCount;
	}
	
	
	@Override
	public String toString() {
		return "CarParam [carInfo_idx=" + carInfo_idx + ", maker=" + maker + ", model=" + model + ", series=" + series
				+ ", type=" + type + ", transmission=" + transmission + ", fuel=" + fuel + ", fuelRatio=" + fuelRatio
				+ ", seatCount=" + seatCount + "]";
	}
	
}
