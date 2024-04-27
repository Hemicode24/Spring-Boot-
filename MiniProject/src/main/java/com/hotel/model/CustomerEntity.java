package com.hotel.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.SequenceGenerator;

@Entity
public class CustomerEntity {
	
	@Id
	@GeneratedValue(generator="customer_gen",strategy=GenerationType.AUTO)
	@SequenceGenerator(name="customer_gen",sequenceName="customer_entity_seq",initialValue=1,allocationSize=0)
	private int cId;
	private String Name;
	private long Mobile;
	private String Email;
	public int getpId() {
		return cId;
	}
	public void setpId(int cId) {
		this.cId = cId;
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
