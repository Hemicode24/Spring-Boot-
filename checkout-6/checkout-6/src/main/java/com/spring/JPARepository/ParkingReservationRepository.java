package com.spring.JPARepository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.spring.JPAEntity.ParkingReservation;

public interface ParkingReservationRepository extends JpaRepository<ParkingReservation, Long> {
}

