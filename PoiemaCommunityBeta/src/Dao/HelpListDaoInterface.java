package Dao;

import Model.Family;
import Model.HelpList;

public interface HelpListDaoInterface {

	void save(HelpList helpList);
	int getRecentHelpSeq();
	void insertFamilyList(Family family);

}
