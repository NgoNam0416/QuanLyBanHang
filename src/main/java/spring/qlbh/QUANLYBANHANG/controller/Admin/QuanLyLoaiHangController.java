package spring.qlbh.QUANLYBANHANG.controller.Admin;

import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import spring.qlbh.QUANLYBANHANG.dao.KhuyenMaiDAO;
import spring.qlbh.QUANLYBANHANG.dao.LoaiHangDAO;
import spring.qlbh.QUANLYBANHANG.model.HangInfo;
import spring.qlbh.QUANLYBANHANG.model.KhuyenMaiInfo;
import spring.qlbh.QUANLYBANHANG.model.LoaiHangInfo;
@Transactional
@Controller(value = "QuanLyLoaiHangController")
@RequestMapping(value = "/admin/loaihang")
public class QuanLyLoaiHangController {
	@Autowired
	private LoaiHangDAO loaiHangDAO;
	@Autowired
	private KhuyenMaiDAO khuyenMaiDao;
	@RequestMapping("/show")
	public String loadLoaiHang(Model model) {
		List<LoaiHangInfo> loaihang = loaiHangDAO.loadMenu();
		model.addAttribute("loadLoaiHang", loaihang);
		return "admin/QLLoaiHang";
	}
	@RequestMapping(value = "/them")
	public String themLoaiHang(Model model) {
		
		List<KhuyenMaiInfo> khuyenMai = khuyenMaiDao.loadKM();
		LoaiHangInfo loaiHangInfo= new LoaiHangInfo();
		model.addAttribute("loaiHangInfo", loaiHangInfo);
		model.addAttribute("khuyenMai", khuyenMai);
		return "admin/ThemLoaiHang";
	}
	@RequestMapping(value = "/them/hoantat", method = RequestMethod.POST)
	public String addHang(Model model, HttpServletRequest request, @ModelAttribute("themLoaiInfo") LoaiHangInfo themLoaiInfo) {
		Random rand = new Random();
		int maLoai = rand.nextInt(1000);
		String tenLoai = "Lương thực";
		int maKM= 1;
		System.out.println(tenLoai);
		LoaiHangInfo loai = new LoaiHangInfo(maLoai,tenLoai, maKM);
		loaiHangDAO.themLoaiHang(loai);
			
		return "redirect:/admin/loaihang/show";
	}
	@RequestMapping("/xoaloai")
	public String xoaLoaiHang(Model model, HttpServletRequest request, HttpSession session) {
		int maLoai = Integer.parseInt(request.getParameter("maHang"));
		loaiHangDAO.xoaLoai(maLoai);
		return "redirect:/admin/loaihang/show";
	}
	@RequestMapping("/sualoaihang/{maLoai}")
	public String suaHang(@PathVariable("maLoai") int maLoai, Model model, HttpServletRequest request,
			@ModelAttribute("suaLoaiHangInfo") LoaiHangInfo suaLoaiHangInfo) {
		List<KhuyenMaiInfo> khuyenMai = khuyenMaiDao.loadKM();
		model.addAttribute("khuyenMai", khuyenMai);
		List<LoaiHangInfo> loaiID = loaiHangDAO.loadLoaiID(maLoai);
		model.addAttribute("loaiID", loaiID);
		return "admin/SuaLoaiHang";
	}
	@RequestMapping("/sualoaihang/hoanthanh/{maLoai}")
	public String hoanThanh(@PathVariable("maLoai") int maLoai, Model model, HttpServletRequest request,
			@ModelAttribute("suaLoaiHangInfo") LoaiHangInfo suaLoaiHangInfo) {
		String tenLoai = suaLoaiHangInfo.getTenLoai();
		int maKM = suaLoaiHangInfo.getMaKM();
		LoaiHangInfo suaLoai = new LoaiHangInfo(maLoai, tenLoai, maKM);		
		loaiHangDAO.suaLoai(suaLoai);
		
		return "redirect:/admin/hang";
	}
	
	
}
