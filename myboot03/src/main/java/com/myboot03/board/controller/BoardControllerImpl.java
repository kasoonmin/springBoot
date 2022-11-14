package com.myboot03.board.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.myboot03.board.service.BoardService;
import com.myboot03.board.vo.ArticleVO;
import com.myboot03.board.vo.ImageVO;
import com.myboot03.member.vo.MemberVO;

@Controller("boardController")
public class BoardControllerImpl implements BoardController {
	private static final String ARTICLE_IMAGE_REPO = "C:\\board\\article_image";

	@Autowired
	private BoardService boardService;
	@Autowired
	private ArticleVO articleVO;

	public BoardControllerImpl() {
		System.out.println("BoardControolerImpl 객체 생성");
	}

	@Override
	@RequestMapping(value = "/board/listArticles.do", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView listArticles(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = (String) request.getAttribute("viewName");
		List<ArticleVO> articlesList = boardService.listArticles();

		ModelAndView mav = new ModelAndView(viewName);
		System.out.println(viewName);
		mav.addObject("articlesList", articlesList);

		return mav;
	} // end listArticles

	@RequestMapping(value = "/member/productpage.do", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView test(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = (String) request.getAttribute("viewName");

		ModelAndView mav = new ModelAndView(viewName);
		System.out.println(viewName);
		return mav;
	} // end test

	// 다중 이미지 보여주기
	@RequestMapping(value = "/board/viewArticle.do", method = RequestMethod.GET)
	public ModelAndView viewArticle(@RequestParam("articleNO") int articleNO, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		String viewName = (String) request.getAttribute("viewName");
		Map articleMap = boardService.viewArticle(articleNO);
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		mav.addObject("articleMap", articleMap);

		return mav;
	}

	// 다중 이미지 글 추가하기
	@Override
	@RequestMapping(value = "/board/addNewArticle.do", method = RequestMethod.POST)
	@ResponseBody
	public ResponseEntity addNewArticle(MultipartHttpServletRequest multipartRequest, HttpServletResponse response)
			throws Exception {
		multipartRequest.setCharacterEncoding("utf-8");
		String imageFileName = null;

		Map articleMap = new HashMap();
		Enumeration enu = multipartRequest.getParameterNames();

		while (enu.hasMoreElements()) {
			String name = (String) enu.nextElement();
			System.out.println("name : "+name);
			String value = multipartRequest.getParameter(name);
			articleMap.put(name, value);
		}

		//로그인 시 세션에 저장된 회원 정보에서 글쓴이 아이디를 얻어와서 map에 저장합니다.
		HttpSession session = multipartRequest.getSession();
		MemberVO memberVO = (MemberVO) session.getAttribute("member");
		String id = memberVO.getId();
		articleMap.put("id", id);
		articleMap.put("parentNO", 0);

		List<String> fileList = upload(multipartRequest); // ���ε� �� ���ο� ���� ���� ����
		List<ImageVO> imageFileList = new ArrayList<ImageVO>();
		
		if (fileList != null && fileList.size() != 0) {
			for (String fileName : fileList) {
				ImageVO imageVO = new ImageVO();
				imageVO.setImageFileName(fileName);
				imageFileList.add(imageVO);
			}
			articleMap.put("imageFileList", imageFileList);
			System.out.println("imageFileList : "+imageFileList);
		} 

		String message;
		ResponseEntity resEnt = null;
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/html; charset=utf-8");

		try {
			int articleNO = boardService.insertNewArticle(articleMap); 

			if (imageFileList != null && imageFileList.size() != 0) {
				for (ImageVO imageVO : imageFileList) {
					imageFileName = imageVO.getImageFileName();
					File srcFile = new File(ARTICLE_IMAGE_REPO + "\\" + "temp" + "\\" + imageFileName);
					File descDir = new File(ARTICLE_IMAGE_REPO + "\\" + articleNO);
					// destDir.mkdirs();
					FileUtils.moveFileToDirectory(srcFile, descDir, true);
				} // end for
			} // end if

			message = "<script>";
			message += "alert('새글을 추가했습니다');";
			message += "location.href='" + multipartRequest.getContextPath() + "/board/listArticles.do';";
			message += "</script>";
			resEnt = new ResponseEntity(message, responseHeaders, HttpStatus.CREATED);
			
		} catch (Exception e) {
			if (imageFileList != null && imageFileList.size() != 0) {
				for (ImageVO imageVO : imageFileList) {
					imageFileName = imageVO.getImageFileName();
					File srcFile = new File(ARTICLE_IMAGE_REPO + "\\" + "temp" + "\\" + imageFileName);
					srcFile.delete();
				}
			} // end if

			message = "<script>";
			message += "alert('오류가 발생했습니다. 다시 시도해 주세요');";
			message += "location.href='" + multipartRequest.getContextPath() + "/board/articleForm.do';";
			message += "</script>";
			resEnt = new ResponseEntity(message, responseHeaders, HttpStatus.CREATED);

			e.printStackTrace();
		}

		return resEnt;
	}
	
	// 다중 이미지 수정
	@RequestMapping(value = "/board/modArticle.do", method = RequestMethod.POST)
	@ResponseBody
	public ResponseEntity modArticle(MultipartHttpServletRequest multipartRequest, HttpServletResponse response)
			throws Exception {
		multipartRequest.setCharacterEncoding("utf-8");
		String imageFileName = null;
		String oldimageFileName = null;

		Map articleMap = new HashMap();
		Enumeration enu = multipartRequest.getParameterNames();

		while (enu.hasMoreElements()) {
			String name = (String) enu.nextElement();
			System.out.println("name : "+name);
			String value = multipartRequest.getParameter(name);
			System.out.println("value : " + value);
			articleMap.put(name, value);
		}
		
		List<String> fileList = upload(multipartRequest); // �ӽ� ��ο� ���� �ε��� ���ϵ��� ����Ǿ� ����
		List<ImageVO> imageFileList = new ArrayList<ImageVO>();

		if (fileList != null && fileList.size() != 0) {
			for (String fileName : fileList) {
				ImageVO imageVO = new ImageVO();
				imageVO.setImageFileName(fileName);
				imageFileList.add(imageVO);
			}
			articleMap.put("imageFileList", imageFileList);
			System.out.println("imageFileList : "+imageFileList);
		} // 새로 저장할 이미지들의 이름이 담긴 list를 map에 추가함
		
		String articleNO = (String) articleMap.get("articleNO");
		String message;
		ResponseEntity resEnt = null;
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/html; charset=utf-8");

		try {
			List oldImageFileList = boardService.oldImageName(Integer.parseInt(articleNO)); //DB�� ����Ǿ� �ִ� ���� ���ϸ��� ����Ǿ� ��������...
			
		} catch (Exception e) {
			message = "<script>";
			message += "alert('������ �߻��߽��ϴ�. �ٽ� �������ּ���');";
			message += "location.href='" + multipartRequest.getContextPath() + "/board/viewArticle.do?articleNO="
					+ articleNO + "';";
			message += "</script>";

			resEnt = new ResponseEntity(message, responseHeaders, HttpStatus.CREATED);
		}
		
		try {
				boardService.modArticle(articleMap); // �� ���� -> �� �պ��ߵɵ�

			if (imageFileList != null && imageFileList.size() != 0) {
				for (ImageVO imageVO : imageFileList) { // imageVO���� ������ �̸��� ����Ǿ� ����
					imageFileName = imageVO.getImageFileName();
					File srcFile = new File(ARTICLE_IMAGE_REPO + "\\" + "temp" + "\\" + imageFileName); //�� �������� ������ �������?!
					File descDir = new File(ARTICLE_IMAGE_REPO + "\\" + articleNO);
					FileUtils.moveFileToDirectory(srcFile, descDir, true);
				} // end for
			} // end if -> 최종 경로에 새로운 이미지들 저장
			
			
			
//			originalFileList = multipartFile.getOriginalFilename();
//			if(originalFileList != null && originalFileList.size() != 0) {
//				for (ImageVO imageVO : originalFileList) {
//					oldimageFileName = imageVO.getImageFileName();
//					File oldFile = new File(ARTICLE_IMAGE_REPO + "\\" + articleNO + "\\"+ originalFileList);
//					oldFile.delete();
//				}
//			} // end if

			message = "<script>";
			message += "alert('글을 수정했습니다');";
			message += "location.href='" + multipartRequest.getContextPath() + "/board/viewArticle.do?articleNO="
					+ articleNO + "';";
			message += "</script>";

			resEnt = new ResponseEntity(message, responseHeaders, HttpStatus.CREATED);
		} catch (Exception e) {

			File srcFile = new File(ARTICLE_IMAGE_REPO + "\\" + "temp" + "\\" + imageFileName);
			srcFile.delete();

			message = "<script>";
			message += "alert('오류가 발생했습니다. 다시 수정해주세요');";
			message += "location.href='" + multipartRequest.getContextPath() + "/board/viewArticle.do?articleNO="
					+ articleNO + "';";
			message += "</script>";

			resEnt = new ResponseEntity(message, responseHeaders, HttpStatus.CREATED);
		} // end try-catch

		return resEnt;
	} // end modArticle

	@Override
	@RequestMapping(value = "/board/removeArticle.do", method = RequestMethod.POST)
	@ResponseBody
	public ResponseEntity removeArticle(@RequestParam("articleNO") int articleNO, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		response.setContentType("text/html; charset=utf-8");
		String message;
		ResponseEntity resEnt = null;
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/html; charset=utf-8");

		try {
			boardService.removeArticle(articleNO);
			File destDir = new File(ARTICLE_IMAGE_REPO + "\\" + articleNO);
			FileUtils.deleteDirectory(destDir);

			message = "<script>";
			message += "alert('글을 삭제했습니다.');";
			message += "location.href='" + request.getContextPath() + "/board/listArticles.do';";
			message += "</script>";
			resEnt = new ResponseEntity(message, responseHeaders, HttpStatus.CREATED);
		} catch (Exception e) {
			message = "<script>";
			message += "alert('작업중 오류가 발생했습니다. 다시 시도해주세요.');";
			message += "loaction.href='" + request.getContextPath() + "/board/listArticles.do';";
			message += "</script>";
			resEnt = new ResponseEntity(message, responseHeaders, HttpStatus.CREATED);

			e.printStackTrace();
		}

		return resEnt;
	} // end removeArticle

	@RequestMapping(value = { "/board/articleForm.do", "/board/replyForm.do" }, method = { RequestMethod.GET,
			RequestMethod.POST })
	public ModelAndView form(HttpServletRequest request, HttpServletResponse response) throws Exception {
//		      String viewName = getViewName(request);
		String viewName = (String) request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		return mav;
	}

	@RequestMapping(value = "/board/*Form.do", method = RequestMethod.GET)
	private ModelAndView form(@RequestParam(value = "result", required = false) String result,
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = (String) request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView();
		mav.addObject("result", result);
		mav.setViewName(viewName);

		return mav;
	}

	// 다중 이미지 업로드하기
	private List<String> upload(MultipartHttpServletRequest multipartRequest) throws Exception {
		List<String> fileList = new ArrayList<String>();
		Iterator<String> fileNames = multipartRequest.getFileNames();

		while (fileNames.hasNext()) {
			String fileName = fileNames.next();
			MultipartFile mFile = multipartRequest.getFile(fileName);
			String originalFileName = mFile.getOriginalFilename();
			fileList.add(originalFileName);

			File file = new File(ARTICLE_IMAGE_REPO + "\\" + "temp" + "\\" + fileName);

			if (mFile.getSize() != 0) {
				if (!file.exists()) {
					file.getParentFile().mkdirs();
					mFile.transferTo(new File(ARTICLE_IMAGE_REPO + "\\" + "temp" + "\\" + originalFileName));
				}
			}
			System.out.println("originalFileName : "+originalFileName);
		}

		return fileList;
	}
	

}
