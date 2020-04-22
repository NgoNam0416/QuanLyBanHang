package spring.qlbh.QUANLYBANHANG.model;

public class KhuyenMaiInfo {
	private int maKM;
	private String tenKM;
	private int phanTram;
	public KhuyenMaiInfo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public KhuyenMaiInfo(int maKM, String tenKM, int phanTram) {
		super();
		this.maKM = maKM;
		this.tenKM = tenKM;
		this.phanTram = phanTram;
	}
	public int getMaKM() {
		return maKM;
	}
	public void setMaKM(int maKM) {
		this.maKM = maKM;
	}
	public String getTenKM() {
		return tenKM;
	}
	public void setTenKM(String tenKM) {
		this.tenKM = tenKM;
	}
	public int getPhanTram() {
		return phanTram;
	}
	public void setPhanTram(int phanTram) {
		this.phanTram = phanTram;
	}
	
}
