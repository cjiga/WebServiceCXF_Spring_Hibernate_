package edu.upc.cine.dao;

import java.util.List;

import edu.upc.cine.domain.Genero;

public interface GeneroDao {
	
	public int save(Genero genero);
	public int update(Genero genero);
	public int delete(Genero genero);
	public Genero getGenero(Integer id);
	public List<Genero> getAll();

}
