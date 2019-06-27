package org.kh.saramout.companyinfo.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.kh.saramout.companyinfo.model.service.CompanyInfoService;
import org.kh.saramout.companyinfo.model.vo.CompanyInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CompanyInfoController {

	/*
	 * private static final Logger logger =
	 * LoggerFactory.getLogger(UploadController.class);
	 */

	// xml에 설정된 리소스 참조
	// bean의 id가 uploadPath인 태그를 참조
	@Resource(name = "uploadPath")
	String uploadPath;

	@Autowired
	private CompanyInfoService companyInfoService;

	@RequestMapping("companyProfile.do")
	public String companyProfile() {
		return "common/companyProfile";
	}

	@RequestMapping("employmentDetail.do")
	public String employmentDetail() {
		return "common/employmentDetail";
	}

	@RequestMapping("companyProfile2.do")
	public String companyProfile2() {
		return "common/companyProfile2";
	}

	@RequestMapping("uploadAjax.do")
	public String uploadAjax() {
		return "common/uploadAjax";
	}

	/*
	 * @RequestMapping(value="cinsert.do", method=RequestMethod.POST) public String
	 * insertCompanyInfo(CompanyInfo companyInfo,
	 * 
	 * @RequestParam(name="image", required=false) MultipartFile file,
	 * HttpServletRequest request, Model model) throws Exception {
	 * System.out.println("companyInfo : " + companyInfo);
	 * System.out.println("프로필사진 : " + file);
	 * 
	 * logger.info("파일이름 :" + file.getOriginalFilename()); logger.info("파일크기 : " +
	 * file.getSize()); logger.info("컨텐트 타입 : " + file.getContentType());
	 * 
	 * String savedName = file.getOriginalFilename();
	 * companyInfo.setImage(savedName);
	 * 
	 * //폴더에 전송온 파일 저장 처리 String savePath = request.getSession().getServletContext()
	 * .getRealPath("resources/files"); String rename = uploadFile(savedName);
	 * companyInfo.setRenameimage(rename);
	 * companyInfoService.insertCompanyInfo(companyInfo);
	 * 
	 * 
	 * 
	 * 
	 * try { if(file != null) { file.transferTo(new File(savePath + "\\" +
	 * file.getOriginalFilename())); } } catch (Exception e) { e.printStackTrace();
	 * }
	 * 
	 * if(companyInfoService.insertCompanyInfo(companyInfo) > 0) return "home"; else
	 * { model.addAttribute("message", "회원 가입 실패!"); return "common/error"; } }
	 */
	/*
	 * private String uploadFile(String originalName) throws Exception { // uuid
	 * 생성(Universal Unique IDentifier, 범용 고유 식별자) UUID uuid = UUID.randomUUID(); //
	 * 랜덤생성+파일이름 저장 String savedName2 = uuid.toString() + "_" + originalName; File
	 * target = new File(uploadPath, savedName2); // 임시디렉토리에 저장된 업로드된 파일을 지정된 디렉토리로
	 * 복사 // FileCopyUtils.copy(바이트배열, 파일객체)
	 * 
	 * return savedName2; }
	 */

	/*
	 * int result = companyInfoService.insertCompanyInfo(companyInfo); if(result >
	 * 0) { return "redirect:employmentDetail.do?bid=" + companyInfo.getBid();
	 * return "common/employmentDetail"; }else { model.addAttribute("message",
	 * "회원정보 수정 실패!"); return "common/error"; } }
	 */

	@RequestMapping("cinfo.do")
	public ModelAndView selectCompanyInfo(ModelAndView mv,
			/* HttpServletRequest request */
			@RequestParam(name = "bid") String bid) {
		System.out.println("company");
		CompanyInfo companyInfo = companyInfoService.selectCompanyInfo(bid);
System.out.println("company:"+ companyInfo);
		mv.addObject("companyInfo", companyInfo);
		mv.setViewName("common/contact");

		return mv;
	}
	


	@RequestMapping("cupview.do")
	public ModelAndView updateViewCompanyInfo(ModelAndView mv, @RequestParam(name = "bid") String bid) {

		CompanyInfo companyInfo = companyInfoService.selectCompanyInfo(bid);

		if (companyInfo != null) {
			mv.addObject("companyInfo", companyInfo);
			mv.setViewName("common/companyProfile2");
		} else {
			mv.addObject("message", "수정할 회원정보 조회 실패!");
			mv.setViewName("common/error");
		}

		return mv;
	}

	/*
	 * @RequestMapping(value = "cupdate.do", method = RequestMethod.POST) public
	 * String updateCompanyInfo(CompanyInfo companyInfo, Model model) { int result =
	 * companyInfoService.updateCompanyInfo(companyInfo); if (result > 0) { return
	 * "redirect:companyProfile2.do?bid=" + companyInfo.getBid(); } else {
	 * model.addAttribute("message", "회원정보 수정 실패!"); return "common/error"; } }
	 */

	@RequestMapping(value = "cupdate.do", method = RequestMethod.POST)
	public ModelAndView updateCompanyInfo(HttpServletRequest request, ModelAndView mav) throws IOException, Exception {
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
		
		int result = companyInfoService.updateCompanyInfo(companyInfo);
		System.out.println(result);
		mav.setViewName("common/companyProfile2");
		return mav;
	}
	
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

	@RequestMapping("aa.do")
	public ModelAndView allCompanyInfoList(ModelAndView mv, CompanyInfo companyInfo) {
		ArrayList<CompanyInfo> allCompanyInfoList = companyInfoService.selectAllList(companyInfo);
		System.out.println(mv);
		System.out.println(companyInfo);
		System.out.println(allCompanyInfoList);
		mv.addObject("allCompanyInfoList", allCompanyInfoList);
		mv.setViewName("common/aa");
		return mv;
	}
}
