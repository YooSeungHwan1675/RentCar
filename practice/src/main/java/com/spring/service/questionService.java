package com.spring.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.spring.dao.questionDAO;
import com.spring.dto.questionDTO;
import com.spring.dto.repleDTO;

@Service
public class questionService {
	
	private static final Logger logger = LoggerFactory.getLogger(questionService.class);
	
	@Autowired
	questionDAO dao;
	
	public void questionInsert(questionDTO questionDTO) {
		dao.questionInsert(questionDTO);
	}

	public List<questionDTO> questionList(questionDTO dto) {
		List<questionDTO> questionList = dao.questionList(dto);
		return questionList;
	}

	public int questionCount(questionDTO dto) {
		
		int questionCount = dao.questionCount(dto);
		
		return questionCount;
	}

	public questionDTO questionDetail(questionDTO dto) {
		questionDTO questionDTO = dao.questionDetail(dto);
		return  questionDTO;
	}

	public void questionDelete(int idx) {
		dao.questionDelete(idx);
	}

	public Map<String, String> questionDelete(String delIds) {
		
		Map<String, String> map = new HashMap<String, String>();
		
		// ObjectMapper 객체 생성
		ObjectMapper objectMapper = new ObjectMapper();

		try {
		    // JSON 문자열 파싱
		    Map<String, String> jsonMap = objectMapper.readValue(delIds, new TypeReference<Map<String, String>>() {});

		    // "delIds" 키에 해당하는 값을 추출
		    int idx = Integer.parseInt(jsonMap.get("delIds"));
		    dao.questionDelete(idx);
		    
			map.put("result", "success");
			map.put("message", "삭제완료");
			
			return map;
		} catch (Exception e) { }
		
		
		map.put("result", "error");
		map.put("message", "삭제실패");
		
		return map;
	}

	public List<questionDTO> adminQuestionList(questionDTO dto) {
		List<questionDTO> list = dao.adminQuestionList(dto);
		return list;
	}

	public int adminQuestionCount(questionDTO dto) {
		logger.info("{} service-line84", dto);
		int count = dao.adminQuestionCount(dto);
		return count;
	}

	public void questionUpdate(questionDTO dto) {
		logger.info("service-line90 {}", dto);
		dao.questionUpdate(dto);
	}
	
	
//	승환이 추가 
	public void deleteQuestion(String[] delData) {
		dao.deleteQuestion(delData);
	}
}
