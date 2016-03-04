package Dao;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;

import Model.UserList;
import Setup.MybatisSessionFactory;

public class UserDao{
	private SqlSession sqlSession;
	private UserDaoInterface userMapper;
	
	public UserDao(){
		sqlSession = MybatisSessionFactory.getSqlSessionFactory().openSession(true);
		try{
			userMapper = sqlSession.getMapper(UserDaoInterface.class);
		}catch(Exception e){e.printStackTrace();}
	}

	public boolean loginCheck(String id, String password) {
		
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("id", id);
		map.put("password", password);
		if(userMapper.loginCheck(map) == 1){
			return true;
		}
		
		return false;
	}

	public UserList getUserData(String id, String password) {
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("id", id);
		map.put("password", password);
		return userMapper.getUserData(map);
	}

}
