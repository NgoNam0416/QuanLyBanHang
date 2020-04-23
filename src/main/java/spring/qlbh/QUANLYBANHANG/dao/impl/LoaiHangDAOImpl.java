package spring.qlbh.QUANLYBANHANG.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;

import spring.qlbh.QUANLYBANHANG.dao.LoaiHangDAO;
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
	public List<HangInfo> loadHang() {
		// TODO Auto-generated method stub
		return null;
	}
	
}
