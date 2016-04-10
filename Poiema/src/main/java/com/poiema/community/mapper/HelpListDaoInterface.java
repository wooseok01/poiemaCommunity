package com.poiema.community.mapper;

import java.util.ArrayList;
import java.util.HashMap;

import com.poiema.community.model.Family;
import com.poiema.community.model.HelpList;

public interface HelpListDaoInterface {

	void save(HelpList helpList);
	int getRecentHelpSeq();
	void insertFamilyList(Family family);
	ArrayList<HelpList> findVolunteer(String name);
	ArrayList<HelpList> findTarget(String name);
	HelpList detailInformation(int seq);
	ArrayList<Family> detailFamilyInformation(int seq);
	ArrayList<HelpList> getHelpListByType(String type);
	HashMap<String, String> getStatusList(String type);
	HashMap<String, String> getStatusAll();
	ArrayList<HelpList> getHelpListAll();
	void deleteFamilyList(int seq);
	void updateHelpList(HelpList helpList);
	void deleteHelpList(HashMap<String, int[]> map);
	ArrayList<HashMap<Object, Object>> findHelpListByLivingCase(String livingCase); 

}
