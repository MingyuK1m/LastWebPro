package core.co.kr.news;
import java.util.List;
import javax.inject.Inject;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import core.co.kr.vo.BoardVO;

@Repository
public class BoardDAOImpl implements BoardDAO {
	@Inject
	private SqlSession sqlSession;
	public void insert(BoardVO article) throws Exception {
		sqlSession.insert("BoardMapper.insert",article);
	}
	@Override
	public BoardVO select(Integer no) throws Exception {
		return sqlSession.selectOne("BoardMapper.select", no);
	}
	@Override
	public void update(BoardVO article) throws Exception {
		sqlSession.update("BoardMapper.update", article);
	}
	@Override
	public void delete(Integer no) throws Exception {
		sqlSession.delete("BoardMapper.delete", no);
	}
	@Override
	public List<BoardVO> selectList() throws Exception {
		return sqlSession.selectList("BoardMapper.selectList");
	}
}
