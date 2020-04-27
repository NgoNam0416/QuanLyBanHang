package spring.qlbh.QUANLYBANHANG.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;

import spring.qlbh.QUANLYBANHANG.dao.KhuyenMaiDAO;
import spring.qlbh.QUANLYBANHANG.entity.KhuyenMai;
import spring.qlbh.QUANLYBANHANG.model.KhuyenMaiInfo;

public class KhuyenMaiDAOImpl implements KhuyenMaiDAO {
	@Autowired
	private SessionFactory sessionfactory;
	@Override
	public List<KhuyenMaiInfo> loadKM() {
		Session session = sessionfactory.getCurrentSession();
		String sql = " select new  " + KhuyenMaiInfo.class.getName()
					+" ( km.maKM, km.tenKM,km.phanTram) " // cÃ¡c trÆ°á»�ng trong Ä‘á»‘i tÆ°á»£ng LoaiHangInfo
					+" from " + KhuyenMai.class.getName() + " km "; // select bÃ ng Hibernate thÃ¬ nÃ³ tráº£ vá»� 1 Ä‘á»‘i tÆ°á»£ng
		Query query = session.createQuery(sql);
		return query.list();
	}

}
