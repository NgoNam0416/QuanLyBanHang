package spring.qlbh.QUANLYBANHANG.dao;

import java.util.List;

import javax.transaction.Transactional;

import spring.qlbh.QUANLYBANHANG.model.LoaiHangInfo;

@Transactional
public interface LoaiHangDAO {
	public List<LoaiHangInfo> loadMenu();
}
