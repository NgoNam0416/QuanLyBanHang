package spring.qlbh.QUANLYBANHANG.entity;



import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="donhang")
public class DonHang {
	private int maDH;
	private String ngayDatHang;
	private float tongTien;
	private String tenNguoiNhan;
	private String email;
	private String diaChiNhanHang;
	private String sDT;
	private String ghiChu;
	private int trangThai;
	private int maND;
	@Id
	@Column(name="MaDH")
	public int getMaDH() {
		return maDH;
	}
	public void setMaDH(int maDH) {
		this.maDH = maDH;
	}
	@Column(name="NgayDatHang")
	public String getNgayDatHang() {
		return ngayDatHang;
	}
	public void setNgayDatHang(String ngayDatHang) {
		this.ngayDatHang = ngayDatHang;
	}
	@Column(name="TongTien")
	public float getTongTien() {
		return tongTien;
	}
	public void setTongTien(float tongTien) {
		this.tongTien = tongTien;
	}
	@Column(name="TenNguoiNhan")
	public String getTenNguoiNhan() {
		return tenNguoiNhan;
	}
	public void setTenNguoiNhan(String tenNguoiNhan) {
		this.tenNguoiNhan = tenNguoiNhan;
	}
	@Column(name="Email")
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	@Column(name="DiaChiNhanHang")
	public String getDiaChiNhanHang() {
		return diaChiNhanHang;
	}
	public void setDiaChiNhanHang(String diaChiNhanHang) {
		this.diaChiNhanHang = diaChiNhanHang;
	}
	@Column(name="SDT")
	public String getsDT() {
		return sDT;
	}
	public void setsDT(String sDT) {
		this.sDT = sDT;
	}
	@Column(name="GhiChu")
	public String getGhiChu() {
		return ghiChu;
	}
	public void setGhiChu(String ghiChu) {
		this.ghiChu = ghiChu;
	}
	@Column(name="TrangThai")
	public int getTrangThai() {
		return trangThai;
	}
	public void setTrangThai(int trangThai) {
		this.trangThai = trangThai;
	}
	@Column(name="MaND")
	public int getMaND() {
		return maND;
	}
	public void setMaND(int maND) {
		this.maND = maND;
	}

	
	
	
}
