package com.choongang.s202350103.htService;

import java.util.List;

import com.choongang.s202350103.domain.KakaoPayApprovalVO;
import com.choongang.s202350103.model.Cart;
import com.choongang.s202350103.model.Member;
import com.choongang.s202350103.model.NewBook;
import com.choongang.s202350103.model.Orderr;
import com.choongang.s202350103.model.Review;

public interface OrderrService {
	
	int           orderTotal();
	List<NewBook> orderOne(NewBook newBook);
	List<Cart>    orderList(Cart cart, Member member);
	void          orderInsert(Orderr orderr, List<Cart> list);
	Orderr        orderPayment(Orderr orderr);
	int           PaySuccess(KakaoPayApprovalVO ka);
}
