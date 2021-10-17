package com.sin.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class HealthManagement {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int idrow;
	
	private int bp;
	private int sugar;
	private int age;
	private double weight;
	private double height;
	private String date;
	
	public int getIdrow() {
		return idrow;
	}
	public void setIdrow(int idrow) {
		this.idrow = idrow;
	}
	public int getBp() {
		return bp;
	}
	public void setBp(int bp) {
		this.bp = bp;
	}
	public int getSugar() {
		return sugar;
	}
	public void setSugar(int sugar) {
		this.sugar = sugar;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public double getWeight() {
		return weight;
	}
	public void setWeight(double weight) {
		this.weight = weight;
	}
	public double getHeight() {
		return height;
	}
	public void setHeight(double height) {
		this.height = height;
	}
	@Override
	public String toString() {
		return "HealthManagement [idrow=" + idrow + ", bp=" + bp + ", sugar=" + sugar + ", age=" + age + ", weight="
				+ weight + ", height=" + height + ", date=" + date + "]";
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	
}
