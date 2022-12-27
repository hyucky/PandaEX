package com.panda.service;

import com.panda.domain.MemberVO;


public interface MemberService {

		//회원 가입 처리
		public void insert(MemberVO vo)throws Exception;
		
		
		//아이디 중복체크
		public int idCheck(MemberVO vo);

		//회원조회
		public MemberVO getMember(String user_id);

		//로그인
		public boolean memberLogin(MemberVO vo);

}
