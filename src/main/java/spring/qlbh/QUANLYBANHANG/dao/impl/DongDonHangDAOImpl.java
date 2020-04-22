package spring.qlbh.QUANLYBANHANG.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;

import spring.qlbh.QUANLYBANHANG.dao.DongDonHangDAO;
import spring.qlbh.QUANLYBANHANG.entity.DonHang;
import spring.qlbh.QUANLYBANHANG.entity.DongDonHang;
import spring.qlbh.QUANLYBANHANG.entity.Hang;
import spring.qlbh.QUANLYBANHANG.model.DanhSachHang;

import spring.qlbh.QUANLYBANHANG.model.DongDonHangInfo;

public class DongDonHangDAOImpl implements DongDonHangDAO{
	@Autowired
	private SessionFactory sessionfactory;
	public void insertDH(DongDonHangInfo dongdonhang) {
		Session session = sessionfactory.getCurrentSession();
		DongDonHang dongDonHangEntity = new DongDonHang();
		dongDonHangEntity.setMaDDH(dongdonhang.getMaDDH());
		dongDonHangEntity.setSoLuong(dongdonhang.getSoLuong());
		dongDonHangEntity.setMaHang(dongdonhang.getMaHang());
		dongDonHangEntity.setMaDH(dongdonhang.getMaDH());
		

		session.persist(dongDonHangEntity);
	}
	@Override
	public List<DanhSachHang> XemDonHang(int maDH) {
		Session session = sessionfactory.getCurrentSession();
		String sql = " select new  " + DanhSachHang.class.getName()
				+ " (h.maHang,h.tenHang,h.donGia,h.imageLink, ddh.soLuong) " + " from " 
				+ DongDonHang.class.getName()
				+ " ddh, " + DonHang.class.getName() + " dh, " + Hang.class.getName() + " h "
				+ " where ddh.maDH=dh.maDH and ddh.maHang=h.maHang and dh.maDH=:maDH";
		Query query = session.createQuery(sql);
		query.setParameter("maDH", maDH);
		return query.list();
	}
}
