package com.spring.dto;

import java.sql.Date;

public class CarDTO extends CarInfoDTO {
	
	private int car_idx;
	private int carInfo_idx;
	private String carNumber;
	private String year;
	private int fee;
	private String status = "입고";		//입고 출고 정비
	private String image;
	
	public int getCar_idx() {
		return car_idx;
	}
	public void setCar_idx(int car_idx) {
		this.car_idx = car_idx;
	}
	public int getCarInfo_idx() {
		return carInfo_idx;
	}
	public void setCarInfo_idx(int carInfo_idx) {
		this.carInfo_idx = carInfo_idx;
	}
	public String getCarNumber() {
		return carNumber;
	}
	public void setCarNumber(String carNumber) {
		this.carNumber = carNumber;
	}
	public String getYear() {
		return year;
	}
	public void setYear(String year) {
		this.year = year;
	}
	public int getFee() {
		return fee;
	}
	public void setFee(int fee) {
		this.fee = fee;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	@Override
	public String toString() {
		return "CarDTO [car_idx=" + car_idx + ", carInfo_idx=" + carInfo_idx + ", carNumber=" + carNumber + ", year="
				+ year + ", fee=" + fee + ", status=" + status + ", image=" + image + ", toString()=" + super.toString()
				+ "]";
	}		
	
	
	
	
	
	
}
