package com.campus.board.market.model.service;

import com.campus.board.market.model.vo.MarketBoard;
import com.campus.board.market.model.vo.MarketPage;

public interface MarketBoardService {

	MarketPage marketboardListAll(int currentPage);

	MarketBoard marketboardSelectOne(int marketNo);

	int update(MarketBoard marketBoard);

	int delete(int marketNo, String userId);

	int insert(MarketBoard marketBoard);

	MarketPage search(String type, String keyword, int currentPage);

}
