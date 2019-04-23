package com.geekcattle.controller.app.video;

import com.geekcattle.constants.ResultConstants;
import com.geekcattle.model.console.Video;
import com.geekcattle.result.ResultData;
import com.geekcattle.service.console.VideoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/app/video")
public class VideoAppController {

    @Autowired
    private VideoService videoService;

    @RequestMapping(value = "/index")
    public String index(Model model) {
        ResultData<List<Video>> resultData = videoService.getVideoByParams(null);
        model.addAttribute("list", resultData.getData());
        return ResultConstants.viewToForward("app/video/index");
    }

    @RequestMapping(value = "/play.htm")
    public String toPlay(Integer id, Model model) {
        Video video = videoService.getVideoById(new Video(id));
        model.addAttribute("video", video);
        return ResultConstants.viewToForward("app/video/play");
    }

}
