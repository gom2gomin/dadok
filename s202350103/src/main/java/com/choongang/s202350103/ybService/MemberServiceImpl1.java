package com.choongang.s202350103.ybService;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.choongang.s202350103.model.Cart;
import com.choongang.s202350103.model.Community;
import com.choongang.s202350103.model.Member;
import com.choongang.s202350103.model.NewBook;
import com.choongang.s202350103.model.OldBook;
import com.choongang.s202350103.model.PointList;
import com.choongang.s202350103.model.WishList;
import com.choongang.s202350103.ybDao.MemberDao;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
@RequiredArgsConstructor
public class MemberServiceImpl1 implements MemberService {
	private final MemberDao md;
	private final HttpSession session;
	
	// 로그인
	@Override
	public Member login(Member member1) {
		System.out.println("MemberServiceImpl1 login Start");
		member1 = md.login(member1);
		
		return member1;
	}

	// 장바구니 상품 개수
	@Override
	public int totalCart(Member member) {
		System.out.println("MemberServiceImpl1 totalCart Start...");
		int totalCart = md.totalCart(member);
		System.out.println("MemberServiceImpl1 totalCart totalCart -> "  + totalCart);
		return totalCart;
	}

	// 장바구니 목록
	@Override
	public List<Cart> listCart(Cart cart, Member member) {
		System.out.println("MemberServiceImpl1 listCart start...");
		System.out.println("MemberServiceImpl1 listCart() member.m_num -> " + member.getM_num());
		List<Cart> listCart = md.listCart(cart, member);
		
		return listCart;
	}
	@Override
	public List<Community> communityList(Community community) {
		System.out.println("MemberServiceImpl1 communityList start...");
		List<Community> communityList = md.communityList(community);

		return communityList;
	}

	// 장바구니 총 금액
	@Override
	public int totalPrice(Member member) {
		System.out.println("MemberServiceImpl1 totalPrice start...");
		System.out.println("MemberServiceImpl1 totalPrice member.m_num -> " + member.getM_num());
		int totalPrice = 0;
		
		totalPrice = md.totalPrice(member);
		return totalPrice;
	}

	// 찜 갯수
	@Override
	public int totalWishList(Member member) {
		// TODO Auto-generated method stub
		System.out.println("MemberServiceImpl1 totalWishList start...");
		System.out.println("MemberServiceImpl1 totalWishList member.m_num -> " + member.getM_num());
		int totalWishList = 0;
		
		totalWishList = md.totalWishList(member);
		return totalWishList;
	}
	
	@Override
	public int comListTotalCnt(Community community) {
		int comListTotalCnt = 0;
		comListTotalCnt = md.comListTotalCnt(community);
		return comListTotalCnt;
	}

	// 판매 개수
	@Override
	public int totalSellCnt(Member member) {
		System.out.println("MemberServiceImpl1 totalSellCnt start...");
		System.out.println("MemberServiceImpl1 totalSellCnt member.m_num -> " + member.getM_num());
		int totalSellCnt = md.totalSellCnt(member);
		return totalSellCnt;
	}
	// 포인트 리스트 개수
	@Override
	public int pointListCnt(PointList pointList) {
		System.out.println("MemberServiceImpl1 pointListCnt start...");
		int pointListCnt = md.pointListCnt(pointList);
		return pointListCnt;
	}

	// 회원 찜목록
	@Override
	public List<WishList> memberWishList(WishList wishList) {
		
		Member member =(Member) session.getAttribute("member");
		System.out.println("MemberServiceImpl1 listCart start...");
		System.out.println("MemberServiceImpl1 listCart() member.m_num -> " + member.getM_num());
		List<WishList> memberWishList = md.memberWishList(wishList);
		
		return memberWishList;
	}
	
	// 포인트 리스트
	@Override
	public List<PointList> memberPointList(PointList pointList) {
		Member member =(Member) session.getAttribute("member");
		System.out.println("MemberServiceImpl1 listCart start...");
		System.out.println("MemberServiceImpl1 listCart() member.m_num -> " + member.getM_num());
		List<PointList> memberPointList = md.memberPointList(pointList);
		
		return memberPointList;
	}
	// 회원 탈퇴
	@Override
	public Member memberWithdraw(Member member) {
		System.out.println("MemberServiceImpl1 memberWithdraw start...");
		member =(Member) session.getAttribute("member");
		System.out.println("MemberServiceImpl1 memberWithdraw member.m_id -> " + member.getM_id());
		Member memberWithdraw = md.memberWithdraw(member);
		return memberWithdraw;
	}
	// 회원 체크
	@Override
	public Member memberChk(String chk_Id) {
		System.out.println("MemberServiceImpl1 memberChk start...");
		Member member = md.memberChk(chk_Id);
		if(member != null) {
			return member;	
		} else {
			return null;
		}
	}
	// 중고책 판매 리스트
	@Override
	public List<OldBook> oldBookSellList(OldBook oldbook) {
		System.out.println("MemberServiceImpl1 oldBookSellList start...");
		Member member =(Member) session.getAttribute("member");
		List<OldBook> oldBookSellList = md.oldBookSellList(oldbook);
		System.out.println("MemberServiceImpl1 oldBookSellList member.m_id -> " + member.getM_id());
		return oldBookSellList;
	}
	
	// 비밀번호 찾기 이메일 체크
	@Override
	public Member findEmail(String memberMail) {
		System.out.println("MemberServiceImpl1 findEmail start...");
		Member member = md.findEmail(memberMail);
		if(member != null) {
			return member;	
		} else {
			return null;
		}	
	}
	// 회원 비밀번호 수정
	@Override
	public int memberPwUpdate(String m_pw, Member member) {
		System.out.println("MemberServiceImpl1 memberPwUpdate start...");
		member =(Member) session.getAttribute("member");
		System.out.println("MemberServiceImpl1 memberPwUpdate member.getM_id -> " +member.getM_id());
		System.out.println("MemberServiceImpl1 memberPwUpdate m_pw -> " + m_pw);
		
		int memberPwUpdate = md.memberPwUpdate(m_pw, member);	
		return memberPwUpdate;
	}
	// 회원 비밀번호 변경
	@Override
	public Member memberPwChange(String m_num, String m_pw) {
		System.out.println("MemberServiceImpl1 memberPwChange start...");
		System.out.println("MemberServiceImpl1 memberPwChange() m_num -> " + m_num);
		System.out.println("MemberServiceImpl1 memberPwChange() m_pw -> " + m_pw);
		Member memberPwChange = md.memberPwChange(m_num, m_pw);
		return memberPwChange;
	}
	// 
	@Override
	public int memCount() {
		System.out.println("MemberServiceImpl1 memCount start...");
		int memCount = md.memCount();
		
		return memCount;
	}
	// 회원 비밀번호 변경
	@Override
	public Member memberPwChange1(String m_email, String m_pw) {
		System.out.println("MemberServiceImpl1 memberPwChange start...");
		System.out.println("MemberServiceImpl1 memberPwChange() m_num -> " + m_email);
		System.out.println("MemberServiceImpl1 memberPwChange() m_pw -> " + m_pw);
		Member memberPwChange1 = md.memberPwChange1(m_email, m_pw);
		return memberPwChange1;
	}
	// 회원 핸드폰 번호 찾기
	@Override
	public Member memberFindPh(String phoneHyphen) {
		System.out.println("MemberServiceImpl1 memberFindPh start...");
		Member memberFindPh = md.memberFindPh(phoneHyphen);
		return memberFindPh;
	}

	@Override
	public Member memberPwChangeByPh(String m_ph, String m_pw) {
		System.out.println("MemberServiceImpl1 memberPwChangeByPh start...");
		System.out.println("MemberServiceImpl1 memberPwChangeByPh() m_ph -> " + m_ph);
		System.out.println("MemberServiceImpl1 memberPwChangeByPh() m_pw -> " + m_pw);
		Member memberPwChangeByPh = md.memberPwChangeByPh(m_ph, m_pw);
		return memberPwChangeByPh;
	}

	@Override
	public int communityInsert(Community community) {
		System.out.println("MemberServiceImpl1 communityInsert start...");
		int communityInsert = md.communityInsert(community);
		return communityInsert;
	}
	// 커뮤니티 책 검색
	@Override
	public List<NewBook> searchListBook(NewBook newbook) {
		System.out.println("MemberServiceImpl1 searchListBook start...");
		List<NewBook> searchListBook = md.searchListBook(newbook);
		System.out.println("MemberServiceImpl1 searchListBook searchBookList.size() -> " + searchListBook.size());
		return searchListBook;
	}
	// 검색 책 갯수
	@Override
	public int searchBookCnt(NewBook newbook) {
		System.out.println("MemberServiceImpl1 searchBookCnt start...");
		int searchBookCnt = md.searchBookCnt(newbook);
		System.out.println("MemberServiceImpl1 searchBookCnt searchBookCnt -> " + searchBookCnt);
		return searchBookCnt;
	}

	

	


	

	

	
	
	
	
}
