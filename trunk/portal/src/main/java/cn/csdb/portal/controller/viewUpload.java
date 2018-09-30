package cn.csdb.portal.controller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
/**
 * Created by dengxinchao on 2018/9/29.
 */
@Controller
public class viewUpload {
    @RequestMapping("/upload")
    public String index(HttpServletRequest request) {
        return "viewUpload";
    }
}
