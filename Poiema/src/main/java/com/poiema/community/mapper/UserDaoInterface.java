package com.poiema.community.mapper;

import java.util.HashMap;

import com.poiema.community.model.UserList;

public interface UserDaoInterface {

	int loginCheck(UserList userList);
	UserList getUserData(HashMap<String, String> map);
	void changeMyData(HashMap<String, String> map);

}
