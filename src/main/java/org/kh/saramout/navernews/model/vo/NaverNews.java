package org.kh.saramout.navernews.model.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;

@Component
public class NaverNews implements java.io.Serializable{
	private static final long serialVersionUID = 2231441299133L;
	
	private int navernewsno;
	private String originallink;
	private String link;
	private String description;
	private String title;

	
	public NaverNews() {}


	public NaverNews(int navernewsno, String originallink, String link, String description, String title) {
		super();
		this.navernewsno = navernewsno;
		this.originallink = originallink;
		this.link = link;
		this.description = description;
		this.title = title;
	}


	public int getNavernewsno() {
		return navernewsno;
	}


	public void setNavernewsno(int navernewsno) {
		this.navernewsno = navernewsno;
	}


	public String getOriginallink() {
		return originallink;
	}


	public void setOriginallink(String originallink) {
		this.originallink = originallink;
	}


	public String getLink() {
		return link;
	}


	public void setLink(String link) {
		this.link = link;
	}


	public String getDescription() {
		return description;
	}


	public void setDescription(String description) {
		this.description = description;
	}


	public String getTitle() {
		return title;
	}


	public void setTitle(String title) {
		this.title = title;
	}


	public static long getSerialversionuid() {
		return serialVersionUID;
	}


	@Override
	public String toString() {
		return "NaverNews [navernewsno=" + navernewsno + ", originallink=" + originallink + ", link=" + link
				+ ", description=" + description + ", title=" + title + "]";
	}

	
	
	

	
	
}
