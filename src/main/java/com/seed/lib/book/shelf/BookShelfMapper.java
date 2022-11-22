package com.seed.lib.book.shelf;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.seed.lib.book.BookVO;
import com.seed.lib.util.ShelfPager;

@Mapper
public interface BookShelfMapper {
	
	//책꽂이 목록
	public List<BookShelfVO> getShelfList (BookShelfVO shelfVO) throws Exception;
	
	//새 책꽂이 생성
	public int setShelfAdd (BookShelfVO shelfVO) throws Exception;
	
	//책꽂이 삭제
	public BookShelfVO setShelfDelete (BookShelfVO shelfVO) throws Exception;
	
	//책꽂이 수정
	public BookShelfVO setShelfUpdate (BookShelfVO shelfVO) throws Exception;
	
	//책꽂이에 책 저장
	public int setBookAdd (BookVO bookVO) throws Exception;
	
	//책꽂이에서 책 삭제
	public int setBookDelete (BookPickVO pickVO) throws Exception;
	
	//책꽂이에 저장된 책 목록
	public List<BookVO> getBookList (ShelfPager pager) throws Exception;

}
