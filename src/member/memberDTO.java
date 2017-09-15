package member;

import java.sql.*;

public class memberDTO {
	private int idx;
	private String id;
	private String pwd;
	private String pwd_ok;
	private String nickname;
	private String addr;
	
	public memberDTO(){
		System.out.println("생성자 출력");
	}
	
	public memberDTO(int idx, String id, String pwd, String pwd_ok, String nickname, String addr) {
		super();
		this.idx = idx;
		this.id = id;
		this.pwd = pwd;
		this.pwd_ok = pwd_ok;
		this.nickname = nickname;
		this.addr = addr;
	}

	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getPwd_ok() {
		return pwd_ok;
	}

	public void setPwd_ok(String pwd_ok) {
		this.pwd_ok = pwd_ok;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}
	
	
	
}
