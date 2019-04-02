package com.geekcattle.mapper.lol;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import com.geekcattle.model.lol.Champion;

public interface ChampionMapper {

	/**
	 * 根据Id查询
	 * 
	 * @param champion
	 * @return
	 */
	public Champion getChampionById(Champion champion);

	/**
	 * 多条件查询(选配分页)
	 * 
	 * @param champion
	 * @return
	 */
	public List<Champion> getChampionByParams(Champion champion);

	/**
	 * 查询全部
	 * 
	 * @return
	 */
	public List<Champion> getChampionAll(@Param("serverid") int serverid, @Param("keyword") String keyword);

	/**
	 * 添加
	 * 
	 * @param champion
	 * @return
	 */
	public int addChampion(Champion champion);

	/**
	 * 根据Id修改
	 * 
	 * @param champion
	 * @return
	 */
	public int updateChampionById(Champion champion);

	/**
	 * 根据Id删除
	 * 
	 * @param champion
	 * @return
	 */
	public int deleteChampionById(Champion champion);

}