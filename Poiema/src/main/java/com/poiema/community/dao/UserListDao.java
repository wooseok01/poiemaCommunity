package com.poiema.community.dao;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import com.poiema.community.mapper.UserDaoInterface;
import com.poiema.community.model.UserList;

public class UserListDao{

	private JdbcTemplate template;
	private SqlSession sqlSession;
	
	public UserListDao(){}
	
	@Autowired
	public void setTemplate(JdbcTemplate template) {this.template = template;}
	public JdbcTemplate getTemplate() {return template;}
	
	public SqlSession getSqlSession() {return sqlSession;}
	@Autowired
	public void setSqlSession(SqlSession sqlSession) {this.sqlSession = sqlSession;}

	public int loginCheck(UserList userList) {
		return sqlSession.getMapper(UserDaoInterface.class).loginCheck(userList);
	}

	public UserList getUserData(String id, String pwd) {
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("id", id);
		map.put("pwd", pwd);
		return sqlSession.getMapper(UserDaoInterface.class).getUserData(map);
	}

	public void changeMyData(String id, String pwd, String userName) {
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("pwd", pwd);
		map.put("pwd", pwd);
		map.put("id", id);
		
		sqlSession.getMapper(UserDaoInterface.class).changeMyData(map);
	}
	
	
	
}
