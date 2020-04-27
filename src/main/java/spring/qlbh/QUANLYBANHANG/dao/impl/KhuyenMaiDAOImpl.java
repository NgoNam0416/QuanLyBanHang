package spring.qlbh.QUANLYBANHANG.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;

import spring.qlbh.QUANLYBANHANG.dao.KhuyenMaiDAO;
import spring.qlbh.QUANLYBANHANG.entity.Hang;
import spring.qlbh.QUANLYBANHANG.entity.KhuyenMai;
import spring.qlbh.QUANLYBANHANG.model.KhuyenMaiInfo;

public class KhuyenMaiDAOImpl implements KhuyenMaiDAO {
	@Autowired
	private SessionFactory sessionfactory;
	@Override
	public List<KhuyenMaiInfo> loadKM() {
		Session session = sessionfactory.getCurrentSession();
		String sql = " select new  " + KhuyenMaiInfo.class.getName()
					+" ( km.maKM, km.tenKM,km.phanTram) " 
					+" from " + KhuyenMai.class.getName() + " km "; 
		Query query = session.createQuery(sql);
		
		return query.list();
		
	}
	@Override
	public void themKM(KhuyenMaiInfo khuyenmai) {
		Session session = sessionfactory.getCurrentSession();
		KhuyenMai kmEntity = new KhuyenMai();
		kmEntity.setMaKM(khuyenmai.getMaKM());
		kmEntity.setTenKM(khuyenmai.getTenKM());
		kmEntity.setPhanTram(khuyenmai.getPhanTram());
		
		session.persist(kmEntity);
		session.close();
	}

}
