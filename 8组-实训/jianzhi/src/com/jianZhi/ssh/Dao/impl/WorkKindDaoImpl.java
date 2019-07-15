package com.jianZhi.ssh.Dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.jianZhi.ssh.Dao.WorkKindDao;
import com.jianZhi.ssh.entities.WorkKind;

@Repository("workKindDao")
public class WorkKindDaoImpl extends BaseDao<WorkKind> implements WorkKindDao {

	public WorkKind getWorkKind(String workKind) {
		return (WorkKind) getSession().get(WorkKind.class, workKind);
	}
	public List<WorkKind> getAll(){
		String hql = "from WorkKind";
		return get(hql);
	}
}
