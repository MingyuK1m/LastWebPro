package core.co.kr.news;
import java.util.List;
import javax.inject.Inject;
import org.springframework.stereotype.Service;

import core.co.kr.vo.BoardVO;

@Service
public class BoardServiceImpl implements BoardService {
	@Inject
	private BoardDAO boardDAO;
	@Override
	public void create(BoardVO article) throws Exception {
		boardDAO.insert(article);
	}
	@Override
	public BoardVO read(Integer no) throws Exception {
		return boardDAO.select(no);
	}
	@Override
	public void update(BoardVO article) throws Exception {
		boardDAO.update(article);
	}
	@Override
	public void delete(Integer no) throws Exception {
		boardDAO.delete(no);
	}
	@Override
	public List<BoardVO> list() throws Exception {
		return boardDAO.selectList();
	}
}
