package spring.qlbh.QUANLYBANHANG.dao;
import java.util.List;
import javax.transaction.Transactional;


import spring.qlbh.QUANLYBANHANG.model.DonHangInfo;

@Transactional
public interface DonHangDAO {
	public void insertDH(DonHangInfo donhang);
	public void updateTrangThaiDH(DonHangInfo donhang,int trangThai);
	public DonHangInfo loadDonHangDT(int id,int trangThai);
	public List<DonHangInfo> loadDonHang(int trangThai);
	public DonHangInfo loadDonHangTheoID(int maDH);
}
