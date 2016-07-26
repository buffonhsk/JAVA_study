package kr.co.choongang.domain;

import java.util.Date;

public class RecomVO {

	private int id;
	private String title;
	private Date regdate;
	private MemberVO memberVO;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	public MemberVO getMemberVO() {
		return memberVO;
	}

	public void setMemberVO(MemberVO memberVO) {
		this.memberVO = memberVO;
	}

	
	@Override
	public String toString() {
		return "RecomVO [id=" + id + ", title=" + title + ", regdate=" + regdate + ", memberVO=" + memberVO + "]";
	}

}
