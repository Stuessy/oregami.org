package org.oregami.data;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;

import org.oregami.entities.Game;


public class SpielDAO {

	
	public static Game ladeSpiel(int id) {
		Game s = null;
		
        EntityManagerFactory entityManagerFactory = HibernateJpaUtil.getEntityManagerFactory();
        
        EntityManager entityManager = entityManagerFactory.createEntityManager();
        EntityTransaction tx = entityManager.getTransaction();
        tx.begin();
        
        s = entityManager.find(Game.class, new Long("" + id));
		
        //entityManager.close();
		return s;
	}
	
	public static List<Game> listeSpiele() {
		
		List<Game> listeSpiele = new ArrayList<Game>();
		
		EntityManagerFactory entityManagerFactory = HibernateJpaUtil.getEntityManagerFactory();
        
        EntityManager entityManager = entityManagerFactory.createEntityManager();
        EntityTransaction tx = entityManager.getTransaction();
        tx.begin();
        
		Query query = entityManager.createQuery("SELECT s FROM Spiel s");
		List lst = query.getResultList();
		Iterator it = lst.iterator();
		while (it.hasNext()){
			Game s = (Game) it.next();
			System.out.print(" Name:"+s.getMainTitle());
		}
		
		return listeSpiele;
		
	}
}