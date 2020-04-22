package spring.qlbh.QUANLYBANHANG.dao.impl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;

import spring.qlbh.QUANLYBANHANG.dao.UserDAO;
import spring.qlbh.QUANLYBANHANG.entity.Hang;
import spring.qlbh.QUANLYBANHANG.entity.User;
import spring.qlbh.QUANLYBANHANG.model.UserInfo;


public class UserDAOImpl implements UserDAO {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<UserInfo> loadUser() {
		Session session = this.sessionFactory.getCurrentSession();
		String sql = " select new " + UserInfo.class.getName() 
				+ " (u.id, u.userName, u.passWord, u.hoTen, u.imageLink, u.diaChi, u.sDT, u.loai) " + " from "
				+ User.class.getName() + " u ";
		Query query = session.createQuery(sql);
		return query.list();
	}

	@Override
	public User findUser(int id) {
		Session session = sessionFactory.getCurrentSession();
		Criteria crit = session.createCriteria(User.class);
		crit.add(Restrictions.eq("id", id));
		return (User) crit.uniqueResult();
	}

	@Override
	public void xoaUser(int id) {
		User user = this.findUser(id);
		if (user != null) {
			this.sessionFactory.getCurrentSession().delete(user);
		}
	}
	public UserInfo checkLogin(String userName, String passWord) {
		Session se = this.sessionFactory.getCurrentSession();

		String sql = " Select new " + UserInfo.class.getName()
				+ "(u.id, u.userName, u.passWord, u.hoTen, u.imageLink, u.diaChi, u.sDT, u.loai)" + " from "
				+ User.class.getName() + " u "+" where USERNAME =: us and PASSWORD =: pw";

		Query query = se.createQuery(sql);
		query.setParameter("us", userName);
		query.setParameter("pw",passWord);
		return (UserInfo) query.uniqueResult();
	}

	@Override
	public void insertUser(UserInfo userInfo) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		User userentity = new User();
		userentity.setId(userInfo.getId());
		userentity.setUserName(userInfo.getUserName());
		userentity.setPassWord(userInfo.getPassWord());
		userentity.setHoTen(userInfo.getHoTen());
		userentity.setImageLink(userInfo.getImageLink());
		userentity.setDiaChi(userInfo.getDiaChi());
		userentity.setsDT(userInfo.getsDT());
		userentity.setLoai(userInfo.getLoai());
		session.persist(userentity);
	}
}
