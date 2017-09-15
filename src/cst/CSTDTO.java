package cst;

public class CSTDTO {
	private String title;
	private String text;
	private String img;
	private int idx;
	private String area_ci;
	private String area_gu;
	
	public CSTDTO() {	
	}
	public CSTDTO(int idx, String area_ci, String area_gu,String title,String img, String text) {	
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getArea_ci() {
		return area_ci;
	}
	public void setArea_ci(String area_ci) {
		this.area_ci = area_ci;
	}
	public String getArea_gu() {
		return area_gu;
	}
	public void setArea_gu(String area_gu) {
		this.area_gu = area_gu;
	}
	
	
}
