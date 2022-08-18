package com.project.quanlybanhang_api.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.quanlybanhang_api.entity.Roles;
import com.project.quanlybanhang_api.respository.RolesRepository;

@Service
public class RolesService implements RolesServiceImp {

	@Autowired
	RolesRepository rolesRepository;
	
	@Override
	public Roles getNameRoleByRoleId(int id) {
		return rolesRepository.findById(id).get();
	}

}
