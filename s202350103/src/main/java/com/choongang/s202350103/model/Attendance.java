package com.choongang.s202350103.model;

import lombok.Data;

@Data
public class Attendance {				//출석부
	private int    	 a_num;				//이벤트번호
	private String   a_title;			//이벤트제목
	private String   a_sdate;			//시작일자
	private String   a_edate;			//종료일자
	private String 	 a_image;			//기본이미지
	private int    	 a_point;			//지급포인트
	private int    	 a_add;				//연속출석조건
	private int    	 a_addpoint;		//추가지급포인트
	
	//이벤트 조회용(Quiz)
	private int 	rn;				//count(row)
	private int    	q_num;			//이벤트번호
	private String 	q_title;		//이벤트제목
	private String 	q_sdate;		//시작일자
	private String 	q_edate;		//종료일자
	private String 	q_image;		//기본이미지
	
	//페이징용(Paging)
	private int start;
	private int end;
}
