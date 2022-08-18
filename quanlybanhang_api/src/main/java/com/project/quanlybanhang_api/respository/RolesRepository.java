package com.project.quanlybanhang_api.respository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.project.quanlybanhang_api.entity.Roles;

@Repository
public interface RolesRepository extends JpaRepository<Roles, Integer> {
	
	List<Roles> findAll();
}
