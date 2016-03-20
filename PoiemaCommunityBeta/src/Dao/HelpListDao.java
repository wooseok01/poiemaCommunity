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
		
		if(who.equals("volunteer")){
			ArrayList<HelpList> list = helpListMapper.findVolunteer(name);
			System.out.println(list.toString());
			return list;
		}else if(who.equals("target")){
			return helpListMapper.findTarget(name);
		}else{
			return null;
		}
		
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

	public ArrayList<HashMap<String, String>> getTypeList() {
		ArrayList<HashMap<String, String>> typeList = new ArrayList<HashMap<String, String>>();
		String arr[] = {"A","B","love","none"};
		
		for(int i=0; i<arr.length; i++)
			typeList.add(helpListMapper.getTypeList(arr[i]));
		typeList.add(helpListMapper.getHeaderAll());
		typeList.get(typeList.size()-1).put("type", "all");
		return typeList;
	}

	public HashMap<String, String> getHeader(String type) {
		return helpListMapper.getHeader(type);
	}

	public ArrayList<HelpList> findTypePersonList(String type) {
		if(type.equals("all")){
			return helpListMapper.findAllPersonList();
		}else{
			return helpListMapper.findTypePersonList(type);
		}
		
	}

	public ArrayList<Family> getFamilyData(String helpSeq) {
		return helpListMapper.getFamilyData(helpSeq);
	}

	public void deleteHelpList(String[] seqList) {
		HashMap<String, String[]> map = new HashMap<String, String[]>();
		map.put("seqList", seqList);
		helpListMapper.deleteHelpList(map);
	}
	

}
