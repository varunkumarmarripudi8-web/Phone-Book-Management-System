package p1;

import java.io.Serializable;

public class contactbean implements Serializable{
private String name,email,phno,abt;
private int id;
public contactbean() {}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getPhno() {
	return phno;
}
public void setPhno(String phno) {
	this.phno = phno;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getAbt() {
	return abt;
}
public void setAbt(String abt) {
	this.abt = abt;
}
}
