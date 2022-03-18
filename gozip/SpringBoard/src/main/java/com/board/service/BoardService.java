package com.board.service;

import java.util.HashMap;
import java.util.List;
import org.springframework.stereotype.Service;

import com.board.dto.AskDTO;
import com.board.dto.BoardDTO;
import com.board.dto.ReportDTO;
import com.board.mapper.BoardMapper;

@Service
public class BoardService {
	private BoardMapper mapper;

	public BoardService(BoardMapper mapper) {
		this.mapper = mapper;
	}

	public List<BoardDTO> selectBoardList(int page) {
		return mapper.selectBoardList(page);
	}

	public List<BoardDTO> selectNotice(int page) {
		return mapper.selectNotice(page);
	}
	
	public List<BoardDTO> selectShowlist(int page) {
		return mapper.selectShowlist(page);
	}
	
	public List<ReportDTO> selectReport(int page) {
		return mapper.selectReport(page);
	}
	
	public List<BoardDTO> selectSearchBoard(HashMap<String, String> map) {
		return mapper.selectSearchBoard(map);
	}

	public List<BoardDTO> selectBest() {
		return mapper.selectBest();
	}

	public List<BoardDTO> selectTip() {
		return mapper.selectTip();
	}
	
	public List<AskDTO> selectAsk() {
		return mapper.selectAsk();
	}
	
	public int selectAllCount() {
		return mapper.selectAllCount();
	}
	
	public int selectAllReport() {
		return mapper.selectAllReport();
	}

	public int insertBoard(BoardDTO boardDTO) {
		return mapper.insertBoard(boardDTO);
	}
	
	public int insertReport(BoardDTO boardDTO) {
		return mapper.insertReport(boardDTO);
		
	}

	public BoardDTO selectBoard(int bno) {
		return mapper.selectBoard(bno);
	}

	public void addCount(int bno) {
		mapper.addCount(bno);
	}

	public void updateBoard(HashMap<String, Object> map) {
		mapper.updateBoard(map);
	}

	public void deleteBoard(int bno) {
		mapper.deleteBoard(bno);
	}

	public int insertBoardLike(HashMap<String, Object> map) {
		return mapper.insertBoardLike(map);
	}

	public void deleteBoardLike(HashMap<String, Object> map) {
		mapper.deleteBoardLike(map);
		
	}

	public int selectBoardLike(int bno) {
		return mapper.selectBoardLike(bno);
	}

	public int insertBoardHate(HashMap<String, Object> map) {
		return mapper.insertBoardHate(map);
	}

	public void deleteBoardHate(HashMap<String, Object> map) {
		mapper.deleteBoardHate(map);
	}

	public int selectBoardHate(int bno) {
		return mapper.selectBoardHate(bno);
	}


	
	
}





