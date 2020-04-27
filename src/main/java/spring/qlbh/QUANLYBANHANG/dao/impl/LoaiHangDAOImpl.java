package spring.qlbh.QUANLYBANHANG.dao.impl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;

import spring.qlbh.QUANLYBANHANG.dao.LoaiHangDAO;
import spring.qlbh.QUANLYBANHANG.entity.Hang;
import spring.qlbh.QUANLYBANHANG.entity.LoaiHang;
import spring.qlbh.QUANLYBANHANG.model.HangInfo;
import spring.qlbh.QUANLYBANHANG.model.LoaiHangInfo;

public class LoaiHangDAOImpl implements LoaiHangDAO {
	@Autowired
	private SessionFactory sessionfactory;
	@Override
	public List<LoaiHangInfo> loadMenu() {
		Session session = sessionfactory.getCurrentSession();
		String sql = " select new  " + LoaiHangInfo.class.getName()
					+" ( lh.maLoai, lh.tenLoai,lh.maKM) " // cÃ¡c trÆ°á»�ng trong Ä‘á»‘i tÆ°á»£ng LoaiHangInfo
					+" from " + LoaiHang.class.getName() + " lh "; // select bÃ ng Hibernate thÃ¬ nÃ³ tráº£ vá»� 1 Ä‘á»‘i tÆ°á»£ng
		Query query = session.createQuery(sql);
		return query.list();
	}
	@Override
	public void themLoaiHang(LoaiHangInfo loaiHangInfo) {
		Session session = sessionfactory.getCurrentSession();
		LoaiHang loaientity = new LoaiHang();
		loaientity.setMaLoai(loaiHangInfo.getMaLoai());
		loaientity.setTenLoai(loaiHangInfo.getTenLoai());
		loaientity.setMaKM(loaiHangInfo.getMaKM());
		
		session.update(loaientity);

	}

	@Override 
	public void xoaLoai(int maLoai) {
		LoaiHang loai = this.findLoaiHang(maLoai);
		if (loai != null) {
			this.sessionfactory.getCurrentSession().delete(loai);
		}
	}
	@Override
	public LoaiHang findLoaiHang(int maLoai) {
		Session session = sessionfactory.getCurrentSession();
		Criteria crit = session.createCriteria(LoaiHang.class);
		crit.add(Restrictions.eq("maLoai", maLoai));
		return (LoaiHang) crit.uniqueResult();
	}

	
}
