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

import spring.qlbh.QUANLYBANHANG.dao.KhuyenMaiDAO;
import spring.qlbh.QUANLYBANHANG.dao.LoaiHangDAO;
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
	public String loadLoaiHang(Model model) {
		List<LoaiHangInfo> loaihang = loaiHangDAO.loadMenu();
		model.addAttribute("loadLoaiHang", loaihang);
		return "admin/QLLoaiHang";
	}
	@RequestMapping(value = "/them")
	public String themLoaiHang(Model model) {
		
//		List<KhuyenMaiInfo> khuyenmai = khuyenMaiDao.loadKM();
		LoaiHangInfo loaiHangInfo= new LoaiHangInfo();
		model.addAttribute("loaiHangInfo", loaiHangInfo);
//		model.addAttribute("khuyenMai", khuyenMai);
		return "admin/ThemLoaiHang";
	}
	
}
