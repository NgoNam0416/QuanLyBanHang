package spring.qlbh.QUANLYBANHANG.controller.Admin;

import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import spring.qlbh.QUANLYBANHANG.dao.KhuyenMaiDAO;
import spring.qlbh.QUANLYBANHANG.dao.LoaiHangDAO;
import spring.qlbh.QUANLYBANHANG.model.HangInfo;
import spring.qlbh.QUANLYBANHANG.model.KhuyenMaiInfo;
import spring.qlbh.QUANLYBANHANG.model.LoaiHangInfo;
@Transactional
@Controller(value = "QuanLyKMController")
@RequestMapping(value = "/admin/khuyenmai")
public class QuanLyKMController {
	@Autowired
	private KhuyenMaiDAO khuyenMaiDao;
	@RequestMapping("/show")
	public String loadKhuyenMai(Model model) {
		List<KhuyenMaiInfo> khuyenMai = khuyenMaiDao.loadKM();
		model.addAttribute("khuyenMai", khuyenMai);
		return "admin/QLKhuyenMai";
	}
	
	@RequestMapping("/them")
	public String themKM(Model model, HttpServletRequest request, @ModelAttribute("khuyenMaiInfo") KhuyenMaiInfo khuyenMaiInfo) {
		Random rand = new Random();
		int maKM = rand.nextInt(100);
		String tenKM = khuyenMaiInfo.getTenKM();
		int phanTram = khuyenMaiInfo.getPhanTram();
		
		KhuyenMaiInfo khuyenmai = new KhuyenMaiInfo(maKM, tenKM, phanTram);
		khuyenMaiDao.themKM(khuyenmai);
		return "redirect:/admin/khuyenmai/show";
	}
}
