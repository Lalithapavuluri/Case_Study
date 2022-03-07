package com.servlet.modal;



public class BookDetails {
	
	 private int id;
	 
	 private String bookname;
	 
	 private String booksubject;
	 
	 private String bookauthor;
	 
	 private int bprice;
	 
	 private int quantity;

	public BookDetails(String bookname, String booksubject, String bookauthor, int bprice,int quantity) {
		super();
		this.bookname = bookname;
		this.booksubject = booksubject;
		this.bookauthor = bookauthor;
		this.bprice = bprice;
		this.quantity=quantity;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getBookname() {
		return bookname;
	}

	public void setBookname(String bookname) {
		this.bookname = bookname;
	}

	public String getBooksubject() {
		return booksubject;
	}

	public void setBooksubject(String booksubject) {
		this.booksubject = booksubject;
	}

	public String getBookauthor() {
		return bookauthor;
	}

	public void setBookauthor(String bookauthor) {
		this.bookauthor = bookauthor;
	}

	public int getBprice() {
		return bprice;
	}

	public void setBprice(int bprice) {
		this.bprice = bprice;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	
	 

}
