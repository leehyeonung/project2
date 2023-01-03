package com.ezen.book.repository;

import java.util.List;

import com.ezen.book.domain.BoardVO;
import com.ezen.book.domain.PagingVO;

public interface BoardDAO {

	List<BoardVO> selectBoardListPaging(PagingVO pvo);

	int searchTotalCount(PagingVO pvo);

}
