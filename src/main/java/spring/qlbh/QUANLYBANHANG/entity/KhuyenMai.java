package spring.qlbh.QUANLYBANHANG.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="khuyenmai")
public class KhuyenMai {
	private int maKM;
	private String tenKM;
	private int phanTram;
	@Id
	@Column(name="MaKM")
	public int getMaKM() {
		return maKM;
	}
	public void setMaKM(int maKM) {
		this.maKM = maKM;
	}
	@Column(name="TenKM")
	public String getTenKM() {
		return tenKM;
	}
	public void setTenKM(String tenKM) {
		this.tenKM = tenKM;
	}
	@Column(name="PhanTram")
	public int getPhanTram() {
		return phanTram;
	}
	public void setPhanTram(int phanTram) {
		this.phanTram = phanTram;
	}
	
	
}
