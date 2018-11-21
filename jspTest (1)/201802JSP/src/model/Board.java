package model;

public class Board {
	private Integer bid;
	private String btitle;
	private String bcontent;
	private String bpass;
	private String bdate;
	private String budate;
	private String name;
	private String id;
	public Integer getBid() {
		return bid;
	}
	public String getBtitle() {
		return btitle;
	}
	public void setBtitle(String btitle) {
		this.btitle = btitle;
	}
	public String getBcontent() {
		return bcontent;
	}
	public void setBcontent(String bcontent) {
		this.bcontent = bcontent;
	}
	public String getBpass() {
		return bpass;
	}
	public void setBpass(String bpass) {
		this.bpass = bpass;
	}
	public String getBdate() {
		return bdate;
	}
	public void setBdate(String bdate) {
		this.bdate = bdate;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public void setBid(Integer bid) {
		this.bid = bid;
	}
	public String getBudate() {
		return budate;
	}
	public void setBudate(String budate) {
		this.budate = budate;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	@Override
	public String toString() {
		return "Board [bid=" + bid + ", btitle=" + btitle + ", bcontent=" + bcontent + ", bpass=" + bpass + ", bdate="
				+ bdate + ", budate=" + budate + ", id=" + id + "]";
	}
	
	
	
}
