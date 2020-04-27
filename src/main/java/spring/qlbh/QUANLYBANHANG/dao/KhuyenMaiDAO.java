package spring.qlbh.QUANLYBANHANG.dao;

import java.util.List;

import spring.qlbh.QUANLYBANHANG.model.KhuyenMaiInfo;

public interface KhuyenMaiDAO {

	public List<KhuyenMaiInfo> loadKM();

	public void themKM(KhuyenMaiInfo khuyenmai);
	
}
