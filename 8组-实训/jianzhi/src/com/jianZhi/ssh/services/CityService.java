package com.jianZhi.ssh.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jianZhi.ssh.Dao.CityDao;
import com.jianZhi.ssh.entities.City;

@Service
public class CityService {

	@Autowired
	private CityDao cityDao;
	
	public City getCity(String cityName) {
		return cityDao.getCityByName(cityName);
	}
	
	public void add(City city){
		cityDao.add(city);
	}
	
	public List<City> getAll(){
		return cityDao.getAll();
	}
}
