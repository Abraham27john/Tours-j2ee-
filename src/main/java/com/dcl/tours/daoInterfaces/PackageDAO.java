package com.dcl.tours.daoInterfaces;

import java.util.List;

public interface PackageDAO {
	
	public void createPackage(Package p);
	
	public void updatePackage(Package p);
	
	public void deletePackage(Integer id);
	
	public List<Package> getAllPackage();
	
	public List<Package> getPackageById(Integer id);

}
