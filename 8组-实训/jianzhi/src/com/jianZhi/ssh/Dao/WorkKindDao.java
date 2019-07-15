package com.jianZhi.ssh.Dao;

import java.util.List;

import com.jianZhi.ssh.entities.WorkKind;

public interface WorkKindDao {
	
	public WorkKind getWorkKind(String workKind);
	public List<WorkKind> getAll();
}
