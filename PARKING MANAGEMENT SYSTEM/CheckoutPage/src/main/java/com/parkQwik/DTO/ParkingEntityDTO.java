package com.parkQwik.DTO;

public class ParkingEntityDTO {
	private String parkingLocation;
	private String parkingSlot;
	private String startTime;
	private String endTime;
	private int parkingDuration;
	private int parkingFee;	
	private int transactionFee;
	private int totalFee;
	public String getParkingLocation() {
		return parkingLocation;
	}
	public void setParkingLocation(String parkingLocation) {
		this.parkingLocation = parkingLocation;
	}
	public String getParkingSlot() {
		return parkingSlot;
	}
	public void setParkingSlot(String parkingSlot) {
		this.parkingSlot = parkingSlot;
	}
	public String getStartTime() {
		return startTime;
	}
	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}
	public String getEndTime() {
		return endTime;
	}
	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}
	public int getParkingDuration() {
		return parkingDuration;
	}
	public void setParkingDuration(int parkingDuration) {
		this.parkingDuration = parkingDuration;
	}
	public int getParkingFee() {
		return parkingFee;
	}
	public void setParkingFee(int parkingFee) {
		this.parkingFee = parkingFee;
	}
	public int getTransactionFee() {
		return transactionFee;
	}
	public void setTransactionFee(int transactionFee) {
		this.transactionFee = transactionFee;
	}
	public int getTotalFee() {
		return totalFee;
	}
	public void setTotalFee(int totalFee) {
		this.totalFee = totalFee;
	}
	
}
