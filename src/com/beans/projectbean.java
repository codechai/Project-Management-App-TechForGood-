package com.beans;

public class projectbean {
String projectid, projectname, p_manager;
int no_leaders, no_volunteers, p_budget;
String p_location, p_from, p_to;
public String getProjectid() {
	return projectid;
}
public void setProjectid(String projectid) {
	this.projectid = projectid;
}
public String getProjectname() {
	return projectname;
}
public void setProjectname(String projectname) {
	this.projectname = projectname;
}
public String getP_manager() {
	return p_manager;
}
public void setP_manager(String p_manager) {
	this.p_manager = p_manager;
}
public int getNo_leaders() {
	return no_leaders;
}
public void setNo_leaders(int no_leaders) {
	this.no_leaders = no_leaders;
}
public int getNo_volunteers() {
	return no_volunteers;
}
public void setNo_volunteers(int no_volunteers) {
	this.no_volunteers = no_volunteers;
}
public projectbean(String projectid, String projectname, String p_manager,
		int no_leaders, int no_volunteers, int p_budget, String p_location,
		String p_from, String p_to) {
	super();
	this.projectid = projectid;
	this.projectname = projectname;
	this.p_manager = p_manager;
	this.no_leaders = no_leaders;
	this.no_volunteers = no_volunteers;
	this.p_budget = p_budget;
	this.p_location = p_location;
	this.p_from = p_from;
	this.p_to = p_to;
}
public int getP_budget() {
	return p_budget;
}
public void setP_budget(int p_budget) {
	this.p_budget = p_budget;
}
public String getP_location() {
	return p_location;
}
public void setP_location(String p_location) {
	this.p_location = p_location;
}
public String getP_from() {
	return p_from;
}
public void setP_from(String p_from) {
	this.p_from = p_from;
}
public String getP_to() {
	return p_to;
}
public void setP_to(String p_to) {
	this.p_to = p_to;
}
}
