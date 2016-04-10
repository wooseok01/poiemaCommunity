package com.poiema.community.model;

import java.io.Serializable;
import java.sql.Date;

public class HelpList implements Serializable{
	private int seq;
	private String type;
	private String volunteer;
	private String volunteerTel;
	private String applicant;
	private String applicantTel;
	private String target;
	private String targetTel;
	private String address;
	private String livingCase;
	private String sex;
	private int age;
	private Date startMonth;
	private Date payMonth;
	private String pay;
	private String house;
	private String protection;
	private String generation;
	private byte[] houseDescription;
	private byte[] consultDescription;
	
	public HelpList(){}
	
	public HelpList(int seq, String type, String volunteer, String volunteerTel, String applicant, String applicantTel,
			String target, String targetTel, String address, String livingCase, String sex, int age, Date startMonth,
			Date payMonth, String pay, String house, String protection, String generation, byte[] houseDescription,
			byte[] consultDescription) {
		super();
		this.seq = seq;
		this.type = type;
		this.volunteer = volunteer;
		this.volunteerTel = volunteerTel;
		this.applicant = applicant;
		this.applicantTel = applicantTel;
		this.target = target;
		this.targetTel = targetTel;
		this.address = address;
		this.livingCase = livingCase;
		this.sex = sex;
		this.age = age;
		this.startMonth = startMonth;
		this.payMonth = payMonth;
		this.pay = pay;
		this.house = house;
		this.protection = protection;
		this.generation = generation;
		this.houseDescription = houseDescription;
		this.consultDescription = consultDescription;
	}

	public String getPay() {return pay;}
	public void setPay(String pay) {this.pay = pay;}

	public String getHouse() {return house;}
	public void setHouse(String house) {this.house = house;}

	public String getProtection() {return protection;}
	public void setProtection(String protection) {this.protection = protection;}

	public String getGeneration() {return generation;}
	public void setGeneration(String generation) {this.generation = generation;}

	public int getSeq() {return seq;}
	public void setSeq(int seq) {this.seq = seq;}

	public String getType() {return type;}
	public void setType(String type) {this.type = type;}

	public String getVolunteer() {return volunteer;}
	public void setVolunteer(String volunteer) {this.volunteer = volunteer;}

	public String getVolunteerTel() {return volunteerTel;}
	public void setVolunteerTel(String volunteerTel) {this.volunteerTel = volunteerTel;}

	public String getApplicant() {return applicant;}
	public void setApplicant(String applicant) {this.applicant = applicant;}

	public String getApplicantTel() {return applicantTel;}
	public void setApplicantTel(String applicantTel) {this.applicantTel = applicantTel;}

	public String getTarget() {return target;}
	public void setTarget(String target) {this.target = target;}

	public String getTargetTel() {return targetTel;}
	public void setTargetTel(String targetTel) {this.targetTel = targetTel;}

	public String getAddress() {return address;}
	public void setAddress(String address) {this.address = address;}

	public String getLivingCase() {return livingCase;}
	public void setLivingCase(String livingCase) {this.livingCase = livingCase;}

	public String getSex() {return sex;}
	public void setSex(String sex) {this.sex = sex;}

	public int getAge() {return age;}
	public void setAge(int age) {this.age = age;}

	public Date getStartMonth() {return startMonth;}
	public void setStartMonth(Date startMonth) {this.startMonth = startMonth;}

	public Date getPayMonth() {return payMonth;}
	public void setPayMonth(Date payMonth) {this.payMonth = payMonth;}

	public byte[] getHouseDescription() {return houseDescription;}
	public void setHouseDescription(byte[] houseDescription) {this.houseDescription = houseDescription;}

	public byte[] getConsultDescription() {return consultDescription;}
	public void setConsultDescription(byte[] consultDescription) {this.consultDescription = consultDescription;}

	@Override
	public String toString() {
		return "HelpList [seq=" + seq + ", type=" + type + ", volunteer=" + volunteer + ", volunteerTel=" + volunteerTel
				+ ", applicant=" + applicant + ", applicantTel=" + applicantTel + ", target=" + target + ", targetTel="
				+ targetTel + ", address=" + address + ", livingCase=" + livingCase + ", sex=" + sex + ", age=" + age
				+ ", startMonth=" + startMonth + ", payMonth=" + payMonth + ", pay=" + pay + ", house=" + house
				+ ", protection=" + protection + ", generation=" + generation + ", houseDescription=" + houseDescription
				+ ", consultDescription=" + consultDescription + "]";
	}
	

}
