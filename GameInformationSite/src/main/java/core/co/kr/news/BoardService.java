package core.co.kr.news;
import java.util.List;

import core.co.kr.vo.BoardVO;

public interface BoardService {
	public void create(BoardVO article) throws Exception;
	public BoardVO read(Integer no) throws Exception;
	public void update(BoardVO article) throws Exception;
	public void delete(Integer no) throws Exception;
	public List<BoardVO> list() throws Exception;
}
