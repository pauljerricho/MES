package com.board.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import com.board.dto.MemberDTO;

@Mapper
public interface MemberMapper {
	MemberDTO login(HashMap<String, String> map);
	MemberDTO find(HashMap<String, String> map);
	MemberDTO findpass(HashMap<String, String> map);
	int DeleteMember(String id);
	int insertMember(MemberDTO memberDTO);
	int updateMember(MemberDTO memberDTO);
	int idCheck(String id);
	List<MemberDTO> selectAllmember();
}
