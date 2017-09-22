package cst;

public class CSTDTO {
	private String title;
	private String content;
	private String img;
	private int idx;
	private String area_ci;
	private String area_gu;
	private String writer ;
	private String hit;
	
	public CSTDTO() {
		super();
	}
	
	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
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

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getHit() {
		return hit;
	}

	public void setHit(String hit) {
		this.hit = hit;
	}

	public CSTDTO(String title, String content, String img, int idx, String area_ci, String area_gu, String writer,
			String hit) {
		super();
		this.title = title;
		this.content = content;
		this.img = img;
		this.idx = idx;
		this.area_ci = area_ci;
		this.area_gu = area_gu;
		this.writer = writer;
		this.hit = hit;
	}
	
	
}