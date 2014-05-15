package com.ric.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "postdata")
public class Post {

	@Id
	@GeneratedValue
	private Integer id;

	private String position;

	public int getExpfrom() {
		return expfrom;
	}

	public int getExpto() {
		return expto;
	}

	private String skill;

	private String location;
	
	@Column(name="exp_from")
	private int expfrom;

	@Column(name="exp_to")
	private int expto;

	public void setExpfrom(int expfrom) {
		this.expfrom = expfrom;
	}

	public void setExpto(int expto) {
		this.expto = expto;
	}

	public String getPosition() {
		return position;
	}

	public void setPosition(String position) {
		this.position = position;
	}

	public String getSkill() {
		return skill;
	}

	public void setSkill(String skill) {
		this.skill = skill;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return "id="+this.getId()+"\n"+
				"position="+this.getPosition()+"\n"+
		"skill="+this.getSkill()+"\n"+
				"location="+this.getLocation()+"\n"
				+"exp="+this.getExpfrom()+"-"+this.getExpto();
	}

}
