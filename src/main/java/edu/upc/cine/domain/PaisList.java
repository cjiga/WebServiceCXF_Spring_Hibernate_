package edu.upc.cine.domain;

import java.util.List;

import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name="persons")
public class PaisList {
	
	private List<Pais> data;

	public List<Pais> getData() {
		return data;
	}

	public void setData(List<Pais> data) {
		this.data = data;
	}
	
	
}
