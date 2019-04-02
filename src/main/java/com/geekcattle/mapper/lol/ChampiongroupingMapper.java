package com.geekcattle.mapper.lol;

import java.util.List;
import com.geekcattle.model.lol.Championgrouping;

public interface ChampiongroupingMapper {

	/**
	 * 根据Id查询
	 * 
	 * @param championgrouping
	 * @return
	 */
	public Championgrouping getChampiongroupingById(Championgrouping championgrouping);

	/**
	 * 多条件查询(选配分页)
	 * 
	 * @param championgrouping
	 * @return
	 */
	public List<Championgrouping> getChampiongroupingByParams(Championgrouping championgrouping);

	/**
	 * 添加
	 * 
	 * @param championgrouping
	 * @return
	 */
	public int addChampiongrouping(Championgrouping championgrouping);

	/**
	 * 根据Id修改
	 * 
	 * @param championgrouping
	 * @return
	 */
	public int updateChampiongroupingById(Championgrouping championgrouping);

	/**
	 * 根据Id删除
	 * 
	 * @param championgrouping
	 * @return
	 */
	public int deleteChampiongroupingById(Championgrouping championgrouping);
}