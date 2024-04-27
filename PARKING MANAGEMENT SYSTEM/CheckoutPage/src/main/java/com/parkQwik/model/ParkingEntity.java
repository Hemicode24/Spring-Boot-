package com.parkQwik.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.SequenceGenerator;

@Entity
public class ParkingEntity {
	
	@Id
	@GeneratedValue(generator="parking_gen",strategy=GenerationType.AUTO)
	@SequenceGenerator(name="parking_gen",sequenceName="user_seq",initialValue=1,allocationSize=1)
	private int id;
	private String parkingLocation;
	private String parkingSlot;
	private String startTime;
	private String endTime;
	private int parkingDuration;
	private int parkingFee;	
	private int transactionFee;
	private int totalFee;
	
	public int getId() {
		return id;
	}
	public String getParkingLocation() {
		return parkingLocation;
	}
	public String getParkingSlot() {
		return parkingSlot;
	}
	public String getStartTime() {
		return startTime;
	}
	public String getEndTime() {
		return endTime;
	}
	public int getParkingDuration() {
		return parkingDuration;
	}
	public int getParkingFee() {
		return parkingFee;
	}
	public int getTransactionFee() {
		return transactionFee;
	}
	
	public int getTotalFee() {
		return totalFee;
	}
	
	
	public void setId(int id) {
		this.id = id;
	}
	public void setParkingLocation(String parkingLocation) {
		this.parkingLocation = parkingLocation;
	}
	public void setParkingSlot(String parkingSlot) {
		this.parkingSlot = parkingSlot;
	}
	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}
	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}
	public void setParkingDuration(int parkingDuration) {
		this.parkingDuration = parkingDuration;
		System.out.println("ParkingDuration: "+ parkingDuration);
	}
	public void setParkingFee(int parkingFee) {
		this.parkingFee = parkingFee;
	}
	
	
	public void setTransactionFee(int transactionFee) {
		this.transactionFee = transactionFee;
	}
	public void setTotalFee(int totalFee) {
		this.totalFee = totalFee;
	}
	@Override
	public String toString() {
		return "ParkingEntity [parkingSlot=" + parkingSlot + ", parkingLocation=" + parkingLocation + ", startTime="
				+ startTime + ", endTime=" + endTime + "]";
	}
	
	

}
