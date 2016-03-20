package Dao;

import java.util.ArrayList;
import java.util.HashMap;

import Model.Family;
import Model.HelpList;

public interface HelpListDaoInterface {

	void save(HelpList helpList);
	int getRecentHelpSeq();
	void insertFamilyList(Family family);
	ArrayList<HelpList> find(HashMap<String, String> map);
	HelpList findOne(int id);
	ArrayList<Family> findFamily(int id);
	void update(HelpList helpList);
	void deleteFamilyList(int helpSeq);
	ArrayList<HelpList> findVolunteer(String name);
	ArrayList<HelpList> findTarget(String name);
	HashMap<String, String> getTypeList(String string);
	HashMap<String, String> getHeader(String type);
	HashMap<String, String> getHeaderAll();	
	ArrayList<HelpList> findTypePersonList(String type);
	ArrayList<HelpList> findAllPersonList();
	ArrayList<Family> getFamilyData(String helpSeq);
	void deleteHelpList(HashMap<String, String[]> map);
	

}
