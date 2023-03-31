package egovframework.example.sample.web;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import egovframework.example.sample.service.BoardService;
import egovframework.example.sample.service.BoardVO;
import egovframework.rte.psl.dataaccess.util.EgovMap;
import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;

@Controller
public class BoardController {

	@Resource(name="boardService")
	private BoardService boardService;
	
	@RequestMapping(value = "/board.do")
	public String board(@ModelAttribute("boardVO")BoardVO vo, ModelMap model) throws Exception{
		
		vo.setPageUnit(5);
		vo.setPageSize(5);
		
		PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(vo.getPageIndex());
		paginationInfo.setRecordCountPerPage(vo.getPageUnit());
		paginationInfo.setPageSize(vo.getPageSize());

		vo.setFirstIndex(paginationInfo.getFirstRecordIndex());
		vo.setLastIndex(paginationInfo.getLastRecordIndex());
		vo.setRecordCountPerPage(paginationInfo.getRecordCountPerPage());

		List<EgovMap> resultList = boardService.select(vo);
		model.addAttribute("resultList", resultList);

		int totCnt = boardService.selectCount(vo);
		paginationInfo.setTotalRecordCount(totCnt);
		model.addAttribute("paginationInfo", paginationInfo);
		
		return "board/board";
	}
	
	@RequestMapping(value = "/boardWrite.do")
	public String boardWrite(BoardVO vo, ModelMap model) throws Exception{

		EgovMap result = boardService.selectDetail(vo.getIdx());
		model.addAttribute("result", result);
		System.err.println(result);
		
		return "board/boardWrite";
	}
	
	@RequestMapping(value = "/board/regist.do")
	@ResponseBody
	public String boardRegist(BoardVO vo) throws Exception{
		
		int result = 0;
		if(vo.getIdx().isEmpty()) {
			result = boardService.insert(vo);
		} else {
			result = boardService.update(vo);
		}
		
		if(result == 1) {
			return "success";
		} else return "fail";
	}
	
	@RequestMapping(value = "/boardView.do")
	public String boardView(BoardVO vo, ModelMap model) throws Exception{
		
		EgovMap result = boardService.selectDetail(vo.getIdx());
		model.addAttribute("result", result);
		
		return "board/boardView";
	}
	
	@RequestMapping(value = "/board/delete.do")
	@ResponseBody
	public String boardDelete(BoardVO vo) throws Exception{
		
		int result = 0;
		result = boardService.delete(vo.getIdx());
		
		if(result == 1) {
			return "success";
		} else return "fail";
	}
	
}
