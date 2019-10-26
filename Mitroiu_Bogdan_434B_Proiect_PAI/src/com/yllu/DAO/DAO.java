package com.yllu.DAO;

import java.util.List;

import com.yllu.entity.LocatieFabrica;
import com.yllu.entity.Masini;
import com.yllu.entity.Producatori;

public interface DAO {
	List<Producatori> getProducatoriList();
	List<LocatieFabrica> getLocatieFabrica(int producator_id);
	Producatori getProducator(int producator_id);
	void addLocatie(LocatieFabrica new_locatie);
	LocatieFabrica getLocatieFabricabyID(int id);
	void deleteLocatie(int id);
	void addProducator(Producatori producator);
	void deleteProducator(int id);
	
	public void deleteMasina(int id);
	public Masini getMasinabyID(int id);
	public void addMasina(Masini new_masina);
	public List<Masini> getMasiniList(int producator_id);
}
