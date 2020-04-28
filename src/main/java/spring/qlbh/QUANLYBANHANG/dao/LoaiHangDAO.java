package spring.qlbh.QUANLYBANHANG.dao;

import java.util.List;

import javax.transaction.Transactional;

import spring.qlbh.QUANLYBANHANG.entity.LoaiHang;

import spring.qlbh.QUANLYBANHANG.model.LoaiHangInfo;

@Transactional
public interface LoaiHangDAO {
	public List<LoaiHangInfo> loadMenu();

	

	public void xoaLoai(int maLoai);

	LoaiHang findLoaiHang(int maLoai);
	public void themLoaiHang(LoaiHangInfo loaihang);



	public List<LoaiHangInfo> loadLoaiID(int maLoai);



	public void suaLoai(LoaiHangInfo suaLoai);

}
