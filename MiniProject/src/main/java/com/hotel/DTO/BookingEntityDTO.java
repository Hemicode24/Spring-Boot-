package com.hotel.DTO;

public class BookingEntityDTO {
	
	private String bookingLocation;
	private String bookingSlot;
	private String startTime;
	private String endTime;
	private int bookingDuration;
	private int bookingFee;	
	private int transactionFee;
	private int totalFee;
	public String getBookingLocation() {
		return bookingLocation;
	}
	public void setBookingLocation(String bookingLocation) {
		this.bookingLocation = bookingLocation;
	}
	public String getBookingSlot() {
		return bookingSlot;
	}
	public void setbookingSlot(String bookingSlot) {
		this.bookingSlot = bookingSlot;
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
	public int getBookingDuration() {
		return bookingDuration;
	}
	public void setBookingDuration(int bookingDuration) {
		this.bookingDuration = bookingDuration;
	}
	public int getBookingFee() {
		return bookingFee;
	}
	public void setBookingFee(int bookingFee) {
		this.bookingFee = bookingFee;
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
