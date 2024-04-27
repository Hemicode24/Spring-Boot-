package com.parkQwik.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.SequenceGenerator;

@Entity
public class VehicleEntity {
	@Id
	@GeneratedValue(generator="vehicle_gen",strategy=GenerationType.AUTO)
	@SequenceGenerator(name="vehicle_gen",sequenceName="vehicle_entity_seq",initialValue=1,allocationSize=0)
	private int Sno;
	private String VehicleType;
	private String VehicleNo;
	public int getSno() {
		return Sno;
	}
	public void setSno(int sno) {
		Sno = sno;
	}
	public String getVehicleType() {
		return VehicleType;
	}
	public void setVehicleType(String vehicleType) {
		VehicleType = vehicleType;
	}
	public String getVehicleNo() {
		return VehicleNo;
	}
	public void setVehicleNo(String vehicleNo) {
		VehicleNo = vehicleNo;
	}

}
