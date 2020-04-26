package spring.qlbh.QUANLYBANHANG.dao;

import java.util.List;

import javax.transaction.Transactional;

import spring.qlbh.QUANLYBANHANG.entity.NguoiDung;
import spring.qlbh.QUANLYBANHANG.model.NguoiDungInfo;

@Transactional
public interface NguoiDungDAO {
	public List<NguoiDungInfo> loadNguoiDung();
	public NguoiDung findNguoiDung (int id);
	public void xoaNguoiDung(int id);
	public NguoiDungInfo checkLogin(String userName,String passWord);
	public void insertNguoiDung(NguoiDungInfo userInfo);
}
