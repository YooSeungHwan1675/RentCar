package com.spring.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.dao.repleDAO;
import com.spring.dto.repleDTO;

@Service
public class repleService {
	
	private static final Logger logger = LoggerFactory.getLogger(repleService.class);
	
	@Autowired
	repleDAO dao;
	
	public void repleInsert(repleDTO reple) {
		
		dao.repleInsert(reple);
		
	}
	
}
