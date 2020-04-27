package spring.qlbh.QUANLYBANHANG.model;

public class GioHangInfo {
	private HangKhuyenMaiInfo hangKM;
	private int soLuong;
	public GioHangInfo(HangKhuyenMaiInfo hangKM, int soLuong) {
		super();
		this.hangKM = hangKM;
		this.soLuong = soLuong;
	}
	public GioHangInfo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public HangKhuyenMaiInfo getHangKM() {
		return hangKM;
	}
	public void setHangKM(HangKhuyenMaiInfo hangKM) {
		this.hangKM = hangKM;
	}
	public int getSoLuong() {
		return soLuong;
	}
	public void setSoLuong(int soLuong) {
		this.soLuong = soLuong;
	}
	
	

}
