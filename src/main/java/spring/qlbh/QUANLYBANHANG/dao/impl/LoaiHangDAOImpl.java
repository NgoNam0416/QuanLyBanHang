package spring.qlbh.QUANLYBANHANG.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;

import spring.qlbh.QUANLYBANHANG.dao.LoaiHangDAO;
import spring.qlbh.QUANLYBANHANG.entity.LoaiHang;
import spring.qlbh.QUANLYBANHANG.model.LoaiHangInfo;

public class LoaiHangDAOImpl implements LoaiHangDAO {
	@Autowired
	private SessionFactory sessionfactory;
	@Override
	public List<LoaiHangInfo> loadMenu() {
		Session session = sessionfactory.getCurrentSession();
		String sql = " select new  " + LoaiHangInfo.class.getName()
					+" ( lh.maLoai, lh.tenLoai) " // các trường trong đối tượng LoaiHangInfo
					+" from " + LoaiHang.class.getName() + " lh "; // select bàng Hibernate thì nó trả về 1 đối tượng
		Query query = session.createQuery(sql);
		return query.list();
	}
	
}
