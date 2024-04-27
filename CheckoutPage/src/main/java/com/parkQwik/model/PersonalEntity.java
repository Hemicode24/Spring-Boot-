package com.parkQwik.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.SequenceGenerator;

@Entity
public class PersonalEntity {
	@Id
	@GeneratedValue(generator="personal_gen",strategy=GenerationType.AUTO)
	@SequenceGenerator(name="personal_gen",sequenceName="personal_entity_seq",initialValue=1,allocationSize=0)
	private int pId;
	private String Name;
	private long Mobile;
	private String Email;
	public int getpId() {
		return pId;
	}
	public void setpId(int pId) {
		this.pId = pId;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public long getMobile() {
		return Mobile;
	}
	public void setMobile(long mobile) {
		Mobile = mobile;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	 
	

}
