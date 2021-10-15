package com.sin.model;

import javax.persistence.*;

@Entity
public class HealthManagement {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int idrow;
	
	private String bp;
	private String sugar;
	private String age;
	private String date;
	
	public String getBp() {
		return bp;
	}
	public void setBp(String bp) {
		this.bp = bp;
	}
	public String getSugar() {
		return sugar;
	}
	public void setSugar(String sugar) {
		this.sugar = sugar;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public int getIdrow() {
		return idrow;
	}
	public void setIdrow(int idrow) {
		this.idrow = idrow;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((age == null) ? 0 : age.hashCode());
		result = prime * result + ((bp == null) ? 0 : bp.hashCode());
		result = prime * result + ((date == null) ? 0 : date.hashCode());
		result = prime * result + idrow;
		result = prime * result + ((sugar == null) ? 0 : sugar.hashCode());
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		HealthManagement other = (HealthManagement) obj;
		if (age == null) {
			if (other.age != null)
				return false;
		} else if (!age.equals(other.age))
			return false;
		if (bp == null) {
			if (other.bp != null)
				return false;
		} else if (!bp.equals(other.bp))
			return false;
		if (date == null) {
			if (other.date != null)
				return false;
		} else if (!date.equals(other.date))
			return false;
		if (idrow != other.idrow)
			return false;
		if (sugar == null) {
			if (other.sugar != null)
				return false;
		} else if (!sugar.equals(other.sugar))
			return false;
		return true;
	}
	@Override
	public String toString() {
		return "HealthManagement [idrow=" + idrow + ", bp=" + bp + ", sugar=" + sugar + ", age=" + age + ", date="
				+ date + "]";
	}
}
