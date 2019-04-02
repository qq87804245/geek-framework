package com.geekcattle.mapper.lol;

import java.util.List;
import com.geekcattle.model.lol.Server;

public interface ServerMapper {

	/**
	 * 根据Id查询
	 * 
	 * @param server
	 * @return
	 */
	public Server getServerById(Server server);

	/**
	 * 多条件查询(选配分页)
	 * 
	 * @param server
	 * @return
	 */
	public List<Server> getServerByParams(Server server);

	/**
	 * 添加
	 * 
	 * @param server
	 * @return
	 */
	public int addServer(Server server);

	/**
	 * 根据Id修改
	 * 
	 * @param server
	 * @return
	 */
	public int updateServerById(Server server);

	/**
	 * 根据Id删除
	 * 
	 * @param server
	 * @return
	 */
	public int deleteServerById(Server server);
}