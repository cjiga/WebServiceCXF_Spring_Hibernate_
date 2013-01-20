package edu.upc.webservice.genero.dao;

import java.util.List;

import edu.upc.webservice.genero.domain.Genero;

public interface GeneroDao {
	
	public int save(Genero genero);
	public int update(Genero genero);
	public int delete(Genero genero);
	public Genero getGenero(Integer id);
	public List<Genero> getAll();

}
