package spring.qlbh.QUANLYBANHANG.dao;

import java.util.List;

import javax.transaction.Transactional;


import spring.qlbh.QUANLYBANHANG.entity.User;
import spring.qlbh.QUANLYBANHANG.model.HangInfo;
import spring.qlbh.QUANLYBANHANG.model.UserInfo;

@Transactional
public interface UserDAO {

	public List<UserInfo> loadUser();
	public User findUser(int id);
	public void xoaUser(int id);
	public UserInfo checkLogin(String userName,String passWord);
	public void insertUser(UserInfo userInfo);
}
