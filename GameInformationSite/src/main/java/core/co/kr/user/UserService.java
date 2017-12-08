package core.co.kr.user;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import core.co.kr.vo.Constant;
import core.co.kr.user.UserDAO;

@Service
public class UserService {
	 @Autowired
	 private UserDAO userdao;
	 
    public List<HashMap<String, Object>> selectAll() {
        return userdao.selectAll();
    }
	    
    public void joinUser(HashMap<String, Object> params){
        if(params.get("password").equals(params.get("pwd_CHECK")))
        {
        	System.out.println(params);
	            userdao.insertUser(params);
        }
    }
	    
	    public boolean login(String id, String pwd){
	        HashMap<String, Object> result = userdao.selectOne(id);
	        if(result == null)
	            return false;
	        else 
	        {
	            String oPwd = (String) result.get(Constant.User.password);
	            if(oPwd==null)
	                return false;
	            else{
	                if(oPwd.equals(pwd))
	                    return true;
	                else
	                    return false;
	            }
	            
	        }
	    }
	    
	    
	    
	    //회원 한명의 정보를 가져다주는 
	    public HashMap<String, Object> getMemberInfo(String id){
	        return userdao.selectOne(id);
	    }
	    
	    public void UserUpdate(HashMap<String, Object> params){
	 
	        if(params.get("password").equals(params.get("pwd_CHECK")))
	        {
	            HashMap<String, Object> record = userdao.selectOne((String)params.get(Constant.User.id));
	            record.putAll(params); //원래있던거에 내가 받은걸로 수정
	            userdao.updateUser(record);
	        }
	    }
	    public void UserDelete(HashMap<String, Object> params){
	    	
            userdao.deleteUser((String)params.get(Constant.User.id));
	        
	    }
	}