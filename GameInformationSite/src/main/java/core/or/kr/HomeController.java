package core.or.kr;
import java.util.Locale;


import javax.servlet.http.HttpSession;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import org.springframework.web.servlet.ModelAndView;

import core.co.kr.user.UserService;


@Controller
public class HomeController {
	
	@Autowired
	 private UserService service;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		return "home";
	}
	
	@RequestMapping(value = "/mains", method = RequestMethod.GET)
	public String Main(Locale locale, Model model) {
		return "ground";
	}
	
	@RequestMapping(value = "/lmains", method = RequestMethod.GET)
	public String LMain(Locale locale, Model model, HttpSession session) {
		return "loginground";
	}
	
	@RequestMapping("/mains")
    public ModelAndView login(HttpSession session,String id, String password){
        ModelAndView mav = new ModelAndView();
        if(service.login(id, password)){
            session.setAttribute("id", id);
            mav.setViewName("redirect:lmains");
        }
        else{
            //return "redirect:loginForm.do";
            mav.setViewName("redirect:mains");
        }
        return mav;
    }
	
	@RequestMapping("/lmains")
    public String logout(HttpSession session){
//      session.invalidate();
        session.removeAttribute("id");
        return "redirect:mains";
    }
	
	
	@RequestMapping(value = "/sry", method = RequestMethod.GET)
	public String Sory(Locale locale, Model model, HttpSession session) {
		return "sorryman";
	}
	
}