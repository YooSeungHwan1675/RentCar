package com.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.dao.CarDAO;
import com.spring.dao.memberDAO;
import com.spring.dto.CarDTO;
import com.spring.dto.CarList;
import com.spring.dto.CarParam;
import com.spring.dto.memberDTO;

@Service
public class RentalService {
	
	@Autowired
	CarDAO dao;
	
	@Autowired
	CarList carList;

	public CarList getlist() {
		System.out.println("RentalService의 getlist");
		
		carList.setList(dao.test());
		return carList;
	}

	public CarDTO selectByCarIdx(CarDTO carDTO) {
		System.out.println("RentalService의 selectByCarIdx");
		
		carDTO = dao.selectByCarIdx(carDTO);
		return carDTO;
	}

	public CarList mainSearchCar(CarParam carParam) {
		System.out.println("RentalService의 mainSearchCar");
		
		List<String> seatCount = carParam.getSeatCount();
		
		if(seatCount == null || seatCount.size() == 0 || seatCount.size() == 2) {
			carParam.setSeatCount(null);
		}
		carList.setList(dao.mainSearchCar(carParam));
		return carList;
	}
	

}
