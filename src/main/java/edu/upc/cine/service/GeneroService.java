package edu.upc.cine.service;

import java.util.List;

import javax.jws.WebParam;
import javax.jws.WebResult;
import javax.jws.WebService;

import edu.upc.cine.domain.Genero;

@WebService
public interface GeneroService {
	
	@WebResult(name="save")
	public int save(@WebParam Genero genero);
	
	@WebResult(name="update")
	public int update(@WebParam Genero genero);
	
	@WebResult(name="delete")
	public int delete(@WebParam Genero genero);
	
	@WebResult(name="getGenero")
	public Genero getGenero(@WebParam Integer id);
	
	@WebResult(name="getAll")
	public List<Genero> getAll();

}
