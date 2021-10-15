package com.sin.service;

import java.util.List;

import com.sin.model.HealthManagement;

public interface Service {
	
	/**
	 * Will save data in DB
	 * @param obj
	 * @return saved object
	 */
	HealthManagement save(HealthManagement obj) throws Exception;
	
	/**
	 * Will get List of objects
	 * @return
	 * @throws Exception
	 */
	List<HealthManagement> findall() throws Exception;
	
}
