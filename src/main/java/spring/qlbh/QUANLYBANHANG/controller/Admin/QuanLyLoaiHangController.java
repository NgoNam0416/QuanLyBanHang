package spring.qlbh.QUANLYBANHANG.controller.Admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import spring.qlbh.QUANLYBANHANG.dao.HangDAO;
import spring.qlbh.QUANLYBANHANG.dao.LoaiHangDAO;
import spring.qlbh.QUANLYBANHANG.model.HangInfo;
import spring.qlbh.QUANLYBANHANG.model.LoaiHangInfo;

@Controller(value = "QuanLyLoaiHangController")
@RequestMapping(value = "/admin")
public class QuanLyLoaiHangController {
	@Autowired
	private LoaiHangDAO loaiHangDAO;
	
	@RequestMapping("/loaihang")
	public String loadHang(Model model) {
		List<LoaiHangInfo> loaihang = loaiHangDAO.loadMenu();
		model.addAttribute("loadLoaiHang", loaihang);
		return "admin/QLLoaiHang";
	}

}
