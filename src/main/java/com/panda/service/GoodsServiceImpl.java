package com.panda.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.panda.domain.GoodsVO;
import com.panda.persistence.GoodsDAO;

@Service
public class GoodsServiceImpl  implements GoodsService {

	// 객체 로거 정보
	private static final Logger mylog = LoggerFactory.getLogger(GoodsServiceImpl.class);
	
	@Autowired
	private GoodsDAO dao;
	
	// 상품 글쓰기
	@Override
	public void insertGoods(GoodsVO gvo) throws Exception {
		mylog.debug("insertGoods(GoodsVO gvo) 호출 ->  DAO 동작 호출");
		
		dao.createGoods(gvo);
		
		mylog.debug(" 글쓰기 완료 -> 컨트롤러 이동 ");
	}

	// 상품목록(All)
	@Override
	public List<GoodsVO> getGoodsListAll() throws Exception {
		mylog.debug(" getGoodsListAll() - DAO 호출(결과 리턴받기)");
		
		return dao.getGoodsListAll();
	}

	// 상품 목록 조회수 1증가 
	@Override
	public void updateViewcnt(Integer goods_no) throws Exception {
		mylog.debug(" updateViewcnt(Integer goods_no) - DAO 호출( 조회수 1증가 ) ");
		
		dao.updateViewcnt(goods_no);	
	}
	
	// 글번호(goods_no) 정보 조회
	@Override
	public GoodsVO getGoods(Integer goods_no) throws Exception {
		mylog.debug("getGoods(Integer goods_no) 호출");
		return dao.getGoods(goods_no);
	}

	
	
	
}
