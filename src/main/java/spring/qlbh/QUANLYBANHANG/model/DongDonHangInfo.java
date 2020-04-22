package spring.qlbh.QUANLYBANHANG.model;

public class DongDonHangInfo {
	private int maDDH;
	private int soLuong;
	private int maHang;
	private int maDH;
	public DongDonHangInfo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public DongDonHangInfo(int maDDH, int soLuong, int maHang, int maDH) {
		super();
		this.maDDH = maDDH;
		this.soLuong = soLuong;
		this.maHang = maHang;
		this.maDH = maDH;
	}
	public int getMaDDH() {
		return maDDH;
	}
	public void setMaDDH(int maDDH) {
		this.maDDH = maDDH;
	}
	public int getSoLuong() {
		return soLuong;
	}
	public void setSoLuong(int soLuong) {
		this.soLuong = soLuong;
	}
	public int getMaHang() {
		return maHang;
	}
	public void setMaHang(int maHang) {
		this.maHang = maHang;
	}
	public int getMaDH() {
		return maDH;
	}
	public void setMaDH(int maDH) {
		this.maDH = maDH;
	}
	
}
