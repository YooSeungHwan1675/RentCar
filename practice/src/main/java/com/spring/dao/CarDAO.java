package com.spring.dao;


import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.spring.dto.CarDTO;
import com.spring.dto.CarParam;

@Mapper
public interface CarDAO {

	ArrayList<CarDTO> test();

	CarDTO selectByCarIdx(CarDTO carDTO);

	ArrayList<CarDTO> mainSearchCar(CarParam carParam);

	
}
