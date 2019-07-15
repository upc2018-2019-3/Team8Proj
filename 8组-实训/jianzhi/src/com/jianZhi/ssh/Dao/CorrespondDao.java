package com.jianZhi.ssh.Dao;

import java.util.List;

import com.jianZhi.ssh.entities.Correspond;

public interface CorrespondDao {
	
	public Correspond getCorrespond(String name);
	public List<Correspond> getAll();
}
