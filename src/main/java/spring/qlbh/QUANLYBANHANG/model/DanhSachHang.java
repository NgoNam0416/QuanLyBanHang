package spring.qlbh.QUANLYBANHANG.model;



public class DanhSachHang {
	private int maHang;
	private String tenHang;
	private int donGia;
	private String imageLink;
	private int soLuong;
	private int phanTram;
	public DanhSachHang(int maHang, String tenHang, int donGia, String imageLink, int soLuong, int phanTram) {
		super();
		this.maHang = maHang;
		this.tenHang = tenHang;
		this.donGia = donGia;
		this.imageLink = imageLink;
		this.soLuong = soLuong;
		this.phanTram = phanTram;
	}
	public DanhSachHang() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getMaHang() {
		return maHang;
	}
	public void setMaHang(int maHang) {
		this.maHang = maHang;
	}
	public String getTenHang() {
		return tenHang;
	}
	public void setTenHang(String tenHang) {
		this.tenHang = tenHang;
	}
	public int getDonGia() {
		return donGia;
	}
	public void setDonGia(int donGia) {
		this.donGia = donGia;
	}
	public String getImageLink() {
		return imageLink;
	}
	public void setImageLink(String imageLink) {
		this.imageLink = imageLink;
	}
	public int getSoLuong() {
		return soLuong;
	}
	public void setSoLuong(int soLuong) {
		this.soLuong = soLuong;
	}
	public int getPhanTram() {
		return phanTram;
	}
	public void setPhanTram(int phanTram) {
		this.phanTram = phanTram;
	}

	
}
