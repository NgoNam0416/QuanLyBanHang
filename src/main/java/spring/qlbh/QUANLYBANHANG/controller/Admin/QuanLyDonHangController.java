package spring.qlbh.QUANLYBANHANG.controller.Admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import spring.qlbh.QUANLYBANHANG.dao.DonHangDAO;
import spring.qlbh.QUANLYBANHANG.dao.DongDonHangDAO;
import spring.qlbh.QUANLYBANHANG.entity.DongDonHang;
import spring.qlbh.QUANLYBANHANG.model.DanhSachHang;
import spring.qlbh.QUANLYBANHANG.model.DonHangInfo;

@Controller(value = "QuanLyDonHangController")
@RequestMapping(value = "/admin/donhang")
public class QuanLyDonHangController {
	@Autowired
	private DonHangDAO donHangDAO;
	@Autowired
	private DongDonHangDAO ddHang;
	@RequestMapping("/xulydonhang")
	public String xuLyDonHang(Model model) {
		List<DonHangInfo> donhang = donHangDAO.loadDonHang(0);
		model.addAttribute("donHang", donhang);	
		return "admin/XuLyDonHang";
	}
	@RequestMapping("/chothanhtoan")
	public String choThanhToan(Model model) {
		List<DonHangInfo> donhang = donHangDAO.loadDonHang(1);
		model.addAttribute("donHang", donhang);	
		return "admin/ChoThanhToan";
	}
	@RequestMapping("/dahoanthanh")
	public String daThanhToan(Model model) {
		List<DonHangInfo> donhang = donHangDAO.loadDonHang(2);
		model.addAttribute("donHang", donhang);	
		return "admin/DHDaHoanThanh";
	}
	@RequestMapping("/dahuy")
	public String daHuy(Model model) {
		List<DonHangInfo> donhang = donHangDAO.loadDonHang(3);
		model.addAttribute("donHang", donhang);	
		return "admin/DHDaHuy";
	}
	@RequestMapping(value = "/xemdonhang")
	public String xemDonHang(Model model,HttpServletRequest request) {
		int maDH=Integer.parseInt(request.getParameter("maDH"));
		List<DanhSachHang> dsdonhang = ddHang.XemDonHang(maDH);
		model.addAttribute("dsdonHang", dsdonhang);	
		return "admin/XemDonHang";
		
	}
	@RequestMapping(value = "/xulydonhang/chapthuan")
	public String xulychapthuan(Model model,HttpServletRequest request) {
		int maDH=Integer.parseInt(request.getParameter("maDH"));
		DonHangInfo donhang= donHangDAO.loadDonHangTheoID(maDH);
		donHangDAO.updateTrangThaiDH(donhang, 1);
		return "redirect:/admin/donhang/xulydonhang";
	}
	@RequestMapping(value = "/xulydonhang/huy")
	public String xuLyHuy(Model model,HttpServletRequest request) {
		int maDH=Integer.parseInt(request.getParameter("maDH"));
		DonHangInfo donhang= donHangDAO.loadDonHangTheoID(maDH);
		donHangDAO.updateTrangThaiDH(donhang, 3);
		return "redirect:/admin/donhang/xulydonhang";
	}
	@RequestMapping(value = "/chothanhtoan/thanhtoan")
	public String xuLyThanhToan(Model model,HttpServletRequest request) {
		int maDH=Integer.parseInt(request.getParameter("maDH"));
		DonHangInfo donhang= donHangDAO.loadDonHangTheoID(maDH);
		donHangDAO.updateTrangThaiDH(donhang, 2);
		return "redirect:/admin/donhang/chothanhtoan";
	}
	@RequestMapping(value = "/chothanhtoan/trave")
	public String xuLyTraHang(Model model,HttpServletRequest request) {
		int maDH=Integer.parseInt(request.getParameter("maDH"));
		DonHangInfo donhang= donHangDAO.loadDonHangTheoID(maDH);
		donHangDAO.updateTrangThaiDH(donhang, 3);
		return "redirect:/admin/donhang/chothanhtoan";
	}
}
