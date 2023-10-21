package com.spring.dao;

import org.apache.ibatis.annotations.Mapper;

import com.spring.dto.repleDTO;

@Mapper
public interface repleDAO {
	
	void repleInsert(repleDTO reple);
	
}
