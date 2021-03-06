package com.board.service;

import java.util.HashMap;
import java.util.List;

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
	public int updateMember(MemberDTO memberDTO) {
		return mapper.updateMember(memberDTO);
	}
	public int idCheck(String id) {
		return mapper.idCheck(id);
	}
	public MemberDTO find(String name, String phone) {
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("name", name);
		map.put("phone", phone);
		return mapper.find(map);
	}
	public MemberDTO findpass(String id, String email) {
		
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("id", id);
		map.put("email", email);
		return mapper.findpass(map);
	}
	public List<MemberDTO> selectAllmember() {
		return mapper.selectAllmember();
	}
	public int DeleteMember(String id) {
		return mapper.DeleteMember(id);
	}
	
}




