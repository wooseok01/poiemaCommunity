package com.poiema.community.model;

import java.io.Serializable;


public class Family implements Serializable{
	private int helpSeq;
	private String relation;
	private String famName;
	private int age;
	private String job;
	private String liveWith;
	private String etc;
	
	public Family(){}

	public Family(int helpSeq, String relation, String famName, int age, String job, String liveWith, String etc) {
		this.helpSeq = helpSeq;
		this.relation = relation;
		this.famName = famName;
		this.age = age;
		this.job = job;
		this.liveWith = liveWith;
		this.etc = etc;
	}
	
	public Family(String relation, String famName, int age, String job, String liveWith, String etc) {
		super();
		this.relation = relation;
		this.famName = famName;
		this.age = age;
		this.job = job;
		this.liveWith = liveWith;
		this.etc = etc;
	}

	public int getHelpSeq() {return helpSeq;}
	public void setHelpSeq(int helpSeq) {this.helpSeq = helpSeq;}

	public String getRelation() {return relation;}
	public void setRelation(String relation) {this.relation = relation;}

	public String getFamName() {return famName;}
	public void setFamName(String famName) {this.famName = famName;}

	public int getAge() {return age;}
	public void setAge(int age) {this.age = age;}

	public String getJob() {return job;}
	public void setJob(String job) {this.job = job;}

	public String getLiveWith() {return liveWith;}
	public void setLiveWith(String liveWith) {this.liveWith = liveWith;}

	public String getEtc() {return etc;}
	public void setEtc(String etc) {this.etc = etc;}

	@Override
	public String toString() {
		return "Family [helpSeq=" + helpSeq + ", relation=" + relation + ", famName=" + famName + ", age=" + age
				+ ", job=" + job + ", liveWith=" + liveWith + ", etc=" + etc + "]";
	}
	
	
}

