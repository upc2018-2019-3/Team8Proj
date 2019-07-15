package com.jianZhi.ssh.Dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.jianZhi.ssh.Dao.CityDao;
import com.jianZhi.ssh.entities.City;

@Repository("cityDao")
public class CityDaoImpl extends BaseDao<City> implements CityDao{

	public City getCityByName(String cityName) {
		return (City) getSession().get(City.class, cityName);
	}
	public void add(City city){
		insert(city);
	}
	public List<City> getAll(){
		String hql = "from City";
		return get(hql);
	}
}
