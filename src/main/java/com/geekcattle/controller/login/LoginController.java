package com.geekcattle.controller.login;

import com.geekcattle.constants.CommonConstants;
import com.geekcattle.constants.LoginConstants;
import com.geekcattle.constants.ResultConstants;
import com.geekcattle.model.console.User;
import com.geekcattle.result.ResultData;
import com.geekcattle.service.console.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * @author liuyingao
 * @date 2019-04-03 15:21
 */
@Controller
@RequestMapping("/login")
public class LoginController {
    @Resource
    private UserService userService;

    @RequestMapping("/accountLogin")
    public String accountLogin(User reqUser, Model model, HttpServletRequest request){
        User user = userService.login(reqUser);
        if(user != null){
            HttpSession session = request.getSession();
            session.setAttribute(LoginConstants.SESSION_LOGIN_USER, user);

            //model.addAttribute("result", ResultConstants.success("登录成功", user, null));
            return ResultConstants.viewToRedirect("/console/index.htm");
        } else{
            model.addAttribute("result", ResultConstants.error("用户名或密码不正确", null, null));
            model.addAttribute("user", reqUser);
            return ResultConstants.viewToForward("console/login");
        }
    }

    @RequestMapping("/accountRegister")
    public String accountRegister(User model){
        return ResultConstants.viewToForward("register");
    }
}
