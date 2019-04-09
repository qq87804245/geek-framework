package com.geekcattle.controller.console.video;

import java.io.IOException;
import java.util.List;

import com.geekcattle.constants.ResultConstants;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import lombok.extern.slf4j.Slf4j;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import com.github.pagehelper.PageInfo;

import javax.annotation.Resource;

import com.geekcattle.model.console.Video;
import com.geekcattle.result.ResultData;
import com.geekcattle.service.console.VideoService;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Controller
 * Create by liuyingao on 2019/02/24
 */
@Api(description = "视频Api")
@Slf4j
@Controller
@RequestMapping("/console/video")
public class VideoController {

    @Resource
    private VideoService videoService;


    @RequestMapping(value = "//index.htm")
    public String toVideo() {
        return ResultConstants.viewToForward("video/index");
    }

    @RequestMapping(value = "//play.htm")
    public String toPlay(String videoName, Model model) {
        model.addAttribute("videoUrl", "/video/" + videoName);
        return ResultConstants.viewToForward("video/play");
    }


    @RequestMapping(value = "/info-video-index.htm")
    public String index(Model model) {
        return ResultConstants.viewToForward("console/video/index");
    }

    //@RequiresPermissions("admin:edit")
    @RequestMapping(value = "/info-video-from.htm", method = {RequestMethod.POST, RequestMethod.GET})
    public String from(Model model, Video video, String referer) {
        if(video.getId() != null){
            video = videoService.getVideoById(video);
            model.addAttribute("video", video);
        }

        //添加 修改 查看
        model.addAttribute("referer", referer);
        return ResultConstants.viewToForward("console/video/from");
    }


    @RequestMapping(value = "/list", method = {RequestMethod.POST, RequestMethod.GET})
    @ResponseBody
    public ModelMap list(Video request) {
        ResultData<List<Video>> resultData = videoService.queryPage(request);
        PageInfo<Video> pageInfo = new PageInfo<Video>(resultData.getData());
        return ResultConstants.success(resultData.getMessage(), pageInfo,null);
    }


    /**
     * 根据Id查询
     *
     * @param request
     * @return
     */
    @ApiOperation(value = "根据id查询", notes = "根据id查询")
    @RequestMapping(value = "getVideoById", method = {RequestMethod.POST, RequestMethod.GET})
    @ResponseBody
    public ResultData<Video> getVideoById(Video request) {
        Video video = videoService.getVideoById(request);
        ResultData<Video> resultData = new ResultData<Video>(video);
        return resultData;
    }

    /**
     * 多条件查询
     *
     * @param request
     * @return
     */
    @RequestMapping(value = "/getVideoByParams", method = {RequestMethod.POST, RequestMethod.GET})
    @ResponseBody
    public ResultData<List<Video>> getVideoByParams(Video request) {
        ResultData<List<Video>> resultData = videoService.getVideoByParams(request);
        return resultData;
    }

    /**
     * 添加
     *
     * @param request
     * @return
     * @throws IOException
     */
    @RequestMapping(value = "/add", method = {RequestMethod.POST, RequestMethod.GET})
    @ResponseBody
    public ResultData addVideo(Video request) throws IOException {
        return videoService.addVideo(request);
    }

    /**
     * 根据Id修改
     *
     * @param request
     * @return
     */
    @RequestMapping(value = "/update", method = {RequestMethod.POST, RequestMethod.GET})
    @ResponseBody
    public ResultData updateVideoById(Video request) {
        return videoService.updateVideoById(request);
    }

    /**
     * 根据Id删除
     *
     * @param request
     * @return
     */
    @RequestMapping(value = "/delete", method = {RequestMethod.POST, RequestMethod.GET})
    @ResponseBody
    public ResultData deleteVideoById(Video request) {
        return videoService.deleteVideoById(request);
    }

}