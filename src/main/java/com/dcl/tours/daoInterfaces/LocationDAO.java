package com.dcl.tours.daoInterfaces;

import java.util.List;

import com.dcl.tours.dto.LocationDTO;
import com.dcl.tours.dto.LocationDTO;

public interface LocationDAO {
	
	public void createLocation(LocationDTO l);
	
	public void updateLocation(LocationDTO l);
	
	public void deleteLocation(Integer id);
	
	public List<LocationDTO> getAllLocation();
	
	public List<LocationDTO> getLocationById(Integer id);

}
