package spring.qlbh.QUANLYBANHANG.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="nguoidung")
public class NguoiDung {
	private int maND;
	private String tenDN;
	private String matKhau;
	private String hoTen;
	private String image;
	private String diaChi;
	private int sDT;
	private String Email;
	private String loai;
	@Id
	@Column(name="MaND")
	public int getMaND() {
		return maND;
	}
	public void setMaND(int maND) {
		this.maND = maND;
	}
	@Column(name="TenDN")
	public String getTenDN() {
		return tenDN;
	}
	public void setTenDN(String tenDN) {
		this.tenDN = tenDN;
	}
	

	@Column(name="MatKhau")
	public String getMatKhau() {
		return matKhau;
	}
	public void setMatKhau(String matKhau) {
		this.matKhau = matKhau;
	}
	@Column(name="HoTen")
	public String getHoTen() {
		return hoTen;
	}
	public void setHoTen(String hoTen) {
		this.hoTen = hoTen;
	}
	@Column(name="Image")
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	@Column(name="DiaChi")
	public String getDiaChi() {
		return diaChi;
	}
	public void setDiaChi(String diaChi) {
		this.diaChi = diaChi;
	}
	@Column(name="SDT")
	public int getsDT() {
		return sDT;
	}
	public void setsDT(int sDT) {
		this.sDT = sDT;
	}
	@Column(name="Email")
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	@Column(name="Loai")
	public String getLoai() {
		return loai;
	}
	public void setLoai(String loai) {
		this.loai = loai;
	}
	
}
