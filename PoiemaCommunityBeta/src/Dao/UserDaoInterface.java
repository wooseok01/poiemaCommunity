package Dao;

import java.util.HashMap;

import Model.UserList;

public interface UserDaoInterface {
	
	public int loginCheck(HashMap<String, String> map);
	public UserList getUserData(HashMap<String, String> map);

}
