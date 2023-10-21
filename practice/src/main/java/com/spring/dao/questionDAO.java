package com.spring.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.spring.dto.questionDTO;

@Mapper
public interface questionDAO {
	
	public void questionInsert(questionDTO questionDTO);

	public List<questionDTO> questionList(questionDTO dto);

	public int questionCount(questionDTO dto);

	public questionDTO questionDetail(questionDTO dto);

	public void questionDelete(int idx);

	public List<questionDTO> adminQuestionList(questionDTO dto);

	public int adminQuestionCount(questionDTO dto);

	public void questionUpdate(questionDTO dto);
	
//	승환이 추가 
	public void deleteQuestion(String[] delData);
	
}
