package com.yllu.DAO;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.yllu.entity.LocatieFabrica;
import com.yllu.entity.Masini;
import com.yllu.entity.Producatori;

@Repository
public class DAOImpl implements DAO {

	@Autowired
	SessionFactory sessionFactory;
	
	
	@Override
	@Transactional
	public List<Producatori> getProducatoriList() {
		Session session=sessionFactory.getCurrentSession();
		
		Query<Producatori> theQuery=session.createQuery("from Producatori",Producatori.class);
		List<Producatori> producatori=theQuery.getResultList();
		
		return producatori;
	}


	@Override
	@Transactional
	public List<LocatieFabrica> getLocatieFabrica(int producator_id) {
		
		Session session=sessionFactory.getCurrentSession();
		Query<LocatieFabrica> theQuery=session.createQuery("from LocatieFabrica where locatie_id="+producator_id,LocatieFabrica.class);
		List<LocatieFabrica> locatieFabrica=theQuery.getResultList();
		
		
		return locatieFabrica;
	}


	@Override
	@Transactional
	public Producatori getProducator(int producator_id) {
		Session session=sessionFactory.getCurrentSession();
		Producatori producator=session.get(Producatori.class,producator_id);
		
		return producator;
	}


	@Override
	@Transactional
	public void addLocatie(LocatieFabrica new_locatie) {
		
		Session session=sessionFactory.getCurrentSession();
		session.saveOrUpdate(new_locatie);
		
	}


	@Override
	@Transactional
	public LocatieFabrica getLocatieFabricabyID(int id) {
		Session session=sessionFactory.getCurrentSession();
		LocatieFabrica locatie=session.get(LocatieFabrica.class,id);
		return locatie;
	}


	@Override
	@Transactional
	public void deleteLocatie(int id) {
		Session session=sessionFactory.getCurrentSession();
		Query theQuery=session.createQuery("delete from LocatieFabrica where id="+id);
		theQuery.executeUpdate();
	}


	@Override
	@Transactional
	public void addProducator(Producatori producator) {
		Session session=sessionFactory.getCurrentSession();
		session.saveOrUpdate(producator);
		
	}


	@Override
	@Transactional
	public void deleteProducator(int id) {
		Session session=sessionFactory.getCurrentSession();
		Query theQuery1=session.createQuery("delete from Producatori where id="+id);
		Query theQuery2=session.createQuery("delete from LocatieFabrica where locatie_id="+id);
		
		theQuery2.executeUpdate();
		theQuery1.executeUpdate();
	}


	@Override
	@Transactional
	public void deleteMasina(int id) {
		Session session=sessionFactory.getCurrentSession();
		Query theQuery=session.createQuery("delete from Masini where id="+id);
		theQuery.executeUpdate();
		
	}


	@Override
	@Transactional
	public Masini getMasinabyID(int id) {
		Session session=sessionFactory.getCurrentSession();
		Masini masina=session.get(Masini.class,id);
		return masina;
	}


	@Override
	@Transactional
	public void addMasina(Masini new_masina) {
		Session session=sessionFactory.getCurrentSession();
		session.saveOrUpdate(new_masina);
		
	}


	@Override
	@Transactional
	public List<Masini> getMasiniList(int producator_id) {
		Session session=sessionFactory.getCurrentSession();
		Query<Masini> theQuery=session.createQuery("from Masini where masina_id="+producator_id,Masini.class);
		List<Masini> masini=theQuery.getResultList();
		
		return masini;
		
	}
	
	
}
