package kr.co.choongang.domain;

import java.util.Date;

public class NoteVO {

	private int id;
	private String title;
	private String contents;
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

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
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
		return "NoteVO [id=" + id + ", title=" + title + ", contents=" + contents + ", regdate=" + regdate
				+ ", memberVO=" + memberVO + "]";
	}

}
