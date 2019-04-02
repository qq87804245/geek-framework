package com.geekcattle.mapper.lol;

import java.util.List;
import com.geekcattle.model.lol.Summoner;

public interface SummonerMapper {

	/**
	 * 根据Id查询
	 * 
	 * @param summoner
	 * @return
	 */
	public Summoner getSummonerById(Summoner summoner);

	/**
	 * 多条件查询(选配分页)
	 * 
	 * @param summoner
	 * @return
	 */
	public List<Summoner> getSummonerByParams(Summoner summoner);

	/**
	 * 添加
	 * 
	 * @param summoner
	 * @return
	 */
	public int addSummoner(Summoner summoner);

	/**
	 * 根据Id修改
	 * 
	 * @param summoner
	 * @return
	 */
	public int updateSummonerById(Summoner summoner);

	/**
	 * 根据Id删除
	 * 
	 * @param summoner
	 * @return
	 */
	public int deleteSummonerById(Summoner summoner);
}