package com.sin.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.sin.model.HealthManagement;

public interface DAO extends JpaRepository<HealthManagement, Integer> {}
