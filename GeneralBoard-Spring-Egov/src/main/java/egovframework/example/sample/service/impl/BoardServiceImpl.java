package egovframework.example.sample.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.example.sample.service.BoardService;
import egovframework.example.sample.service.BoardVO;
import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import egovframework.rte.psl.dataaccess.util.EgovMap;

@Service("boardService")
public class BoardServiceImpl extends EgovAbstractServiceImpl implements BoardService{

	@Resource(name = "boardMapper")
	private BoardMapper boardMapper;

	@Override
	public int insert(BoardVO vo) throws Exception {
		return boardMapper.insert(vo);
	}

	@Override
	public List<EgovMap> select(BoardVO vo) throws Exception {
		return boardMapper.select(vo);
	}

	@Override
	public int selectCount(BoardVO vo) throws Exception {
		return boardMapper.selectCount(vo);
	}

	@Override
	public EgovMap selectDetail(String idx) throws Exception {
		return boardMapper.selectDetail(idx);
	}

	@Override
	public int update(BoardVO vo) throws Exception {
		return boardMapper.update(vo);
	}

	@Override
	public int delete(String idx) throws Exception {
		return boardMapper.delete(idx);
	}
	
}
