/**
 * DB 상의 일반회원정보를 저장할 객체의 클래스
 */
package com.mybook.mem;

import java.sql.Timestamp;

public class publicMemVO {
	private String memid;
	private String memname;
	private String mempwd;
	private String membirth;
	private String memzip;
	private String memaddr;
	private String tel;
	private String mobile;
	private String mailling;
	private String gender;
	private Timestamp memregist;
	private String memarea;
	
	public String getMemid() {
		return memid;
	}
	public void setMemid(String memid) {
		this.memid = memid;
	}
	public String getMemname() {
		return memname;
	}
	public void setMemname(String memname) {
		this.memname = memname;
	}
	public String getMempwd() {
		return mempwd;
	}
	public void setMempwd(String mempwd) {
		this.mempwd = mempwd;
	}
	public String getMembirth() {
		return membirth;
	}
	public void setMembirth(String membirth) {
		this.membirth = membirth;
	}
	public String getMemzip() {
		return memzip;
	}
	public void setMemzip(String memzip) {
		this.memzip = memzip;
	}
	public String getMemaddr() {
		return memaddr;
	}
	public void setMemaddr(String memaddr) {
		this.memaddr = memaddr;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getMailling() {
		return mailling;
	}
	public void setMailling(String mailling) {
		this.mailling = mailling;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public Timestamp getMemregist() {
		return memregist;
	}
	public void setMemregist(Timestamp memregist) {
		this.memregist = memregist;
	}
	public String getMemarea() {
		return memarea;
	}
	public void setMemarea(String memarea) {
		this.memarea = memarea;
	}
}
