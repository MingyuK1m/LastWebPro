package core.or.kr;

import java.util.HashMap;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import core.co.kr.user.*;

@Controller
public class newuserController {
	 
	 @Autowired
	 private UserService service;
	 
	 HttpSession session;
	
	@RequestMapping(value = "/membership", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		return "newmember/membership";
	}
	
	@RequestMapping(value = "/useradd", method = RequestMethod.GET)
	public String se(Locale locale, Model model) {
		return "newmember/membershipC";
	}
	
	@RequestMapping("/membership")
    public String join(@RequestParam HashMap<String, Object> params)
    {
        System.out.println(params);
        service.joinUser(params);
        return "redirect:useradd"; 
    }
	
	@RequestMapping(value = "/membershipU", method = RequestMethod.GET)
	public String ups(Locale locale, Model model) {
		
		return "newmember/membershipU";
	}
	
	@RequestMapping("/membershipU")
    public String upse(@RequestParam HashMap<String, Object> params)
    {
        System.out.println(params);
        service.UserUpdate(params);
        return "redirect:lmains"; 
    }
	
	@RequestMapping(value = "/membershipD", method = RequestMethod.GET)
	public String dps(Locale locale, Model model) {
		
		return "newmember/membershipD";
	}
	
	@RequestMapping(value = "/membershipD", method = RequestMethod.POST)
    public String dpse(@RequestParam HashMap<String, Object> params)
    {
        service.UserDelete(params);
        return "redirect:mains"; 
    }
}
