package egovframework.example.sample.service;

import java.util.List;

import egovframework.rte.psl.dataaccess.util.EgovMap;

public interface BoardService {

	int insert(BoardVO vo) throws Exception;

	List<EgovMap> select(BoardVO vo) throws Exception;

	int selectCount(BoardVO vo) throws Exception;

	EgovMap selectDetail(String idx) throws Exception;

	int update(BoardVO vo) throws Exception;

	int delete(String idx) throws Exception;

}
