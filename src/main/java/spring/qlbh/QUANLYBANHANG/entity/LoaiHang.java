package spring.qlbh.QUANLYBANHANG.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="loai")
public class LoaiHang {
	private int maLoai;
	private String tenLoai;
	private int maKM;
	@Id
	@Column(name="MaLoai")
	public int getMaLoai() {
		return maLoai;
	}
	public void setMaLoai(int maLoai) {
		this.maLoai = maLoai;
	}
	@Column(name="TenLoai")
	public String getTenLoai() {
		return tenLoai;
	}
	public void setTenLoai(String tenLoai) {
		this.tenLoai = tenLoai;
	}
	@Column(name="MaKM")
	public int getMaKM() {
		return maKM;
	}
	public void setMaKM(int maKM) {
		this.maKM = maKM;
	}
	
}
