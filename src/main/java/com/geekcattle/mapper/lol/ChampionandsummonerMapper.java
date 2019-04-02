package com.geekcattle.mapper.lol;
import java.util.List;

import com.geekcattle.model.lol.Championandsummoner;



public interface ChampionandsummonerMapper{

    /**
     * 根据Id查询
     * @param championandsummoner
     * @return
     */
	public Championandsummoner getChampionandsummonerById(Championandsummoner championandsummoner);
    /**
     * 多条件查询(选配分页)
     * @param championandsummoner
     * @return
     */
	public List<Championandsummoner> getChampionandsummonerByParams(Championandsummoner championandsummoner);
    /**
     * 添加
     * @param championandsummoner
     * @return
     */	public int addChampionandsummoner(Championandsummoner championandsummoner);
    /**
     * 根据Id修改
     * @param championandsummoner
     * @return
     */	public int updateChampionandsummonerById(Championandsummoner championandsummoner);
    /**
     * 根据Id删除
     * @param championandsummoner
     * @return
     */	public int deleteChampionandsummonerById(Championandsummoner championandsummoner);
}