package com.dto;

public class RecommendDto {
	int gameid;
	String cpu;
	String graphic;
	String ram;
	String disk;
	public RecommendDto() {
	}
	public RecommendDto(int gameid, String cpu, String graphic, String ram, String disk) {
		this.gameid = gameid;
		this.cpu = cpu;
		this.graphic = graphic;
		this.ram = ram;
		this.disk = disk;
	}
	public int getGameid() {
		return gameid;
	}
	public void setGameid(int gameid) {
		this.gameid = gameid;
	}
	public String getCpu() {
		return cpu;
	}
	public void setCpu(String cpu) {
		this.cpu = cpu;
	}
	public String getGraphic() {
		return graphic;
	}
	public void setGraphic(String graphic) {
		this.graphic = graphic;
	}
	public String getRam() {
		return ram;
	}
	public void setRam(String ram) {
		this.ram = ram;
	}
	public String getDisk() {
		return disk;
	}
	public void setDisk(String disk) {
		this.disk = disk;
	}

}
