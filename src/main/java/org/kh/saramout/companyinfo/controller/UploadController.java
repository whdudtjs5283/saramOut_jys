package org.kh.saramout.companyinfo.controller;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.kh.saramout.companyinfo.model.service.CompanyInfoService;
import org.kh.saramout.companyinfo.model.vo.CompanyInfo;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UploadController {

	private static final Logger logger = LoggerFactory.getLogger(UploadController.class);
	
	
	@Autowired
	private CompanyInfoService companyInfoService;
	
	
// xml에 설정된 리소스 참조
	// bean의 id가 uploadPath인 태그를 참조
	
	
	@Resource(name = "uploadPath")
	String uploadPath;

	// 업로드 흐름 : 업로드 버튼클릭 => 임시디렉토리에 업로드=> 지정된 디렉토리에 저장 => 파일정보가 file에 저장
	@RequestMapping(value = "/common/companyProfile", method = RequestMethod.GET)
	public void uplodaForm() {
		// upload/uploadForm.jsp(업로드 페이지)로 포워딩
	}

	@RequestMapping(value = "cinsert2.do", method = RequestMethod.POST)
	public ModelAndView uploadForm(HttpServletRequest request, ModelAndView mav) throws IOException, Exception {
		MultipartHttpServletRequest mrequest = (MultipartHttpServletRequest)request;
		MultipartFile multipartFile = mrequest.getFile(mrequest.getFileNames().next());
		String originalFileName = multipartFile.getOriginalFilename();
		System.out.println(originalFileName);
		String renameFileName = uploadFile(originalFileName, multipartFile.getBytes());
		System.out.println(renameFileName);
		
		CompanyInfo companyInfo = new CompanyInfo();
		companyInfo.setBid(mrequest.getParameter("bid"));
		companyInfo.setImage(originalFileName);
		companyInfo.setCompany_type(mrequest.getParameter("company_type"));
		companyInfo.setSales(Integer.parseInt(mrequest.getParameter("sales")));
		companyInfo.setRepresent(mrequest.getParameter("represent"));
		companyInfo.setEmployees(Integer.parseInt(mrequest.getParameter("employees")));
		companyInfo.setEstablish(mrequest.getParameter("establish"));
		companyInfo.setHomepage(mrequest.getParameter("homepage"));
		companyInfo.setRenameimage(renameFileName);
		System.out.println(companyInfo);
		
		int result = companyInfoService.insertCompanyInfo(companyInfo);
		System.out.println(result);
		mav.setViewName("redirect:employmentDetail.do?bid=" + companyInfo.getBid());
		/*return "redirect:employmentDetail.do?bid=" + companyInfo.getBid();*/
		return mav;
		
	}

	// 파일명 랜덤생성 메서드
	private String uploadFile(String originalName, byte[] fileData) throws Exception {
		// uuid 생성(Universal Unique IDentifier, 범용 고유 식별자)
		UUID uuid = UUID.randomUUID();
		// 랜덤생성+파일이름 저장
		String savedName = uuid.toString() + "_" + originalName;
		File target = new File(uploadPath, savedName);
		// 임시디렉토리에 저장된 업로드된 파일을 지정된 디렉토리로 복사
		// FileCopyUtils.copy(바이트배열, 파일객체)
		FileCopyUtils.copy(fileData, target);
		return savedName;

	}

}
