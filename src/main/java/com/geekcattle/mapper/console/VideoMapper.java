package com.geekcattle.mapper.console;

import java.util.List;

import com.geekcattle.core.CustomerMapper;
import com.geekcattle.model.console.Video;

public interface VideoMapper extends CustomerMapper<Video> {

	/**
	 * 根据Id查询
	 * 
	 * @param video
	 * @return
	 */
	public Video getVideoById(Video video);

	/**
	 * 多条件查询(选配分页)
	 * 
	 * @param video
	 * @return
	 */
	public List<Video> getVideoByParams(Video video);

	/**
	 * 添加
	 * 
	 * @param video
	 * @return
	 */
	public int saveVideo(Video video);

	/**
	 * 根据Id修改
	 * 
	 * @param video
	 * @return
	 */
	public int updateVideoById(Video video);

	/**
	 * 根据Id删除
	 * 
	 * @param video
	 * @return
	 */
	public int deleteVideoById(Video video);

    List<Video> queryPage(Video request);
	int queryPageCount(Video request);
}