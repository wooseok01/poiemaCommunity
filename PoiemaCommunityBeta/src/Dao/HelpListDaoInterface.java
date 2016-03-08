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

}
