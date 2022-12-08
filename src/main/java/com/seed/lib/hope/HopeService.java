package com.seed.lib.hope;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.seed.lib.book.BookVO;
import com.seed.lib.util.HdPager;

@Service
public class HopeService {

	@Autowired
	private HopeMapper hopeMapper;

	public int getHaveBook(Map<String, Object> map) throws Exception{
		return hopeMapper.getHaveBook(map);
	}
	
	public int getOverLapBook(Map<String, Object> map) throws Exception{
		return hopeMapper.getOverLapBook(map);
	}
	
	public int getMonth(HopeVO hopeVO) throws Exception{
		return hopeMapper.getMonth(hopeVO);
	}
	
	@Transactional(rollbackFor = Exception.class)
	public int setHope(HopeVO hopeVO, Map<String, Object> map) throws Exception{
		int result = hopeMapper.setHope(hopeVO);
		map.put("hopNum", hopeVO.getHopNum());
		if(result<0) {
			throw new Exception();
		}else {
			result = hopeMapper.setHopeLib(map);
			if(result<0) {
				throw new Exception();
			}else {
				result = hopeMapper.setHopeStat(hopeVO);
				if(result<0) {
					throw new Exception();
				} else {
					return result;
				}
			}
		}
	}
	
	public int setUpdateHope(HopeVO hopeVO) throws Exception{
		return hopeMapper.setUpdateHope(hopeVO);
	}
	
	public List<HopeVO> getHopeList(HdPager hdPager) throws Exception{
		hdPager.makeRow();
		hdPager.getNum(hopeMapper.getTotalCount(hdPager));
		return hopeMapper.getHopeList(hdPager);
	}
	
	public List<HopeVO> getAdminHopList(HdPager hdPager) throws Exception{
		hdPager.makeRow();
		hdPager.getNum(hopeMapper.getTotalCount(hdPager));
		return hopeMapper.getAdminHopList(hdPager);
	}
	
	public HopeVO getHopeOne(HopeVO hopeVO) throws Exception{
		return hopeMapper.getHopeOne(hopeVO);
	}
	
	public int setHopeCncl(HopeVO hopeVO) throws Exception{
		return hopeMapper.setHopeCncl(hopeVO);
	}
	
	@Transactional(rollbackFor = Exception.class)
	public int setHopeOne(HopeVO hopeVO) throws Exception{
		BookVO bookVO = new BookVO();
		bookVO.setIsbn(hopeVO.getIsbn());
		bookVO.setTitle(hopeVO.getHopTitle());
		bookVO.setWriter(hopeVO.getHopWriter());
		bookVO.setPublisher(hopeVO.getHopPublisher());
		bookVO.setBookDate(hopeVO.getHopYear());
		bookVO.setCategory(hopeVO.getCategory());
		bookVO.setImage(hopeVO.getImage());
		bookVO.setNum(hopeMapper.bookCount()+1L);
		Map<String, Object> map = new HashMap<>();
		int result = hopeMapper.setHopeOne(bookVO);
		map.put("libNum", hopeVO.getLibVO().getLibNum());
		map.put("isbn", hopeVO.getIsbn());
		if(result<0) {
			throw new Exception();
		}else {
			result = hopeMapper.setLibOne(map);
			if(result<0) {
				throw new Exception();
			}else {
				result = hopeMapper.setAdminHopeStat(hopeVO);
				if(result<0) {
					throw new Exception();
				} else {
					return result;
				}
			}
		}
	}
}
