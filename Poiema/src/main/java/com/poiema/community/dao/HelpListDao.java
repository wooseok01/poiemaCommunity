package com.poiema.community.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import com.poiema.community.mapper.HelpListDaoInterface;
import com.poiema.community.model.Family;
import com.poiema.community.model.HelpList;

public class HelpListDao {
	private JdbcTemplate template;
	private SqlSession sqlSession;
	
	public HelpListDao(){}
	
	@Autowired
	public void setTemplate(JdbcTemplate template) {this.template = template;}
	public JdbcTemplate getTemplate() {return template;}

	public SqlSession getSqlSession() {return sqlSession;}
	@Autowired
	public void setSqlSession(SqlSession sqlSession) {this.sqlSession = sqlSession;}

	public void save(HelpList helpList) {
		sqlSession.getMapper(HelpListDaoInterface.class).save(helpList);
	}

	public int getRecentHelpSeq() {
		return sqlSession.getMapper(HelpListDaoInterface.class).getRecentHelpSeq();
	}

	public void insertFamilyList(ArrayList<Family> familyList, int helpSeq) {
		for(int i=0; i<familyList.size(); i++){
			familyList.get(i).setHelpSeq(helpSeq);
			sqlSession.getMapper(HelpListDaoInterface.class).insertFamilyList(familyList.get(i));
		}
		
		
	}

	public ArrayList<HelpList> findHelpList(String who, String name) {
		
		if(who.equals("volunteer")){
			return sqlSession.getMapper(HelpListDaoInterface.class).findVolunteer(name);
		}else if(who.equals("target")){
			return sqlSession.getMapper(HelpListDaoInterface.class).findTarget(name);
		}
		
		return null;
	}

	public HelpList detailInformation(int seq) {
		return sqlSession.getMapper(HelpListDaoInterface.class).detailInformation(seq);
	}

	public ArrayList<Family> detailFamilyInformation(int seq) {
		return sqlSession.getMapper(HelpListDaoInterface.class).detailFamilyInformation(seq);
	}

	public ArrayList<HelpList> getHelpListByType(String type) {
		
		if(type.equals("all")){
			return sqlSession.getMapper(HelpListDaoInterface.class).getHelpListAll();
		}else{
			return sqlSession.getMapper(HelpListDaoInterface.class).getHelpListByType(type);
		}
		
		
	}

	public ArrayList<HashMap<String, String>> getStatusListByType(String[] typeArr) {
		
		ArrayList<HashMap<String, String>> statusList = new ArrayList<HashMap<String,String>>();
		
		for(int i=0; i<typeArr.length; i++){
			HashMap<String, String> status = new HashMap<String, String>(); 
					
			if(typeArr[i].equals("all")){
				status = sqlSession.getMapper(HelpListDaoInterface.class).getStatusAll();
			}else{
				status = sqlSession.getMapper(HelpListDaoInterface.class).getStatusList(typeArr[i]);
			}
			
			status.put("type", typeArr[i]);
			statusList.add(status);
		}
		
		return statusList;
	}

	public HashMap<String, String> getTypeObject(String type) {
		if(type.equals("all")){
			System.out.println("All!!!");
			return sqlSession.getMapper(HelpListDaoInterface.class).getStatusAll();
		}else{
			return sqlSession.getMapper(HelpListDaoInterface.class).getStatusList(type);
		}
		
	}

	public void deleteFamilyList(int seq) {
		sqlSession.getMapper(HelpListDaoInterface.class).deleteFamilyList(seq);
	}

	public void updateHelpList(HelpList helpList) {
		sqlSession.getMapper(HelpListDaoInterface.class).updateHelpList(helpList);
	}

	public void deleteHelpList(int[] seqList) {
		HashMap<String, int[]> map = new HashMap<String, int[]>();
		map.put("seqList", seqList);
		sqlSession.getMapper(HelpListDaoInterface.class).deleteHelpList(map);
	}

	public ArrayList<HashMap<Object, Object>> findConsultCase(String consultCase) {
		return sqlSession.getMapper(HelpListDaoInterface.class).findConsultCase(consultCase);
	}

	
	
}
