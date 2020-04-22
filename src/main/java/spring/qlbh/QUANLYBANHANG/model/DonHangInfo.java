package spring.qlbh.QUANLYBANHANG.model;

public class DonHangInfo {
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
	
	public DonHangInfo() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public DonHangInfo(int maDH, String ngayDatHang, float tongTien, String tenNguoiNhan, String email,
			String diaChiNhanHang, String sDT, String ghiChu, int trangThai, int maND) {
		super();
		this.maDH = maDH;
		this.ngayDatHang = ngayDatHang;
		this.tongTien = tongTien;
		this.tenNguoiNhan = tenNguoiNhan;
		this.email = email;
		this.diaChiNhanHang = diaChiNhanHang;
		this.sDT = sDT;
		this.ghiChu = ghiChu;
		this.trangThai = trangThai;
		this.maND = maND;
	}

	public int getMaDH() {
		return maDH;
	}
	public void setMaDH(int maDH) {
		this.maDH = maDH;
	}
	public String getNgayDatHang() {
		return ngayDatHang;
	}
	public void setNgayDatHang(String ngayDatHang) {
		this.ngayDatHang = ngayDatHang;
	}
	public float getTongTien() {
		return tongTien;
	}
	public void setTongTien(float tongTien) {
		this.tongTien = tongTien;
	}
	public String getTenNguoiNhan() {
		return tenNguoiNhan;
	}
	public void setTenNguoiNhan(String tenNguoiNhan) {
		this.tenNguoiNhan = tenNguoiNhan;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getDiaChiNhanHang() {
		return diaChiNhanHang;
	}
	public void setDiaChiNhanHang(String diaChiNhanHang) {
		this.diaChiNhanHang = diaChiNhanHang;
	}
	public String getsDT() {
		return sDT;
	}
	public void setsDT(String sDT) {
		this.sDT = sDT;
	}
	public String getGhiChu() {
		return ghiChu;
	}
	public void setGhiChu(String ghiChu) {
		this.ghiChu = ghiChu;
	}
	public int getTrangThai() {
		return trangThai;
	}
	public void setTrangThai(int trangThai) {
		this.trangThai = trangThai;
	}

	public int getMaND() {
		return maND;
	}

	public void setMaND(int maND) {
		this.maND = maND;
	}

	
	
}
