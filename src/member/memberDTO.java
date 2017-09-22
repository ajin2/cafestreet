package member;

import java.sql.*;

public class memberDTO {
	private String id;
	private String pwd;
	private String nickname;
	private String addr;
	
	public memberDTO(){
		System.out.println("생성자 출력");
	}

	public memberDTO(String id, String pwd, String nickname, String addr) {
		super();
		this.id = id;
		this.pwd = pwd;
		this.nickname = nickname;
		this.addr = addr;
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
