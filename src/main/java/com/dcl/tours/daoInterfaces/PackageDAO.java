package com.dcl.tours.daoInterfaces;

import java.util.List;

import com.dcl.tours.dto.PackageDTO;

public interface PackageDAO {
	
<<<<<<< HEAD
	public void createPackage(PackageDTO p);
	
	public void updatePackage(PackageDTO p);
	
	public void deletePackage(Integer id);
	
	public PackageDTO getPackageById(Integer id);
	
	public List<PackageDTO> getAllPackage();

	
	
	
=======
	public void createPackage(com.dcl.tours.dto.Package p);
	
	public void updatePackage(com.dcl.tours.dto.Package p);
	
	public void deletePackage(Integer id);
	
	public List<com.dcl.tours.dto.Package> getAllPackage();
	
	public List<com.dcl.tours.dto.Package> getPackageById(Integer id);
>>>>>>> a4159575b0770c5747b7e5c0767fcbc63a94ea41

}
