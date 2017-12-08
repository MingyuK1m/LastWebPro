package core.co.kr.user;

import java.util.HashMap;
import java.util.List;

//VO 파일 임포트 필요
import core.co.kr.vo.Constant;

public interface UserDAO {
	public int insertUser(HashMap<String, Object> params);
	 public int updateUser(HashMap<String, Object> params);
	 public int deleteUser(String id);
	 public HashMap<String, Object> selectOne(String id);
	 public List<HashMap<String, Object>> selectAll();
	
}