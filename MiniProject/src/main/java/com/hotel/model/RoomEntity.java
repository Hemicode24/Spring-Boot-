package com.hotel.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.SequenceGenerator;

@Entity
public class RoomEntity {
	
	@Id
	@GeneratedValue(generator="room_gen",strategy=GenerationType.AUTO)
	@SequenceGenerator(name="room_gen",sequenceName="room_entity_seq",initialValue=1,allocationSize=0)
	private int Sno;
	private String RoomType;
	private String RoomNo;
	public int getSno() {
		return Sno;
	}
	public void setSno(int sno) {
		Sno = sno;
	}
	public String getRoomType() {
		return RoomType;
	}
	public void setRoomType(String roomType) {
		RoomType = roomType;
	}
	public String getRoomNo() {
		return RoomNo;
	}
	public void setRoomNo(String roomNo) {
		RoomNo = roomNo;
	}

}
