package Model;

import java.io.Serializable;
import java.sql.Date;

public class HelpList implements Serializable{
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
	private String houseDescription;
	private String consultDescription;
	
	public HelpList(){}

	public HelpList(String volunteer, String volunteerTel, String applicant, String applicantTel, String target,
			String targetTel, String address, String livingCase, String sex, int age, Date startMonth, Date payMonth,
			String houseDescription, String consultDescription) {
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
		this.houseDescription = houseDescription;
		this.consultDescription = consultDescription;
	}

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

	public String getHouseDescription() {return houseDescription;}
	public void setHouseDescription(String houseDescription) {this.houseDescription = houseDescription;}

	public String getConsultDescription() {return consultDescription;}
	public void setConsultDescription(String consultDescription) {this.consultDescription = consultDescription;}
	
	
	

}
