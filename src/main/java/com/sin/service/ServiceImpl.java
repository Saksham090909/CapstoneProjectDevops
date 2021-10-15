package com.sin.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.sin.dao.DAO;
import com.sin.model.HealthManagement;

@org.springframework.stereotype.Service
public class ServiceImpl implements Service{

	@Autowired
	DAO dao;
	
	@Override
	public HealthManagement save(HealthManagement obj) {
		return dao.save(obj);
	}

	@Override
	public List<HealthManagement> findall() throws Exception {
		List<HealthManagement> list = new ArrayList<>();
		dao.findAll().forEach(list::add);
		return list;
	}
}
