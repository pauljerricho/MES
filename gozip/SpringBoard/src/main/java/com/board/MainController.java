package com.board;

import java.io.IOException;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import com.board.dto.AskDTO;
import com.board.dto.BoardDTO;
import com.board.dto.MemberDTO;
import com.board.dto.ReportDTO;
import com.board.service.BoardService;
import com.board.service.MemberService;
import com.board.vo.PaggingVO;

@Controller
public class MainController {
	private MemberService memberService;
	private BoardService boardService;
	HttpServletRequest request;

	public MainController(MemberService memberService, BoardService boardService) {
		super();
		this.memberService = memberService;
		this.boardService = boardService;
	}

	// 메인화면
	// 베스트 게시글 6개 뿌리기
	@RequestMapping("/")
	public String main(HttpServletRequest request) {
		List<BoardDTO> list = boardService.selectBest();
		request.setAttribute("list", list);
		return "home";
	}

	// 홈으로 이동
	// 베스트 게시글 6개 뿌리기
	@RequestMapping("redirect.do")
	public String redirect(HttpServletRequest request) {
		List<BoardDTO> list = boardService.selectBest();
		request.setAttribute("list", list);
		return "home";
	}

	// 로그인으로 이동
	// 베스트 게시글 6개 뿌리기
	@RequestMapping("log.do")
	public String log(HttpServletRequest request) {
		List<BoardDTO> list = boardService.selectBest();
		request.setAttribute("list", list);
		return "login";
	}

	// 아이디 찾기 페이지로 이동
	@RequestMapping("find1.do")
	public String find() {
		return "find";
	}

	// 아이디 찾기 기능
	@RequestMapping("find.do")
	public String find(HttpServletRequest request, HttpServletResponse response, HttpSession session)
			throws IOException {
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		MemberDTO result = memberService.find(name, phone);
		if (result == null) {
			response.setContentType("text/html;charset=utf-8");
			response.getWriter().write("<script>alert('이름, 전화번호를 확인하세요');" + " history.back();</script>");
			return null;
		}
		String id = result.getId();
		session.setAttribute("id", id);
		return "findresult";
	}

	// 비밀번호 찾기 기능
	@RequestMapping("findpass.do")
	public String findpass(HttpServletRequest request, HttpServletResponse response, HttpSession session)
			throws IOException {
		String id = request.getParameter("id");
		String email = request.getParameter("email");
		MemberDTO result = memberService.findpass(id, email);

		if (result == null) {
			response.setContentType("text/html;charset=utf-8");
			response.getWriter().write("<script>alert('아이디, 이메일을 확인하세요');" + " history.back();</script>");
			return null;
		}
		String passwd = result.getpw();
		session.setAttribute("passwd", passwd);
		return "findresult";
	}

	// 비토인테리어로 이동
	@RequestMapping("bitointerior.do")
	public void bitointerior(HttpServletResponse httpServletResponse) throws IOException {
		httpServletResponse.sendRedirect("https://blog.naver.com/ecowow");
	}

	// 상상리퍼블릭으로 이동
	@RequestMapping("sangsang.do")
	public void sangsang(HttpServletResponse httpServletResponse) throws IOException {
		httpServletResponse.sendRedirect("https://sangsangrepublic.imweb.me");
	}

	// 인테리어랩으로 이동
	@RequestMapping("interiorlab.do")
	public void interiorlab(HttpServletResponse httpServletResponse) throws IOException {
		httpServletResponse.sendRedirect("https://smartstore.naver.com/interiorlab");
	}

	// 갤러리로 이동
	@RequestMapping("gallery.do")
	public String gallery() {
		return "gallery";
	}

	// 출석으로 이동
	@RequestMapping("attendance.do")
	public String attendance() {
		return "attendance";
	}

	// 로그인 기능
	// 베스트 6개 게시글 뿌리기
	@RequestMapping("/login.do")
	public String login(HttpServletRequest request, HttpServletResponse response, HttpSession session)
			throws IOException {
		response.setContentType("text/html;charset=utf-8");
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		List<BoardDTO> list = boardService.selectBest();
		request.setAttribute("list", list);
		MemberDTO dto = memberService.login(id, passwd);
		if (dto == null) {
			response.setContentType("text/html;charset=utf-8");
			response.getWriter().write("<script>alert('아이디 비밀번호 확인하세요');" + " history.back();</script>");
			return null;
		}
		session.setAttribute("member", dto);
		return "home";
	}

	// 회원가입으로 이동
	@RequestMapping("signup.do")
	public String register() {
		return "signup";
	}

	// 이모티콘 상품
	@RequestMapping("product.do")
	public String product() {
		return "product";
	}

	// 이모티콘 상품 클릭
	@RequestMapping("product_serve.do")
	public String product_serve() {
		return "product_serve";
	}

	// 회원가입 기능
	@RequestMapping("register.do")
	public String register(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String id = request.getParameter("id");
		String passwd = request.getParameter("pw");
		String name = request.getParameter("name");
		String birth = request.getParameter("birth");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String gender = request.getParameter("gender");
		String lvl = "9";
		memberService.insertMember(new MemberDTO(id, passwd, name, birth, email, phone, lvl));
		return "home";
	}

	// 아이디 체크하는 기능
	@RequestMapping(value = "/user/idCheck", method = RequestMethod.GET)
	@ResponseBody
	public int idCheck(String id) {
		return memberService.idCheck(id);
	}

	// 정보수정 기능
	@RequestMapping("updateMember.do")
	public String updateMember(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String id = request.getParameter("id");
		String passwd = request.getParameter("pw");
		String name = request.getParameter("name");
		String birth = request.getParameter("birth");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String lvl = "9";
		memberService.updateMember(new MemberDTO(id, passwd, name, birth, email, phone, lvl));
		return "home";
	}

	// 외뢰하기로 이동
	// 게시글 뿌리기
	@RequestMapping("ask.do")
	public String ask(HttpServletRequest request) {
		List<AskDTO> list = boardService.selectAsk();
		request.setAttribute("list", list);
		return "ask";
	}

	// 답변하기로 이동
	@RequestMapping("answer.do")
	public String answer() {
		return "answer";
	}

	// 답변하기로 이동
	@RequestMapping("answer2.do")
	public String answer2() {
		return "answer2";
	}

	// 게시판 초기화
	@RequestMapping("boardreset.do")
	public String boardreset() {
		return "redirect:";
	}

	// 구독자 목록
	@RequestMapping("f_id.do")
	public String fid() {
		return "f_id";
	}

	// 소개글 클릭시
	@RequestMapping("follow.do")
	public String follow() {
		return "follow";
	}

	// 소개글 클릭시
	@RequestMapping("follow2.do")
	public String follow2() {
		return "follow2";
	}

	// 소개글 클릭시
	@RequestMapping("follow3.do")
	public String follow3() {
		return "follow3";
	}

	// 소개글 클릭시
	@RequestMapping("follow4.do")
	public String follow4() {
		return "follow4";
	}

	// 소개글 클릭시
	@RequestMapping("follow5.do")
	public String follow5() {
		return "follow5";
	}

	// 소개글 클릭시
	@RequestMapping("follow6.do")
	public String follow6() {
		return "follow6";
	}

	// 소개글 클릭시
	@RequestMapping("follow7.do")
	public String follow7() {
		return "follow7";
	}

	// 소개글 클릭시
	@RequestMapping("follow8.do")
	public String follow8() {
		return "follow8";
	}

	// 소개글 클릭시
	@RequestMapping("follow9.do")
	public String follow9() {
		return "follow9";
	}

	// 공지사항 뿌리기
	@RequestMapping("notice.do")
	public String notice(HttpServletRequest request) {
		int page = 1;

		if (request.getParameter("page") != null) {
			page = Integer.parseInt(request.getParameter("page"));
		}
		List<BoardDTO> list = boardService.selectNotice(page);
		request.setAttribute("list", list);
		return "board_list";
	}

	// 자랑하기 뿌리기
	@RequestMapping("show.do")
	public String show(HttpServletRequest request) {
		int page = 1;

		if (request.getParameter("page") != null) {
			page = Integer.parseInt(request.getParameter("page"));
		}
		// 게시판 글 세팅
		List<BoardDTO> list = boardService.selectShowlist(page);
		request.setAttribute("list", list);

		// 페이징 데이터 셋팅
		int count = boardService.selectAllCount();
		PaggingVO vo = new PaggingVO(count, page, 10, 4);
		request.setAttribute("pagging", vo);
		return "board_list";
	}

	// 게시판으로 이동
	@RequestMapping("board.do")
	public String boardList(HttpServletRequest request) {
		int page = 1;

		if (request.getParameter("page") != null) {
			page = Integer.parseInt(request.getParameter("page"));
		}
		// 게시판 글 세팅
		List<BoardDTO> list = boardService.selectBoardList(page);
		request.setAttribute("list", list);

		// 페이징 데이터 셋팅
		int count = boardService.selectAllCount();
		PaggingVO vo = new PaggingVO(count, page, 7, 4);
		request.setAttribute("pagging", vo);
		return "board_list";
	}

	// 정보수정 페이지로 이동
	@RequestMapping("profile.do")
	public String profile() {
		return "profile";
	}

	@RequestMapping("search.do")
	public String search(HttpServletRequest request) {
		String kind = request.getParameter("kind");
		String search = request.getParameter("search");
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("kind", kind);
		map.put("search", search);

		List<BoardDTO> list = boardService.selectSearchBoard(map);

		request.setAttribute("list", list);
		return "board_list";
	}

	@RequestMapping("writeView.do")
	public String writeView() {
		return "board_write";
	}

	@RequestMapping("write.do")
	public String write(HttpServletRequest request, HttpSession session) {
		String b_title = request.getParameter("title");
		String b_content = request.getParameter("content");
		String id = request.getParameter("id");
		boardService.insertBoard(new BoardDTO(b_title, b_content, id));
		return "redirect:board.do";
	}

	// 로그아웃
	@RequestMapping("logout.do")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}

	// 게시글 보기
	@RequestMapping("boardView.do")
	public String boardView(HttpServletRequest request, HttpSession session) {
		int b_no = Integer.parseInt(request.getParameter("b_no"));

		BoardDTO dto = boardService.selectBoard(b_no);
		request.setAttribute("dto", dto);

		// 게시글 중복 조회수 증가 제거
		HashSet<Integer> set = (HashSet<Integer>) session.getAttribute("pageSet");
		if (set == null) {
			set = new HashSet<Integer>();
			session.setAttribute("pageSet", set);
		}
		if (set.add(b_no)) {
			boardService.addCount(b_no);
		}
		return "board_view";
	}

	// 베스트 게시글 이동
	@RequestMapping("boardView1.do")
	public String boardView1(HttpServletRequest request, HttpSession session) {
		int b_no = Integer.parseInt(request.getParameter("b_no"));

		BoardDTO dto = boardService.selectBoard(b_no);
		request.setAttribute("dto", dto);

		// 게시글 중복 조회수 증가 제거
		HashSet<Integer> set = (HashSet<Integer>) session.getAttribute("pageSet");
		if (set == null) {
			set = new HashSet<Integer>();
			session.setAttribute("pageSet", set);
		}
		if (set.add(b_no)) {
			boardService.addCount(b_no);
		}
		return "board_view";
	}

	// 게시글 수정화면으로 이동
	@RequestMapping("boardUpdateView.do")
	public String boardUpdateView(HttpServletRequest request) {
		int b_no = Integer.parseInt(request.getParameter("b_no"));

		BoardDTO dto = boardService.selectBoard(b_no);
		request.setAttribute("dto", dto);
		return "board_update_view";
	}

	// 게시글 수정하기
	@RequestMapping("update.do")
	public String update(HttpServletRequest request) {
		int b_no = Integer.parseInt(request.getParameter("bno"));
		String title = request.getParameter("title");
		String content = request.getParameter("content");

		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("b_no", b_no);
		map.put("title", title);
		map.put("content", content);

		boardService.updateBoard(map);

		return "redirect:boardView.do?b_no=" + b_no;
	}

	// 게시글 삭제하기
	@RequestMapping("boardDelete.do")
	public String boardDelete(HttpServletRequest request) {
		int b_no = Integer.parseInt(request.getParameter("b_no"));
		boardService.deleteBoard(b_no);
		return "redirect:board.do";
	}

	// 좋아요 클릭시
	@RequestMapping("boardLike.do")
	public String boardLike(HttpServletRequest request, HttpServletResponse response, HttpSession session)
			throws IOException {
		int b_no = Integer.parseInt(request.getParameter("bno"));
		String id = ((MemberDTO) session.getAttribute("member")).getId();

		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("id", id);
		map.put("b_no", b_no);

		int count = 0;
		try {
			count = boardService.insertBoardLike(map);
		} catch (Exception e) {
			boardService.deleteBoardLike(map);
		}
		JSONObject obj = new JSONObject();
		obj.put("result", count);
		obj.put("count", boardService.selectBoardLike(b_no));
		response.getWriter().write(obj.toString());
		return null;
	}

	// 싫어요 클릭시
	@RequestMapping("boardHate.do")
	public String boardHate(HttpServletRequest request, HttpServletResponse response, HttpSession session)
			throws IOException {
		int b_no = Integer.parseInt(request.getParameter("bno"));
		String id = ((MemberDTO) session.getAttribute("member")).getId();
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("id", id);
		map.put("b_no", b_no);

		int count = 0;
		try {
			count = boardService.insertBoardHate(map);
		} catch (Exception e) {
			boardService.deleteBoardHate(map);
		}
		JSONObject obj = new JSONObject();
		obj.put("result", count);
		obj.put("count", boardService.selectBoardHate(b_no));
		response.getWriter().write(obj.toString());
		return null;
	}

	// 신고 클릭시
	@RequestMapping("report.do")
	public String report(HttpServletRequest request, @RequestParam String id) {
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		return "report_write";
	}

	// 신고 글쓰기 클릭시
	@RequestMapping("report_write.do")
	public String report_write(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String writer = request.getParameter("id");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		BoardDTO dto = new BoardDTO();
		System.out.println("id:" + writer);
		System.out.println("title:" + title);
		dto.setB_title(title);
		dto.setId(writer);
		dto.setB_content(content);
		boardService.insertReport(dto);
		response.getWriter().write("<script>window.close()</script>");
		return null;
	}

	// 관리자 페이지로 이동
	@RequestMapping("admin.do")
	public String admin() {
		return "admin";
	}

	// 멤버 관리 페이지로 이동
	@RequestMapping("member_page.do")
	public String member_page(HttpServletRequest request, HttpServletResponse response) {
		List<MemberDTO> list = memberService.selectAllmember();
		request.setAttribute("list", list);
		return "member_page";
	}

	// 관리자 신고페이지로 이동
	@RequestMapping("report_page.do")
	public String report_page(HttpServletRequest request, HttpServletResponse response) {
		int page = 1;
		if (request.getParameter("page") != null) {
			page = Integer.parseInt(request.getParameter("page"));
		}
		// 게시판 글 세팅
		List<ReportDTO> list = boardService.selectReport(page);
		request.setAttribute("list", list);
		// 페이징 데이터 셋팅
		int count = boardService.selectAllReport();
		PaggingVO vo = new PaggingVO(count, page, 5, 4);
		request.setAttribute("pagging", vo);
		return "report_page";
	}

	// 관리자 회원 삭제
	@RequestMapping("DeleteMember.do")
	public String DeleteMember(HttpServletRequest request, HttpServletResponse response, @RequestParam String id) {
		memberService.DeleteMember(id);
		return "redirect:member_page.do";
	}

	// 꿀팁페이지 이동
	@RequestMapping("tip.do")
	public String tip(HttpServletRequest request) {
		List<BoardDTO> list = boardService.selectTip();
		request.setAttribute("list", list);
		return "tip";
	}

	// 테스트 하기
	@RequestMapping("1.do")
	public String test() {
		return "test";
	}
}
