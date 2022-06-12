package com.dto;

import java.sql.Date;

public class GameDto {
	int gameId;
	String gameName;
	String gameExplain;
	String ration;
	String genre;
	int price;
	Date gameDate;
	String youtubeLink;
	
	
	public GameDto() {
		
	}
	public GameDto(int gameId, String gameName, String gameExplain, String ration, String genre, int price,
			Date gameDate, String youtubeLink) {
		super();
		this.gameId = gameId;
		this.gameName = gameName;
		this.gameExplain = gameExplain;
		this.ration = ration;
		this.genre = genre;
		this.price = price;
		this.gameDate = gameDate;
		this.youtubeLink = youtubeLink;
	}
	public int getGameId() {
		return gameId;
	}
	public void setGameId(int gameId) {
		this.gameId = gameId;
	}
	public String getGameName() {
		return gameName;
	}
	public void setGameName(String gameName) {
		this.gameName = gameName;
	}
	public String getGameExplain() {
		return gameExplain;
	}
	public void setGameExplain(String gameExplain) {
		this.gameExplain = gameExplain;
	}
	public String getRation() {
		return ration;
	}
	public void setRation(String ration) {
		this.ration = ration;
	}
	public String getGenre() {
		return genre;
	}
	public void setGenre(String genre) {
		this.genre = genre;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public Date getGameDate() {
		return gameDate;
	}
	public void setGameDate(Date gameDate) {
		this.gameDate = gameDate;
	}
	public String getYoutubeLink() {
		return youtubeLink;
	}
	public void setYoutubeLink(String youtubeLink) {
		this.youtubeLink = youtubeLink;
	}
	
	
}
