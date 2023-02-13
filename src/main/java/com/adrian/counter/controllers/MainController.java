package com.adrian.counter.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.ui.Model;


@Controller
public class MainController {
  // read all
  @RequestMapping("/your_server")
  public String index(HttpSession session, Model model) { // session is of type http session
    int count = 0;
    if (session.getAttribute("count") == null) {
      // Use setAttribute to initialize the count in session
      session.setAttribute("count", count);
      System.out.println(session.getAttribute("count"));

    } else {
      // increment the count by 1 using getAttribute and setAttribute
      // we have to get it out of session and increment it and then set it again
      int currentCount = (int) session.getAttribute("count");
      currentCount++;
      session.setAttribute("count", currentCount);

      // ...
      model.addAttribute("count", currentCount); // this is how you make a piece of data availble to jsp. you add it to the model. 
    }
    
    return "index.jsp";

  }

}
