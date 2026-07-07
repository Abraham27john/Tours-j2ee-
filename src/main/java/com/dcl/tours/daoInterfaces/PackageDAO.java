package com.dcl.tours.daoInterfaces;

import java.util.List;

import com.dcl.tours.dto.PackageDTO;

public interface PackageDAO {
	
	public void createPackage(PackageDTO p);
	
	public void updatePackage(PackageDTO p);
	
	public void deletePackage(Integer id);
	
	public PackageDTO getPackageById(Integer id);
	
	public List<PackageDTO> getAllPackage();

	
	
	

}
