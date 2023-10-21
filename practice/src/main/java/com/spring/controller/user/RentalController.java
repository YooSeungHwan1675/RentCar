package com.spring.controller.user;

import java.nio.channels.SeekableByteChannel;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.mysql.cj.Session;
import com.spring.dto.CarDTO;
import com.spring.dto.CarInfoDTO;
import com.spring.dto.CarList;
import com.spring.dto.CarParam;
import com.spring.service.RentalService;
import com.spring.service.memberService;


@Controller
public class RentalController {
	
	
	private static final Logger logger = LoggerFactory.getLogger(RentalController.class);
	
	@Autowired 
	RentalService service;
	
	@Autowired
	CarList carList;
	
	
//	차량 리스트 가져온다.
	@RequestMapping(value = "/rental/rentalPage", method = RequestMethod.GET)
	public String rentalPage(Model model, HttpSession session) {
		System.out.println("Rental의 rentalPage");
		carList = service.getlist();
		model.addAttribute("carList", carList);
		System.out.println("46line" +carList);
		return "user/rental";
	}
	
//	차량 1개의 정보를 가져온다.
	@RequestMapping(value = "/rental/article", method = RequestMethod.GET)
	public String article(Model model, HttpSession session, CarDTO carDTO) {
		System.out.println("Rental의 article");
		System.out.println(carDTO);
		carDTO = service.selectByCarIdx(carDTO);
		model.addAttribute("car", carDTO);
		return "user/carArticle";
	}
	
//	차량 검색
	@RequestMapping(value = "/rental/search", method = RequestMethod.POST)
	@ResponseBody 
	public Map<String, String> search(Model model, HttpSession session, CarInfoDTO carInfoDTO, @RequestBody String data) {
		System.out.println("Rental의 search");
//		{"fuel":["휘발유","경유"],"type":["소형","경형","중형","대형"],"seatCount":[2,3,4,5]}
//		System.out.println(data);
		
		Map<String, String> map = new HashMap<String, String>();
        try {
            ObjectMapper objectMapper = new ObjectMapper();
            CarParam carParam = objectMapper.readValue(data, CarParam.class);
            carList = service.mainSearchCar(carParam);
            String json = objectMapper.writeValueAsString(carList);
            
            model.addAttribute("carList", carList);
            
            map.put("result", "success");
            map.put("carList", json);
        } catch (Exception e) {
        	map.put("result", "fail");
        }
        
        
		return map;	
	}

	@RequestMapping(value = "/user/test", method = RequestMethod.GET)
	public String test(Model model, CarList carList, HttpSession session) {
		System.out.println("Rental의 test");
		carList = (CarList) session.getAttribute("carList");
		System.out.println(carList);
		return "user/test";
	}
	
}