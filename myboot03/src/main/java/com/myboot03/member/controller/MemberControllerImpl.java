package com.myboot03.member.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.myboot03.member.service.MemberService;
import com.myboot03.member.vo.MemberVO;

@Controller("memberController")
public class MemberControllerImpl implements MemberController {
	private static final Logger logger = LoggerFactory.getLogger(MemberControllerImpl.class);
	@Autowired
	private MemberService memberService;
	@Autowired
	private MemberVO memberVO;
	
	public MemberControllerImpl() {
		System.out.println("pro30 Controller ����");
	}

	@RequestMapping(value= {"/", "/main.do"}, method=RequestMethod.GET)
	private ModelAndView main(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = (String)request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView();
		
			mav.setViewName(viewName);
		return mav;
	}
	
	@Override
	@RequestMapping(value="/member/listMembers.do", method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView listMembers(HttpServletRequest request, HttpServletResponse response) throws Exception {
//		String viewName = getViewName(request);
		String viewName = (String) request.getAttribute("viewName");
			System.out.println("listMembers viewName : " + viewName);
		
			logger.info("viewName : "+viewName);
			logger.debug("viewName : "+viewName);
			
		List membersList = memberService.listMembers();
		ModelAndView mav = new ModelAndView(viewName);
				mav.addObject("membersList", membersList);
		return mav;
	}
	
	@Override
	@RequestMapping(value="/member/addMember.do", method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView addMember(MemberVO member, HttpServletRequest request, HttpServletResponse response) throws Exception {
			request.setCharacterEncoding("utf-8");
			System.out.println("addMember.do");
		
		int result = 0;
			result = memberService.addMember(member);
		ModelAndView mav = new ModelAndView("redirect:/member/listMembers.do");
	
		return mav;
	}
	// 카카오맵 테스트
	@Override
	@RequestMapping(value="/member/njtour2.do", method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView njtour(MemberVO member, HttpServletRequest request, HttpServletResponse response) throws Exception {
			request.setCharacterEncoding("utf-8");
			System.out.println("addMember.do");
		
//		int result = 0;
//			result = memberService.addMember(member);
		ModelAndView mav = new ModelAndView("/member/njtour2");
	
		return mav;
	}
	
	// 카카오맵 테스트
		@Override
		@RequestMapping(value="/member/productDetailPage.do", method= {RequestMethod.GET, RequestMethod.POST})
		public ModelAndView detailPage(MemberVO member, HttpServletRequest request, HttpServletResponse response) throws Exception {
				request.setCharacterEncoding("utf-8");
				System.out.println("addMember.do");
			
//			int result = 0;
//				result = memberService.addMember(member);
			ModelAndView mav = new ModelAndView("/member/productDetailPage");
		
			return mav;
		}
	
	@Override
	@RequestMapping(value="/member/removeMember.do", method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView removeMember(@RequestParam("id") String id, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		request.setCharacterEncoding("utf-8");
		System.out.println("removeMember.do");
			
			memberService.removeMember(id);
		ModelAndView mav = new ModelAndView("redirect:/member/listMembers.do");
		
		return mav;
	}
	
	@Override
	@RequestMapping(value="/member/modMember.do", method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView modMember(@ModelAttribute("info") MemberVO vo, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		request.setCharacterEncoding("utf-8");
			System.out.println("modMember.do");
			memberService.modMember(vo);
		ModelAndView mav = new ModelAndView("redirect:/member/listMembers.do");
		
		return mav;
	}
	
	@Override
	@RequestMapping(value="/member/modMemberInfo.do", method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView modMemberInfo(@RequestParam("id") String id, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
			request.setCharacterEncoding("utf-8");
			System.out.println("modMemberInfo.do");
		
		MemberVO vo = memberService.modMemberInfo(id);
		ModelAndView mav = new ModelAndView();
					mav.addObject("memberVO", vo);
					mav.setViewName("/member/modMemberForm");
		
		return mav;
	}

	@Override
	   @RequestMapping(value="/member/login.do", method = RequestMethod.POST)
	   public ModelAndView login(@ModelAttribute("member") MemberVO membervo, RedirectAttributes rAttr, HttpServletRequest request,
	         HttpServletResponse response) throws Exception {
	         ModelAndView mav = new ModelAndView();
	         memberVO = memberService.login(membervo);
	         if(memberVO != null) {
	            HttpSession session = request.getSession();
	            session.setAttribute("member", memberVO);
	            session.setAttribute("isLogOn", true);
	            mav.setViewName("redirect:/member/listMembers.do");
	         }else {
	            rAttr.addFlashAttribute("result","loginFailed");
	            mav.setViewName("redirect:/member/loginForm.do");
	         }
	      return mav;
	   }

	
	
//	@Override
//	@RequestMapping(value="/member/login.do", method=RequestMethod.POST)
//	public ModelAndView login(@ModelAttribute("member") MemberVO member, RedirectAttributes rAttr,
//											HttpServletRequest request, HttpServletResponse response) throws Exception {
//		ModelAndView mav = new ModelAndView();
//		memberVO = memberService.login(member);
//		
//		if(memberVO != null) {
//			HttpSession session = request.getSession();
//						session.setAttribute("member", memberVO);
//						session.setAttribute("isLogOn", true);
//						mav.setViewName("redirect:/member/listMembers.do");
//		} else {
//			rAttr.addAttribute("result", "loginFailed");
//			mav.setViewName("redirect:/member/loginForm.do");
//		}
//		
//		return mav;
//		
//	}
	
	@Override
	@RequestMapping(value="/member/logout.do", method=RequestMethod.GET)
	public ModelAndView logout(HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session = request.getSession();
					session.removeAttribute("member");
					session.removeAttribute("isLogOn");
		ModelAndView mav = new ModelAndView();
					mav.setViewName("redirect:/member/listMembers.do");
			
		return mav;
	}
	
//	@RequestMapping(value={"/member/loginForm.do", "/member/memberForm.do"}, method=RequestMethod.GET)
//	public ModelAndView form(HttpServletRequest request, HttpServletResponse response) throws Exception {
//		/* String viewName = getViewName(request); */
//		String viewName = (String) request.getAttribute("viewName");
//		ModelAndView mav = new ModelAndView();
//		mav.setViewName(viewName);
//		
//		return mav;
//	}
	@RequestMapping(value = {"/member/loginForm.do", "/member/memberForm.do"} , method = RequestMethod.GET)
	   public ModelAndView form(HttpServletRequest request, HttpServletResponse response) throws Exception {
//	      String viewName = getViewName(request);
		String viewName = (String) request.getAttribute("viewName");
	      ModelAndView mav = new ModelAndView();
	      mav.setViewName(viewName);
	      return mav;
	      
	   }

	
//	@RequestMapping(value="/member/*Form.do", method=RequestMethod.GET)
//	private ModelAndView form(@RequestParam(value="result", required=false) String result,
//							HttpServletRequest request, HttpServletResponse response) throws Exception {
//		String viewName = (String)request.getAttribute("viewName");
//		ModelAndView mav = new ModelAndView();
//			mav.addObject("result", result);
//			mav.setViewName(viewName);
//		
//		return mav;
//	}
	
//	private String getViewName(HttpServletRequest request) throws Exception {
//		String contextPath = request.getContextPath();
//		String uri = (String)request.getAttribute("javax.servlet.include.request_uri");
//			System.out.println(uri);
//		
//		if(uri == null || uri.trim().equals("")) {
//			uri = request.getRequestURI();
//			System.out.println(uri);
//		}
//		
//		int begin = 0;
//		if(!((contextPath==null) || ("".equals(contextPath)))) {
//			begin = contextPath.length(); //��ü ��û���� ���̸� ���� -> ������Ʈ
//			System.out.println(contextPath);
//		}
//		System.out.println("begin : "+ begin);
//		
//		int end = 0;
//		if(uri.indexOf(";") != -1) { //��û uri�� ;�� ���� ���
//			end = uri.indexOf(";"); 
//			System.out.println("end : "+ end);
//		} else if(uri.indexOf("?") != -1) { //�䫊 uri�� ?�� ���� ��� -> �Ķ���͸� ���� ���ΰ�?
//			end = uri.indexOf("?");
//			System.out.println("end : "+ end);
//		} else {
//			end = uri.length();
//			System.out.println("end : "+ end);
//		}
//		
//		
//		String viewName = uri.substring(begin, end);
//			System.out.println("viewName : " + viewName );
//			
//		if(viewName.indexOf(".") != -1) {
//			viewName = viewName.substring(0, viewName.lastIndexOf("."));
//			// ���� ������ .�� ��ġ�� ���� ��, .�� ���ڿ��� ����
//		}
//		
//		if(viewName.lastIndexOf("/") != -1) {
//			System.out.println(viewName.lastIndexOf("/",1));
//			viewName = viewName.substring(viewName.lastIndexOf("/",1), viewName.length());
//			// ���� ������ /�� ��ġ�� ���� ��, / ���������� ���ڿ��� ����
//		}
//		
//		return viewName; //����� ���� �̸��� ��ȯ
//	}
//	
}
