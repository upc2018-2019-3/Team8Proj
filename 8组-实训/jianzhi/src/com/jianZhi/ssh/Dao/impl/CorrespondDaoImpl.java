package com.jianZhi.ssh.Dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.jianZhi.ssh.Dao.CorrespondDao;
import com.jianZhi.ssh.entities.Correspond;

@Repository("correspondDao")
public class CorrespondDaoImpl extends BaseDao<Correspond> implements CorrespondDao {

	public Correspond getCorrespond(String name) {
		return (Correspond) getSession().get(Correspond.class, name);
	}
	public List<Correspond> getAll(){
		String hql = "from Correspond";
		return get(hql);
	}
}
