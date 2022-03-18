package com.board.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.board.dto.AskDTO;
import com.board.dto.BoardDTO;
import com.board.dto.ReportDTO;

@Mapper	
public interface BoardMapper {

	List<BoardDTO> selectBoardList(int page);

	List<BoardDTO> selectNotice(int page);
	
	List<BoardDTO> selectShowlist(int page);
	
	List<ReportDTO> selectReport(int page);
	
	List<BoardDTO> selectSearchBoard(HashMap<String, String> map);

	List<BoardDTO> selectBest();

	List<BoardDTO> selectTip();
	
	List<AskDTO> selectAsk();
	
	int selectAllCount();
	
	int selectAllReport();

	int insertBoard(BoardDTO boardDTO);

	int insertReport(BoardDTO boardDTO);
	
	BoardDTO selectBoard(int bno);

	void addCount(int bno);

	void updateBoard(HashMap<String, Object> map);

	void deleteBoard(int bno);

	int insertBoardLike(HashMap<String, Object> map);

	void deleteBoardLike(HashMap<String, Object> map);

	int selectBoardLike(int bno);

	int insertBoardHate(HashMap<String, Object> map);

	void deleteBoardHate(HashMap<String, Object> map);

	int selectBoardHate(int bno);



	
}
