package edu.upc.webservice.genero.dao.impl;

import java.util.List;

import org.apache.log4j.Logger;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import edu.upc.webservice.genero.dao.GeneroDao;
import edu.upc.webservice.genero.domain.Genero;

@Repository("generoDao")
@Transactional
public class GeneroDaoImpl implements GeneroDao {
	
	protected static Logger logger = Logger.getLogger("GeneroDaoImpl");

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public int save(Genero genero) {
		Session session = sessionFactory.getCurrentSession();
		int var=0;
		try {
			session.save(genero);
			var=1;
		} catch (Exception e) {
			System.out.println("Error en insertar genero: " + e.getMessage());
		}
		return var;
	}

	@Override
	public int update(Genero genero) {
		Session session = sessionFactory.getCurrentSession();
		int var=0;
		try {
			session.update(genero);
			var=1;
		} catch (Exception e) {
			System.out.println("Error en actualizar genero: " + e.getMessage());
		}
		return var;
	}

	@Override
	public int delete(Genero genero) {
		Session session = sessionFactory.getCurrentSession();
		int var=0;
		try {
			/*session.beginTransaction();
			
			session.beginTransaction().commit();*/
			session.delete(genero);
			var=1;
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("Error en eliminar genero: " + e.getMessage());
			//session.beginTransaction().rollback();
		}
		return var;
	}

	@Transactional(readOnly = true) 
	public Genero getGenero(Integer id) {
		Session session = sessionFactory.getCurrentSession();
		return (Genero)session.get(Genero.class, id);
	}

	@SuppressWarnings("unchecked")
	@Transactional(readOnly = true) 
	public List<Genero> getAll() {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from Genero");
		return query.list();
	}

}
