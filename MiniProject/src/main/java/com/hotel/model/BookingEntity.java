package com.hotel.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.SequenceGenerator;

@Entity
public class BookingEntity {
	
	@Id
	@GeneratedValue(generator="booking_gen",strategy=GenerationType.AUTO)
	@SequenceGenerator(name="booking_gen",sequenceName="user_seq",initialValue=1,allocationSize=1)
	private int id;
	private String bookingLocation;
	private String bookingSlot;
	private String startTime;
	private String endTime;
	private int bookingDuration;
	private int bookingFee;	
	private int transactionFee;
	private int totalFee;
	
	public int getId() {
		return id;
	}
	public String getBookingLocation() {
		return bookingLocation;
	}
	public String getBookingSlot() {
		return bookingSlot;
	}
	public String getStartTime() {
		return startTime;
	}
	public String getEndTime() {
		return endTime;
	}
	public int getBookingDuration() {
		return bookingDuration;
	}
	public int getBookingFee() {
		return bookingFee;
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
	public void setBookingLocation(String bookingLocation) {
		this.bookingLocation = bookingLocation;
	}
	public void setBookingSlot(String bookingSlot) {
		this.bookingSlot = bookingSlot;
	}
	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}
	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}
	public void setBookingDuration(int bookingDuration) {
		this.bookingDuration = bookingDuration;
		System.out.println("BookingDuration: "+ bookingDuration);
	}
	public void setBookingFee(int bookingFee) {
		this.bookingFee = bookingFee;
	}
	
	
	public void setTransactionFee(int transactionFee) {
		this.transactionFee = transactionFee;
	}
	public void setTotalFee(int totalFee) {
		this.totalFee = totalFee;
	}
	@Override
	public String toString() {
		return "BookingEntity [bookingSlot=" + bookingSlot + ", bookingLocation=" + bookingLocation + ", startTime="
				+ startTime + ", endTime=" + endTime + "]";
	}
	

}
