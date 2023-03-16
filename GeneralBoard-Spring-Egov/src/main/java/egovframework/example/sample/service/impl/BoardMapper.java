package egovframework.example.sample.service.impl;

import java.util.List;

import egovframework.example.sample.service.BoardVO;
import egovframework.rte.psl.dataaccess.mapper.Mapper;
import egovframework.rte.psl.dataaccess.util.EgovMap;

@Mapper("boardMapper")
public interface BoardMapper {

	int insert(BoardVO vo) throws Exception;

	List<EgovMap> select(BoardVO vo) throws Exception;

	int selectCount(BoardVO vo) throws Exception;

	EgovMap selectDetail(String idx) throws Exception;

	int update(BoardVO vo) throws Exception;

	int delete(String idx) throws Exception;
}
