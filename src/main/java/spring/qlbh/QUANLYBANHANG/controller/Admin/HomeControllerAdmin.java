
package spring.qlbh.QUANLYBANHANG.controller.Admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import spring.qlbh.QUANLYBANHANG.dao.DonHangDAO;
import spring.qlbh.QUANLYBANHANG.dao.HangDAO;
import spring.qlbh.QUANLYBANHANG.dao.LoaiHangDAO;
import spring.qlbh.QUANLYBANHANG.dao.UserDAO;
import spring.qlbh.QUANLYBANHANG.model.DonHangInfo;
import spring.qlbh.QUANLYBANHANG.model.HangInfo;

import spring.qlbh.QUANLYBANHANG.model.UserInfo;

@Controller(value = "HomeControllerAdmin")
@RequestMapping(value = "/admin")
public class HomeControllerAdmin {
	@Autowired
	private UserDAO userDao;
	@Autowired
	private HangDAO hangDAO;


	@RequestMapping("/user")
	public String userPage(Model model) {
		List<UserInfo> listUser = userDao.loadUser();
		model.addAttribute("listUser",listUser );
		return "admin/QLUser";
	}
	
	@RequestMapping("/hang")
	public String Hang(Model model) {
		List<HangInfo> hang = hangDAO.loadHang();
		model.addAttribute("loadHang", hang);	
		
		return "admin/Hang";
	}
	
}
