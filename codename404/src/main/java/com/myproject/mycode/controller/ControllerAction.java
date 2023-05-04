package com.myproject.mycode.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ControllerAction {
   
   /* 메인 페이지 뷰 */
   @RequestMapping(value = "/main.do")
   public String mainpage() {
      return "main";
   }
   
}