package spring.qlbh.QUANLYBANHANG.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.multipart.support.ByteArrayMultipartFileEditor;

import spring.qlbh.QUANLYBANHANG.dao.DonHangDAO;
import spring.qlbh.QUANLYBANHANG.dao.DongDonHangDAO;
import spring.qlbh.QUANLYBANHANG.dao.HangDAO;
import spring.qlbh.QUANLYBANHANG.dao.LoaiHangDAO;
import spring.qlbh.QUANLYBANHANG.dao.NguoiDungDAO;
import spring.qlbh.QUANLYBANHANG.model.DonHangInfo;
import spring.qlbh.QUANLYBANHANG.model.DongDonHangInfo;
import spring.qlbh.QUANLYBANHANG.model.GioHangInfo;
import spring.qlbh.QUANLYBANHANG.model.HangInfo;
import spring.qlbh.QUANLYBANHANG.model.HangKhuyenMaiInfo;
import spring.qlbh.QUANLYBANHANG.model.LoaiHangInfo;
import spring.qlbh.QUANLYBANHANG.model.NguoiDungInfo;

@Controller
public class HomeController {
	@Autowired
	private HangDAO hangDAO;
	@Autowired
	private LoaiHangDAO loaiHangDAO;
	@Autowired
	private NguoiDungDAO nguoiDungDAO;
	@Autowired
	private DonHangDAO donHangDAO;
	@Autowired
	private DongDonHangDAO dongDonHangDAO;
	private static Calendar cal;

	// trang chủ
	@RequestMapping("/")
	public String indexPage(Model model) {
		// load hang
		List<HangKhuyenMaiInfo> hang = hangDAO.loadHangKM();
		// load hàng theo loai
		List<LoaiHangInfo> loaiHang = loaiHangDAO.loadMenu();
		for (int i = 0; i < loaiHang.size(); i++) {
			String ten = "Loai" + loaiHang.get(i).getMaLoai();
			model.addAttribute(ten, hangDAO.loadHangTheoLoai(loaiHang.get(i).getMaLoai()));

		}
		model.addAttribute("hang", hang);
		model.addAttribute("loaiHang", loaiHang);
		return "Index";
	}

	@RequestMapping("/chitiet")
	public String chiTietHang(Model model, HttpServletRequest request) {
		int maHang = Integer.parseInt(request.getParameter("id"));
		HangKhuyenMaiInfo hang = hangDAO.loadHangKMTheoId(maHang);
		model.addAttribute("hang_chitiet", hang);
		return "ChiTietHang";
	}

	@RequestMapping("/cart")
	public String indexCart() {
		return "cart";
	}

	// Mua hàng
	@RequestMapping(value = "/buy/{id}", method = RequestMethod.GET)
	public String buy(@PathVariable("id") int id, HttpSession session) {
		if (session.getAttribute("cart") == null) {
			// Tạo giỏ hàng
			List<GioHangInfo> cart = new ArrayList<GioHangInfo>();
			cart.add(new GioHangInfo(hangDAO.loadHangKMTheoId(id), 1));
			session.setAttribute("cart", cart);
		} else {
			List<GioHangInfo> cart = (List<GioHangInfo>) session.getAttribute("cart");
			int index = this.exists(id, cart);
			if (index == -1) {
				// thêm hàng không có trong giỏ
				cart.add(new GioHangInfo(hangDAO.loadHangKMTheoId(id), 1));
			} else {
				// thay đổi số lượng trong giỏ
				int quantity = cart.get(index).getSoLuong();
				if (quantity < 10) {
					quantity += 1;
				}
				cart.get(index).setSoLuong(quantity);
			}
			session.setAttribute("cart", cart);
		}
		return "redirect:/cart";
	}

	// giảm số luongj trong giỏ
	@RequestMapping(value = "/minus/{id}", method = RequestMethod.GET)
	public String minus(@PathVariable("id") int id, HttpSession session) {
		List<GioHangInfo> cart = (List<GioHangInfo>) session.getAttribute("cart");
		int index = this.exists(id, cart);
		if (cart.get(index).getSoLuong() > 1) {
			int quantity = cart.get(index).getSoLuong() - 1;
			cart.get(index).setSoLuong(quantity);
		}
		session.setAttribute("cart", cart);
		return "redirect:/cart";
	}

	// xóa hàng trong giỏ
	@RequestMapping(value = "/remove/{id}", method = RequestMethod.GET)
	public String remove(@PathVariable("id") int id, HttpSession session) {
		List<GioHangInfo> cart = (List<GioHangInfo>) session.getAttribute("cart");
		int index = this.exists(id, cart);
		cart.remove(index);
		session.setAttribute("cart", cart);
		return "redirect:/cart";
	}

	// trang thanh toán
	@RequestMapping("/thanhtoan")
	public String thanhToan(Model model) {
		return "ThanhToan";
	}

	// trang tim kiếm
	@RequestMapping(value = "/timkiem", method = RequestMethod.GET)
	public String timKiem(Model model, HttpServletRequest request, HttpSession session) {
		String tukhoa = request.getParameter("tukhoa");
		List<HangInfo> tkh = hangDAO.timKiemHangTheoTen(tukhoa);
		model.addAttribute("tkh", tkh);
		return "TimKiem";
	}

	// hóa đơn
	@RequestMapping(value = "/thanhtoan/hoantat/hoadon")
	public String hoadon() {
		return "HoaDon";
	}

	// trang thanh toán hoàn tất
	@RequestMapping(value = "/thanhtoan/hoantat", method = RequestMethod.POST)
	public String hoanTat(Model model, HttpServletRequest request, HttpSession session) {
		// thêm don hang
		int maNguoiDung = 1;

		int maDonHang = maRamdom();
		System.out.println(maDonHang);
		List<GioHangInfo> gH = (List<GioHangInfo>) session.getAttribute("cart");
		float tongTien = 0;
		for (GioHangInfo hg : gH) {
			tongTien = tongTien + (hg.getSoLuong() * (hg.getHangKM().getDonGia()-hg.getHangKM().getDonGia()*hg.getHangKM().getPhanTram()/100));
		}
		if (session.getAttribute("checkUser") != null) {
			NguoiDungInfo nguoiDung = (NguoiDungInfo) session.getAttribute("checkUser");
			maNguoiDung = nguoiDung.getMaND();
		}
		String ngayDatHang = getToday();
		String tenNguoiNhan = request.getParameter("tennguoinhan");
		String email = request.getParameter("email");
		String tinh = request.getParameter("tinhthanhpho");
		String huyen = request.getParameter("quanhuyen");
		String xa = request.getParameter("phuongxa");
		String diaChiNhan = request.getParameter("diachinhan") + "-" + xa + "-" + huyen + "-" + tinh;
		String sDT = request.getParameter("sdt");
		String ghiChu = request.getParameter("ghichu");
		int trangThai = 0;
		DonHangInfo donhang = new DonHangInfo(maDonHang, ngayDatHang, tongTien, tenNguoiNhan, email, diaChiNhan, sDT,
				ghiChu, trangThai, maNguoiDung);

		donHangDAO.insertDH(donhang);
		for (GioHangInfo hg1 : gH) {
			int maDongDonHang = maRamdom();
			DongDonHangInfo dongdonhang = new DongDonHangInfo(maDongDonHang, hg1.getSoLuong(),
					hg1.getHangKM().getMaHang(), maDonHang);
			dongDonHangDAO.insertDH(dongdonhang);
			HangInfo hang = hangDAO.loadHangTheoId(hg1.getHangKM().getMaHang());
			HangInfo hangTT = new HangInfo(hang.getMaHang(), hang.getTenHang(), hang.getImageLink(),
					hang.getNgayNhapHang(), hang.getDonGia(), hang.getMaLoai(), hang.getSoLuong() - hg1.getSoLuong(),
					hang.getDonVi(), hang.getNoiSX(), hang.gettTThem(), hang.getTrangThai());
			hangDAO.uploadHang(hangTT);
		}
		session.removeAttribute("cart");
		return "redirect:/thanhtoan/hoantat/hoadon";
	}

	private int maRamdom() {
		Random rand = new Random();

		return rand.nextInt(1000);
	}

	private String getToday() {
		cal = Calendar.getInstance();
		return cal.get(Calendar.HOUR_OF_DAY) + ":" + cal.get(Calendar.MINUTE) + " " + cal.get(Calendar.DAY_OF_MONTH)
				+ "/" + (cal.get(Calendar.MONTH) + 1) + "/" + cal.get(Calendar.YEAR);
	}

	private int exists(int id, List<GioHangInfo> cart) {
		for (int i = 0; i < cart.size(); i++) {
			if (cart.get(i).getHangKM().getMaHang() == id) {
				return i;
			}
		}
		return -1;
	}
	//login
			@RequestMapping(value = "/login", method = RequestMethod.POST)
			public String loginPage(Model model, @RequestParam String userName,
					@RequestParam String passWord, HttpSession session) {
				String request = "";
				NguoiDungInfo us= nguoiDungDAO.checkLogin(userName,passWord);
				if(us !=null) {
					String loai=us.getLoai();
					if(loai.equals("0")) {
						session.setAttribute("checkUser", us);
						request = "redirect:/admin/hang";	
					} else {
						session.setAttribute("checkUser",us);
						request = "redirect:/";
					}
				}
				else {
					session.setAttribute("loginF","ten sai");
					request="redirect:/";
				}
				session.removeAttribute("cart");
				return request;
			}
		@RequestMapping("/dangky")
		public String DangKyPage(Model model) {
			NguoiDungInfo nguoiDungInfo=new NguoiDungInfo();
			model.addAttribute("nguoiDungInfo", nguoiDungInfo);
			return "DangKy";
		}
		@RequestMapping(value ="/dangky/thanhcong", method = RequestMethod.POST)
		public String DangKy(Model model, HttpServletRequest request, @ModelAttribute("nguoiDungInfo") NguoiDungInfo nguoiDungInfo,
				HttpSession session) {
			String requestpage = "";
			Random rand = new Random();
			int maND = rand.nextInt(1000);
			String tenDN = nguoiDungInfo.getTenDN();
			String matKhau= nguoiDungInfo.getMatKhau();
			String hoTen = nguoiDungInfo.getHoTen();
			int sDT =nguoiDungInfo.getsDT();	
			String diaChi= nguoiDungInfo.getDiaChi();
			String Email = nguoiDungInfo.getEmail();
			String loai = "1";
			CommonsMultipartFile fileDatas = nguoiDungInfo.getAnhuser();
			String imageLink = fileDatas.getOriginalFilename();		
			NguoiDungInfo nd = new NguoiDungInfo(maND, tenDN, matKhau,hoTen, imageLink, diaChi, sDT,
					Email, loai);
			if(nguoiDungDAO.checkTrungTenDN(tenDN)==null) {
			nguoiDungDAO.insertNguoiDung(nd);
				doUpload(request, nguoiDungInfo);
			}else {
				request.setAttribute("thongbao", "Mã Trùng");
				requestpage = "redirect:/dangky";
			}
			return "redirect:/";
		}
	//upload anh
		private void doUpload(HttpServletRequest request, //
				NguoiDungInfo nguoiDungInfo) {
			String uploadRootPath = request.getServletContext().getRealPath("/") + "template/client/img";
			System.out.println("uploadRootPath=" + uploadRootPath);
			File uploadRootDir = new File(uploadRootPath);
			if (!uploadRootDir.exists()) {
				uploadRootDir.mkdirs();
			}
			CommonsMultipartFile fileDatas = nguoiDungInfo.getAnhuser();
			List<File> uploadedFiles = new ArrayList<File>();
			String name = fileDatas.getOriginalFilename();
			System.out.println("Client File Name = " + name);
			if (name != null && name.length() > 0) {
				try {
					File serverFile = new File(uploadRootDir.getAbsolutePath() + File.separator + name);
					BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(serverFile));
					stream.write(fileDatas.getBytes());
					stream.close();
					uploadedFiles.add(serverFile);
					System.out.println("Write file: " + serverFile);
				} catch (Exception e) {
					System.out.println("Error Write file: " + name);
				}
			}

		}
		@InitBinder
		public void initBinder(WebDataBinder dataBinder) {
			Object target = dataBinder.getTarget();
			if (target == null) {
				return;
			}
			System.out.println("Target=" + target);

			if (target.getClass() == HangInfo.class) {

				// Ä�Äƒng kÃ½ Ä‘á»ƒ chuyá»ƒn Ä‘á»•i giá»¯a cÃ¡c Ä‘á»‘i tÆ°á»£ng multipart thÃ nh byte[]
				dataBinder.registerCustomEditor(byte[].class, new ByteArrayMultipartFileEditor());
			}
		}
}
