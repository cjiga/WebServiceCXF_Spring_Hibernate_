package edu.upc.cine;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

import java.util.List;

import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import edu.upc.cine.domain.Genero;
import edu.upc.cine.service.GeneroService;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:edu/upc/cine/cxf/applicationTest.xml"})
public class ClienteGeneroServiceTest {
	
	@Autowired
	private GeneroService instance=null;
	
	@Test
	@Ignore
	public void testSave() {
        System.out.println("Genero Save");
        Genero genero=new Genero();  
        genero.setDescripcion("Super Accion");
        genero.setEstado(1);
        
        int result = instance.save(genero);
        	
        assertNotNull(result);
        assertEquals(result, 1);
    }
	
	@Test
	@Ignore
	public void testUpdate() {
        System.out.println("Update Save");
        Genero genero=new Genero();
        genero.setIdGenero(1);
        genero.setDescripcion("test");
        genero.setEstado(1);
        
        
        int result = instance.update(genero);
        	
        assertNotNull(result);
        assertEquals(result, 1);
    }
	
	@Test
	@Ignore
	public void testDelete() {
        System.out.println("Delete Save");
        Genero genero=new Genero();
        genero.setIdGenero(2);
        genero.setDescripcion("test");
        genero.setEstado(1);
        
        
        int result = instance.delete(genero);
        	
        assertNotNull(result);
        assertEquals(result, 1);
    }
	
	@Test
	@Ignore
	public void testGetAll(){
		System.out.println("Genero GetAll");
		
		List<Genero> result=instance.getAll();
		
		assertNotNull(result);
		
	}
	
	@Test
	@Ignore
	public void testGetGenero() {
        System.out.println("Genero Save");
        
        Genero result = instance.getGenero(1);
        	
        assertNotNull(result);
    }
}
