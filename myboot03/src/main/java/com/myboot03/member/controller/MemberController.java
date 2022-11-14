package com.myboot03.member.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.myboot03.member.vo.MemberVO;

public interface MemberController {
	public ModelAndView listMembers(HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView addMember(@ModelAttribute("info") MemberVO member,
								  HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView removeMember(@RequestParam("id") String id,
								  HttpServletRequest request, HttpServletResponse response) throws Exception;
	
	public ModelAndView login(@ModelAttribute("member") MemberVO member, RedirectAttributes rAttr,
			HttpServletRequest request, HttpServletResponse response) throws Exception ;
	public ModelAndView modMemberInfo(@RequestParam("id") String id, HttpServletRequest request, HttpServletResponse response)
			throws Exception;
	public ModelAndView modMember(@ModelAttribute("info") MemberVO vo, HttpServletRequest request, HttpServletResponse response)
			throws Exception;
	public ModelAndView logout(HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView njtour(MemberVO member, HttpServletRequest request, HttpServletResponse response) throws Exception; 
	public ModelAndView detailPage(MemberVO member, HttpServletRequest request, HttpServletResponse response) throws Exception;
}