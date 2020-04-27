package spring.qlbh.QUANLYBANHANG.controller.Admin;

import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import spring.qlbh.QUANLYBANHANG.dao.HangDAO;
import spring.qlbh.QUANLYBANHANG.dao.KhuyenMaiDAO;
import spring.qlbh.QUANLYBANHANG.dao.LoaiHangDAO;
import spring.qlbh.QUANLYBANHANG.model.HangInfo;
import spring.qlbh.QUANLYBANHANG.model.KhuyenMaiInfo;
import spring.qlbh.QUANLYBANHANG.model.LoaiHangInfo;

@Controller(value = "QuanLyLoaiHangController")
@RequestMapping(value = "/admin/loaihang")
public class QuanLyLoaiHangController {
	@Autowired
	private LoaiHangDAO loaiHangDAO;
	@Autowired
	private KhuyenMaiDAO khuyenMaiDao;
	@RequestMapping("/show")
	public String loadHang(Model model) {
		List<LoaiHangInfo> loaihang = loaiHangDAO.loadMenu();
		model.addAttribute("loadLoaiHang", loaihang);
		return "admin/QLLoaiHang";
	}
	@RequestMapping(value = "/them")
	public String themLoai(Model model) {
	
		 List<KhuyenMaiInfo> khuyenMai = khuyenMaiDao.loadKM();
		 model.addAttribute("khuyenMai", khuyenMai);
		 
		return "admin/ThemLoaiHang";
	}
	@RequestMapping(value = "/them/hoantat", method = RequestMethod.POST)
	public String themLoaiHang(Model model, HttpServletRequest request, @ModelAttribute("themLoaiInfo") LoaiHangInfo themLoaiInfo) {

		
		Random rand = new Random();

		int maLoai = rand.nextInt(100);
		String tenLoai = themLoaiInfo.getTenLoai();
		int maKM= themLoaiInfo.getMaKM();
		
		LoaiHangInfo loaihang = new LoaiHangInfo(maLoai, tenLoai,maKM);
		loaiHangDAO.themLoaiHang(loaihang);
		
		return "redirect:/admin/loaihang";
	}
	@RequestMapping("/loaihang/{maLoai}")
	public String suaHang(@PathVariable("maLoai") int maLoai, Model model, HttpServletRequest request,
			@ModelAttribute("suaLoaiInfo") LoaiHangInfo suaLoaiInfo) {
		List<LoaiHangInfo> loai = loaiHangDAO.loadMenu();
		model.addAttribute("loai", loai);
		return "admin/SuaLoai";

	}
	@RequestMapping("loaihang/xoaloai")
	public String deleteHang(Model model, HttpServletRequest request, HttpSession session) {
		int maLoai = Integer.parseInt(request.getParameter("maLoai"));
		loaiHangDAO.xoaLoai(maLoai);
		return "redirect:/admin/hang";
	}
}
