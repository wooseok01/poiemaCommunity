package Dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;

import Model.Family;
import Model.HelpList;
import Setup.MybatisSessionFactory;

public class HelpListDao {
	
	private SqlSession sqlSession;
	private HelpListDaoInterface helpListMapper;
	
	public HelpListDao(){
		sqlSession = MybatisSessionFactory.getSqlSessionFactory().openSession(true);
		try{
			helpListMapper = sqlSession.getMapper(HelpListDaoInterface.class);
		}catch(Exception e){e.printStackTrace();}
	}

	public void save(HelpList helpList) {
		System.out.println(helpList.getVolunteer());
		helpListMapper.save(helpList);
	}

	public int getRecentHelpSeq() {
		return helpListMapper.getRecentHelpSeq();
	}

	public void insertFamilyList(ArrayList<Family> familyList, int helpSeq) {
		
		for(int i=0; i<familyList.size(); i++){
			familyList.get(i).setHelpSeq(helpSeq);
			helpListMapper.insertFamilyList(familyList.get(i));
		}
		
		
	}

	public ArrayList<HelpList> find(String name, String who) {
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("name", name);
		map.put("who", who);
		
		return helpListMapper.find(map);
	}

	public HelpList findOne(int id) {
		return helpListMapper.findOne(id);
	}

	public ArrayList<Family> findFamily(int id) {
		return helpListMapper.findFamily(id);
	}

	public void update(HelpList helpList) {
		helpListMapper.update(helpList);
	}
	
	public void deleteFamilyList(int helpSeq){
		helpListMapper.deleteFamilyList(helpSeq);
	}
	

}
