package spring.qlbh.QUANLYBANHANG.model;

public class LoaiHangInfo {
	private int maLoai;
	private String tenLoai;
	private int maKM;
	
	public LoaiHangInfo() {
		super();
		// TODO Auto-generated constructor stub
	}

	

	public LoaiHangInfo(int maLoai, String tenLoai, int maKM) {
		super();
		this.maLoai = maLoai;
		this.tenLoai = tenLoai;
		this.maKM = maKM;
	}



	public int getMaLoai() {
		return maLoai;
	}

	public void setMaLoai(int maLoai) {
		this.maLoai = maLoai;
	}

	public String getTenLoai() {
		return tenLoai;
	}

	public void setTenLoai(String tenLoai) {
		this.tenLoai = tenLoai;
	}



	public int getMaKM() {
		return maKM;
	}



	public void setMaKM(int maKM) {
		this.maKM = maKM;
	}
	
	
}
