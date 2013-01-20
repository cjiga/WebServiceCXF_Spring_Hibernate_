package edu.upc.webservice.genero.service.impl;

import java.util.List;

import javax.jws.WebService;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;

import edu.upc.webservice.genero.dao.GeneroDao;
import edu.upc.webservice.genero.domain.Genero;
import edu.upc.webservice.genero.service.GeneroService;

@WebService(endpointInterface="edu.upc.webservice.genero.service.GeneroService")
public class GeneroServiceImpl implements GeneroService {

	protected static Logger logger = Logger.getLogger("service");

	// private List<Pais> paises=new ArrayList<Pais>();
	@Autowired
	private GeneroDao generoDao;
	@Override
	public int save(Genero genero) {
		// TODO Auto-generated method stub
		return generoDao.save(genero);
	}

	@Override
	public int update(Genero genero) {
		// TODO Auto-generated method stub
		return generoDao.update(genero);
	}

	@Override
	public int delete(Genero genero) {
		// TODO Auto-generated method stub
		return generoDao.delete(genero);
	}

	@Override
	public Genero getGenero(Integer id) {
		// TODO Auto-generated method stub
		return generoDao.getGenero(id);
	}

	@Override
	public List<Genero> getAll() {
		// TODO Auto-generated method stub
		return generoDao.getAll();
	}

}
