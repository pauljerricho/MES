package com.board.service;

import java.util.HashMap;

import org.apache.ibatis.type.Alias;
import org.springframework.stereotype.Service;

import com.board.dto.MemberDTO;
import com.board.mapper.MemberMapper;

@Service
@Alias("member")
public class MemberService {
	private MemberMapper mapper;

	public MemberService(MemberMapper mapper) {
		this.mapper = mapper;
	}

	public MemberDTO login(String id, String passwd) {
		HashMap<String , String> map = new HashMap<String, String>();
		map.put("id", id);
		map.put("passwd", passwd);
		
		return mapper.login(map);
	}

	public int insertMember(MemberDTO memberDTO) {
		return mapper.insertMember(memberDTO);
	}
	
	public int idChk(MemberDTO memberDTO)  {
		return mapper.idChk(memberDTO);
	}
	
	
}




