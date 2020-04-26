package spring.qlbh.QUANLYBANHANG.model;

import org.springframework.web.multipart.commons.CommonsMultipartFile;

public class NguoiDungInfo {
	private int maND;
	private String tenDN;
	private String matKhau;
	private String hoTen;
	private String image;
	private String diaChi;
	private int sDT;
	private String Email;
	private String loai;
	private CommonsMultipartFile anhuser;
	
	public CommonsMultipartFile getAnhuser() {
		return anhuser;
	}
	public NguoiDungInfo(CommonsMultipartFile anhuser) {
		super();
		this.anhuser = anhuser;
	}
	public void setAnhuser(CommonsMultipartFile anhuser) {
		this.anhuser = anhuser;
	}
	
	
	public NguoiDungInfo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public NguoiDungInfo(int maND, String tenDN, String matKhau, String hoTen, String image, String diaChi, int sDT,
			String email, String loai) {
		super();
		this.maND = maND;
		this.tenDN = tenDN;
		this.matKhau = matKhau;
		this.hoTen = hoTen;
		this.image = image;
		this.diaChi = diaChi;
		this.sDT = sDT;
		Email = email;
		this.loai = loai;
	}
	
	public int getMaND() {
		return maND;
	}
	public void setMaND(int maND) {
		this.maND = maND;
	}
	public String getTenDN() {
		return tenDN;
	}
	public void setTenDN(String tenND) {
		this.tenDN = tenND;
	}
	public String getMatKhau() {
		return matKhau;
	}
	public void setMatKhau(String matKhau) {
		this.matKhau = matKhau;
	}
	public String getHoTen() {
		return hoTen;
	}
	public void setHoTen(String hoTen) {
		this.hoTen = hoTen;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getDiaChi() {
		return diaChi;
	}
	public void setDiaChi(String diaChi) {
		this.diaChi = diaChi;
	}
	public int getsDT() {
		return sDT;
	}
	public void setsDT(int sDT) {
		this.sDT = sDT;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public String getLoai() {
		return loai;
	}
	public void setLoai(String loai) {
		this.loai = loai;
	}

}
