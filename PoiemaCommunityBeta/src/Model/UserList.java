package Model;

import java.io.Serializable;


public class UserList implements Serializable{
	private String id;
	private String pwd;
	private String userName;
	
	public UserList(){}

	public UserList(String id, String pwd, String userName) {
		super();
		this.id = id;
		this.pwd = pwd;
		this.userName = userName;
	}

	public String getId() {return id;}
	public void setId(String id) {this.id = id;}

	public String getPwd() {return pwd;}
	public void setPwd(String pwd) {this.pwd = pwd;}

	public String getUserName() {return userName;}
	public void setUserName(String userName) {this.userName = userName;}
	
	
}
