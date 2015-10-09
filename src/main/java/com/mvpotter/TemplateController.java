package com.mvpotter;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author Mikhail Potter
 *         07.10.2015
 */
@Controller
public class TemplateController {

    @RequestMapping("/")
    public String index() {
        return "hello";
    }

}
