package spring.qlbh.QUANLYBANHANG.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;

import spring.qlbh.QUANLYBANHANG.dao.DonHangDAO;
import spring.qlbh.QUANLYBANHANG.entity.DonHang;
import spring.qlbh.QUANLYBANHANG.entity.Hang;
import spring.qlbh.QUANLYBANHANG.model.DonHangInfo;
import spring.qlbh.QUANLYBANHANG.model.HangInfo;
public class DonHangDAOImpl implements DonHangDAO{
	@Autowired
	private SessionFactory sessionfactory;
	public void insertDH(DonHangInfo donhang) {
		Session session = sessionfactory.getCurrentSession();
		DonHang donHangEntity = new DonHang();
		donHangEntity.setMaDH(donhang.getMaDH());
		donHangEntity.setNgayDatHang(donhang.getNgayDatHang());
		donHangEntity.setTongTien(donhang.getTongTien());
		donHangEntity.setTenNguoiNhan(donhang.getTenNguoiNhan());
		donHangEntity.setEmail(donhang.getEmail());
		donHangEntity.setDiaChiNhanHang(donhang.getDiaChiNhanHang());
		donHangEntity.setsDT(donhang.getsDT());
		donHangEntity.setGhiChu(donhang.getGhiChu());
		donHangEntity.setTrangThai(donhang.getTrangThai());
		donHangEntity.setMaND(donhang.getMaND());

		session.persist(donHangEntity);
	}
	public void updateTrangThaiDH(DonHangInfo donhang,int trangThai) {
		Session session = sessionfactory.getCurrentSession();
		DonHang donHangEntity = new DonHang();
		donHangEntity.setMaDH(donhang.getMaDH());
		donHangEntity.setNgayDatHang(donhang.getNgayDatHang());
		donHangEntity.setTongTien(donhang.getTongTien());
		donHangEntity.setTenNguoiNhan(donhang.getTenNguoiNhan());
		donHangEntity.setEmail(donhang.getEmail());
		donHangEntity.setDiaChiNhanHang(donhang.getDiaChiNhanHang());
		donHangEntity.setsDT(donhang.getsDT());
		donHangEntity.setGhiChu(donhang.getGhiChu());
		donHangEntity.setTrangThai(trangThai);
		donHangEntity.setMaND(donhang.getMaND());
		session.update(donHangEntity);
	}
	@Override
	public DonHangInfo loadDonHangDT(int id,int trangThai) {
		Session session = sessionfactory.getCurrentSession();
		String sql = " select new  " + DonHangInfo.class.getName()
				+ " ( dh.maDH, dh.ngayDatHang, dh.tongTien, dh.tenNguoiNhan, dh.email, dh.diaChiNhanHang, dh.sDT, dh.ghiChu, dh.trangThai, dh.id) "
				+ " from " + DonHang.class.getName() + " dh " + " where dh.trangThai=:trangThai and dh.id=:id";
		Query query = session.createQuery(sql);
		query.setParameter("trangThai", trangThai);
		query.setParameter("id", id);
		return (DonHangInfo) query.uniqueResult();
	}
	@Override
	public List<DonHangInfo> loadDonHang(int trangThai) {
		Session session = sessionfactory.getCurrentSession();
		String sql = " select new  " + DonHangInfo.class.getName()
				+ " (dh.maDH,dh.ngayDatHang,dh.tongTien,dh.tenNguoiNhan,dh.email,dh.diaChiNhanHang,dh.sDT,dh.ghiChu,dh.trangThai,dh.id)"
				+ " from " + DonHang.class.getName() + " dh " + " where dh.trangThai=: trangThai" ; 
		Query query = session.createQuery(sql);
		query.setParameter("trangThai", trangThai);
		return query.list();
	}
	@Override
	public DonHangInfo loadDonHangTheoID(int maDH) {
		Session session = sessionfactory.getCurrentSession();
		String sql = " select new  " + DonHangInfo.class.getName()
				+ " (dh.maDH, dh.ngayDatHang, dh.tongTien, dh.tenNguoiNhan, dh.email, dh.diaChiNhanHang, dh.sDT, dh.ghiChu, dh.trangThai, dh.id) "
				+ " from " + DonHang.class.getName() + " dh " + " where dh.maDH=: maDH ";
		Query query = session.createQuery(sql);
		query.setParameter("maDH", maDH);
		return (DonHangInfo) query.uniqueResult();
	}
}
