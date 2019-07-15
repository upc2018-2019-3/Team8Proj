package com.jianZhi.ssh.Dao;

import java.util.List;

import com.jianZhi.ssh.entities.City;

public interface CityDao {
	public City getCityByName(String cityName);
	public void add(City city);
	public List<City> getAll();
}
