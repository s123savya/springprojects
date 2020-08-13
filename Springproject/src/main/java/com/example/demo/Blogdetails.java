package com.example.demo;

import java.util.Arrays;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Blogdetails {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	int bno;
	String bname;
	String bfile;
	
	public String getBfile() {
		return bfile;
	}
	public void setBfile(String bfile) {
		this.bfile = bfile;
	}
	public int getBno() {
		return bno;
	}
	public void setBno(int bno) {
		this.bno = bno;
	}
	public String getBname() {
		return bname;
	}
	public void setBname(String bname) {
		this.bname = bname;
	}
	@Override
	public String toString() {
		return "Blogdetails [bno=" + bno + ", bname=" + bname + ", bfile=" + bfile + "]"+"\n";
	}
	
	
	
}
