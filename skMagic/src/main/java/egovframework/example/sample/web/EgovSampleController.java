/*
 * Copyright 2008-2009 the original author or authors.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package egovframework.example.sample.web;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.json.simple.JSONObject;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springmodules.validation.commons.DefaultBeanValidator;

import egovframework.example.sample.service.EgovSampleService;
import egovframework.example.sample.service.SampleVO;
import egovframework.rte.fdl.property.EgovPropertyService;

/**
 * @Class Name : EgovSampleController.java
 * @Description : EgovSample Controller Class
 * @Modification Information
 * @
 * @  수정일      수정자              수정내용
 * @ ---------   ---------   -------------------------------
 * @ 2009.03.16           최초생성
 *
 * @author 개발프레임웍크 실행환경 개발팀
 * @since 2009. 03.16
 * @version 1.0
 * @see
 *
 *  Copyright (C) by MOPAS All right reserved.
 */

@Controller
public class EgovSampleController {

	/** EgovSampleService */
	@Resource(name = "sampleService")
	private EgovSampleService service;

	/** EgovPropertyService */
	@Resource(name = "propertiesService")
	protected EgovPropertyService propertiesService;

	/** Validator */
	@Resource(name = "beanValidator")
	protected DefaultBeanValidator beanValidator;

	/**
	 * 글 목록을 조회한다. (pageing)
	 * @param searchVO - 조회할 정보가 담긴 SampleDefaultVO
	 * @param model
	 * @return "egovSampleList"
	 * @exception Exception
	 */
//	@RequestMapping(value = "/egovSampleList.do")
//	public String selectSampleList(@ModelAttribute SampleVO vo, ModelMap model) throws Exception {
//
//		
//		model.addAttribute("list",service.selectSampleList(vo));
//		return "sample/list";
//	}
//	@RequestMapping(value="/add.do",method = RequestMethod.GET)
//	public  String add(@ModelAttribute SampleVO vo,ModelMap model)throws Exception{
//		model.addAttribute("list",service.selectSampleList(vo));
//		return "sample/add";
//	}
//	@SuppressWarnings("unchecked")
//	@RequestMapping(value="/addAjax.do",method = RequestMethod.POST)
//	public @ResponseBody JSONObject addAjax(SampleVO vo) {
//		
//		JSONObject json = new JSONObject();
//		Map<String,Object> resultMap = new HashMap<String, Object>();
//		int resultCnt = 0;
//		
//		try {
//			resultCnt = service.insertSampleList(vo);
//			System.out.println(resultCnt);
//			if(resultCnt > 0) {
//				resultMap.put("result","success");
//			}else {
//				resultMap.put("result","error");				
//			}
//		} catch(DataAccessException e ) {
//				e.printStackTrace();
//				resultMap.put("result", "error");
//		}catch (Exception e){
//			e.printStackTrace();
//			resultMap.put("result", "error");
//			resultMap.put("message", e.getCause().getMessage());
//		}
//		json.putAll(resultMap);
//		return json;
//	}
	
	
	
	// Template main
	@RequestMapping(value = "/main.do")
	public String showMain() {
		return "main";
	}
	
	// Template jsGrid
	@RequestMapping(value = "/jsGrid.do")
	public String showGrid(){
		return "jsGrid";
	}
	
	// Template login
	@RequestMapping(value = "/login.do")
	public String showLogin(){
		return "login/member/login";
	}
	
	// Template login
	@RequestMapping(value = "/forgotPasswd.do")
	public String showForgotPasswd(){
		return "login/member/forgot-password";
	}
}
