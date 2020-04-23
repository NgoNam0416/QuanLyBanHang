package spring.qlbh.QUANLYBANHANG.model;

import org.springframework.web.multipart.commons.CommonsMultipartFile;

public class HangInfo {
	private int maHang;
	private String tenHang;
	private String imageLink;
	private String ngayNhapHang;
	private int donGia;
	private int maLoai;
	private float soLuong;
	private String donVi;
	private String noiSX;
	private String tTThem;
	private String trangThai;
	private CommonsMultipartFile anh;
	

	public HangInfo(CommonsMultipartFile anh) {
		super();
		this.anh = anh;
	}

	public HangInfo() {
		super();
		// TODO Auto-generated constructor stub
	}
	

	public HangInfo(int maHang, String tenHang, String imageLink, String ngayNhapHang, int donGia, int maLoai,
			float soLuong, String donVi, String noiSX, String tTThem, String trangThai) {
		super();
		this.maHang = maHang;
		this.tenHang = tenHang;
		this.imageLink = imageLink;
		this.ngayNhapHang = ngayNhapHang;
		this.donGia = donGia;
		this.maLoai = maLoai;
		this.soLuong = soLuong;
		this.donVi = donVi;
		this.noiSX = noiSX;
		this.tTThem = tTThem;
		this.trangThai = trangThai;
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

	public String getImageLink() {
		return imageLink;
	}

	public void setImageLink(String imageLink) {
		this.imageLink = imageLink;
	}

	public String getNgayNhapHang() {
		return ngayNhapHang;
	}

	public void setNgayNhapHang(String ngayNhapHang) {
		this.ngayNhapHang = ngayNhapHang;
	}

	public int getDonGia() {
		return donGia;
	}

	public void setDonGia(int donGia) {
		this.donGia = donGia;
	}

	public int getMaLoai() {
		return maLoai;
	}

	public void setMaLoai(int maLoai) {
		this.maLoai = maLoai;
	}

	public float getSoLuong() {
		return soLuong;
	}

	public void setSoLuong(float soLuong) {
		this.soLuong = soLuong;
	}

	public String getDonVi() {
		return donVi;
	}

	public void setDonVi(String donVi) {
		this.donVi = donVi;
	}

	public String getNoiSX() {
		return noiSX;
	}

	public void setNoiSX(String noiSX) {
		noiSX = noiSX;
	}

	public String gettTThem() {
		return tTThem;
	}

	public void settTThem(String tTThem) {
		this.tTThem = tTThem;
	}

	public String getTrangThai() {
		return trangThai;
	}

	public void setTrangThai(String trangThai) {
		this.trangThai = trangThai;
	}

	public CommonsMultipartFile getAnh() {
		return anh;
	}

	public void setAnh(CommonsMultipartFile anh) {
		this.anh = anh;
	}
	
	
	
}
