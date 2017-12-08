package core.co.kr.news;
import java.util.List;

import core.co.kr.vo.BoardVO;

public interface BoardDAO {
	public void insert(BoardVO article) throws Exception;
	public BoardVO select(Integer no) throws Exception;
	public void update(BoardVO article) throws Exception;
	public void delete(Integer no) throws Exception;
	public List<BoardVO> selectList() throws Exception;
}
