package com.dto;

public class GameImgDto {
	int imgId;
	int gameId;
	String mainName;
	String bannerName;
	String listName;
	public GameImgDto() {
	}
	
	public GameImgDto(int imgId, int gameId, String mainName, String bannerName, String listName) {
		super();
		this.imgId = imgId;
		this.gameId = gameId;
		this.mainName = mainName;
		this.bannerName = bannerName;
		this.listName = listName;
	}

	public int getImgId() {
		return imgId;
	}
	public void setImgId(int imgId) {
		this.imgId = imgId;
	}
	
	public int getGameId() {
		return gameId;
	}

	public void setGameId(int gameId) {
		this.gameId = gameId;
	}

	public String getMainName() {
		return mainName;
	}
	public void setMainName(String mainName) {
		this.mainName = mainName;
	}
	public String getBannerName() {
		return bannerName;
	}
	public void setBannerName(String bannerName) {
		this.bannerName = bannerName;
	}
	public String getListName() {
		return listName;
	}
	public void setListName(String listName) {
		this.listName = listName;
	}
	
	
	
}
