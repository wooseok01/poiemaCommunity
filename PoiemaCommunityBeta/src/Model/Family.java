package Model;

import java.io.Serializable;

public class Family implements Serializable{
	private int helpSeq;
	private String relation;
	private String name;
	private int age;
	private String job;
	private String liveWith;
	private String etc;
	
	public Family(){}

	public Family(int helpSeq, String relation, String name, int age, String job, String liveWith, String etc) {
		this.helpSeq = helpSeq;
		this.relation = relation;
		this.name = name;
		this.age = age;
		this.job = job;
		this.liveWith = liveWith;
		this.etc = etc;
	}
	
	public Family(String relation, String name, int age, String job, String liveWith, String etc) {
		super();
		this.relation = relation;
		this.name = name;
		this.age = age;
		this.job = job;
		this.liveWith = liveWith;
		this.etc = etc;
	}

	public int getHelpSeq() {return helpSeq;}
	public void setHelpSeq(int helpSeq) {this.helpSeq = helpSeq;}

	public String getRelation() {return relation;}
	public void setRelation(String relation) {this.relation = relation;}

	public String getName() {return name;}
	public void setName(String name) {this.name = name;}

	public int getAge() {return age;}
	public void setAge(int age) {this.age = age;}

	public String getJob() {return job;}
	public void setJob(String job) {this.job = job;}

	public String getLiveWith() {return liveWith;}
	public void setLiveWith(String liveWith) {this.liveWith = liveWith;}

	public String getEtc() {return etc;}
	public void setEtc(String etc) {this.etc = etc;}
}

