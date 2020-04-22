package spring.qlbh.QUANLYBANHANG.model;

public class GioHangInfo {
	private HangInfo hang;
	private int soLuong;
	public GioHangInfo(HangInfo hang, int soLuong) {
		super();
		this.hang = hang;
		this.soLuong = soLuong;
	}
	public GioHangInfo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public HangInfo getHang() {
		return hang;
	}
	public void setHang(HangInfo hang) {
		this.hang = hang;
	}
	public int getSoLuong() {
		return soLuong;
	}
	public void setSoLuong(int soLuong) {
		this.soLuong = soLuong;
	}
	

}
