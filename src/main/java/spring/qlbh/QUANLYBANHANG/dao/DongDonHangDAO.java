package spring.qlbh.QUANLYBANHANG.dao;


import java.util.List;

import javax.transaction.Transactional;

import spring.qlbh.QUANLYBANHANG.model.DanhSachHang;

import spring.qlbh.QUANLYBANHANG.model.DonHangInfo;
import spring.qlbh.QUANLYBANHANG.model.DongDonHangInfo;

@Transactional
public interface DongDonHangDAO {
	public void insertDH(DongDonHangInfo dongdonhang);
	public List<DanhSachHang> XemDonHang(int maDH);
}
