package spring.qlbh.QUANLYBANHANG.model;

import org.springframework.web.multipart.commons.CommonsMultipartFile;

public class UserInfo {
	private int id;
	private String userName;
	private String passWord;
	private String hoTen;
	private String imageLink;
	private String diaChi;
	private String sDT;
	private String loai;
	private CommonsMultipartFile anhuser;
	
	public UserInfo(CommonsMultipartFile anhuser) {
		super();
		this.anhuser = anhuser;
	}

	public CommonsMultipartFile getAnhuser() {
		return anhuser;
	}

	public void setAnhuser(CommonsMultipartFile anhuser) {
		this.anhuser = anhuser;
	}

	public UserInfo() {
		super();
		// TODO Auto-generated constructor stub
	}

	public UserInfo(int id, String userName, String passWord, String hoTen, String imageLink, String diaChi, String sDT,
			String loai) {
		super();
		this.id = id;
		this.userName = userName;
		this.passWord = passWord;
		this.hoTen = hoTen;
		this.imageLink = imageLink;
		this.diaChi = diaChi;
		this.sDT = sDT;
		this.loai = loai;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassWord() {
		return passWord;
	}
	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}
	public String getHoTen() {
		return hoTen;
	}
	public void setHoTen(String hoTen) {
		this.hoTen = hoTen;
	}
	public String getImageLink() {
		return imageLink;
	}
	public void setImageLink(String imageLink) {
		this.imageLink = imageLink;
	}
	public String getDiaChi() {
		return diaChi;
	}
	public void setDiaChi(String diaChi) {
		this.diaChi = diaChi;
	}
	public String getsDT() {
		return sDT;
	}
	public void setsDT(String sDT) {
		this.sDT = sDT;
	}
	public String getLoai() {
		return loai;
	}
	public void setLoai(String loai) {
		this.loai = loai;
	}
	
}
