package spring.qlbh.QUANLYBANHANG.entity;



import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="dongdh")
public class DongDonHang {
	private int maDDH;
	private int soLuong;
	private int maHang;
	private int maDH;
	@Id
	@Column(name="MaDDH")
	public int getMaDDH() {
		return maDDH;
	}
	public void setMaDDH(int maDDH) {
		this.maDDH = maDDH;
	}
	@Column(name="SoLuong")
	public int getSoLuong() {
		return soLuong;
	}
	public void setSoLuong(int soLuong) {
		this.soLuong = soLuong;
	}
	@Column(name="MaHang")
	public int getMaHang() {
		return maHang;
	}
	public void setMaHang(int maHang) {
		this.maHang = maHang;
	}
	@Column(name="MaDH")
	public int getMaDH() {
		return maDH;
	}
	public void setMaDH(int maDH) {
		this.maDH = maDH;
	}
	

}
