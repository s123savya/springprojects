package com.example.demo;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Teachers {
	@Id
	int tid;
	String tname;
	String email;
	
	public int getTid() {
		return tid;
	}
	public void setTid(int tid) {
		this.tid = tid;
	}
	public String getTname() {
		return tname;
	}
	public void setTname(String tname) {
		this.tname = tname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	@Override
	public String toString() {
		return "Teachers [tid=" + tid + ", tname=" + tname + ", email=" + email + "]";
	}
	
	
	
}
