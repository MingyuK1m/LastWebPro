package core.co.kr.vo;

import org.springframework.stereotype.Component;

@Component //메모리에 올린다.
public class UserVO {

	private String id;
	private String password;
	private String name;
	private String email;
	
	public void UserVo() {
	
	} 
	public void MemberVO(String id, String password, String name, String email){
		this.id = id;
		this.password = password;
		this.name = name;
		this.email = email;
	}
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	
	
	
}
