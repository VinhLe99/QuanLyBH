package com.project.quanlybanhang_api.service;

import org.springframework.core.io.Resource;
import org.springframework.web.multipart.MultipartFile;

public interface UpLoadFileServiceImp {

	public void init();
	public boolean saveFile(MultipartFile file);
	public Resource loadFile(String filename);
}
