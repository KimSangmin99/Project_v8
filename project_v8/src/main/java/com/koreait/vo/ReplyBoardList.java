package com.koreait.vo;

import java.util.ArrayList;
import java.util.Date;

public class ReplyBoardList {
	
	ArrayList<ReplyBoardList> list=new ArrayList<ReplyBoardList>();
	
	private int pageSize=10;
	private int totalCount=0;
	private int totalPage=0;
	private int currentPage=1;
	private int startNo=0;
	private int endNo=0;
	private int startPage=0;
	private int endPage=0;
	
	
//	pageSize, totalCount, currentPage를 인수로 넘겨받아 페이지 작업에 사용할 8개의 
//	변수를 초기화 하는 메소드
	public void initMvcBoardList(int pageSize, int totalCount, int currentPage) {
		this.pageSize=pageSize;
		this.totalCount=totalCount;
		this.currentPage=currentPage;
		calculator();
	}
	private void calculator() {
		totalPage=(totalCount-1)/pageSize+1;
		currentPage=currentPage>totalPage?totalPage:currentPage;
		startNo=(currentPage-1)*pageSize+1;
		endNo=startNo+pageSize-1;
		endNo=endNo>totalCount?totalCount:endNo;
		startPage=(currentPage-1)/10*10+1;
		endPage=startPage+pageSize-1;
		endPage=endPage>totalPage?totalPage:endPage;
	}
	
	public ArrayList<ReplyBoardList> getList() {
		return list;
	}
	public void setList(ArrayList<ReplyBoardList> list) {
		this.list = list;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}
	public int getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}
	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	public int getStartNo() {
		return startNo;
	}
	public void setStartNo(int startNo) {
		this.startNo = startNo;
	}
	public int getEndNo() {
		return endNo;
	}
	public void setEndNo(int endNo) {
		this.endNo = endNo;
	}
	public int getStartPage() {
		return startPage;
	}
	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}
	public int getEndPage() {
		return endPage;
	}
	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	
}