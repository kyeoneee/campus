package com.campus.board.free.model.service;

import java.util.HashMap;

import com.campus.board.free.model.vo.FreeBoard;
import com.campus.board.free.model.vo.FreePage;

public interface FreeBoardService {
	public FreePage freeboardListAll(int currentPage);

	public FreeBoard freeboardSelectOne(int freeNo);

	public int update(FreeBoard freeBoard);

	public int delete(int freeNo, String userId);

	public int insert(FreeBoard freeBoard, String userName);

	public FreePage search(String type, String keyword, int currentPage);

	public HashMap<String, Object> freeboardComment(int freeNo, int commentPage, int currentPage);

	public int commentWrite(int freeNo, String userId, String commentContent);

	public int commentDelete(int cFreeNo);

}
