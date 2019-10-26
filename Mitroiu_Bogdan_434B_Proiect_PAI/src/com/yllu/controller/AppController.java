package com.yllu.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.yllu.DAO.DAO;
import com.yllu.entity.LocatieFabrica;
import com.yllu.entity.Masini;
import com.yllu.entity.Producatori;

@Controller
@RequestMapping("/")
public class AppController {
	@Autowired
	private DAO dao;
	
	@RequestMapping("/home")
	public String homepage(Model model) {
		
		List<Producatori> producatori=dao.getProducatoriList();
		model.addAttribute("producatori",producatori);
		
		
		return "home_page";
	}
	
	@RequestMapping("/showLocatii")
	public String showLocatii(@RequestParam("ProducatorId") int producator_id,Model model) {
		
		List<LocatieFabrica> locatii=dao.getLocatieFabrica(producator_id);
		Producatori producator=dao.getProducator(producator_id);
		
		
		model.addAttribute("locatii",locatii);
		model.addAttribute("producator",producator);
		
		
		return "locatii_page";
	}
	
	@RequestMapping("/addLocatie")
		public String addLocatie(@RequestParam("ProducatorId") int producator_id,Model model) {
		
			LocatieFabrica new_locatie=new LocatieFabrica();
			new_locatie.setLocatie_id(producator_id);
			model.addAttribute("new_locatie",new_locatie);
			
		return "add_locatie";
		
		
	}
	@GetMapping("/saveLocatie")
		public String showLocatie(@ModelAttribute("new_locatie") LocatieFabrica new_locatie) {
		int id_prodcuator=new_locatie.getLocatie_id();
			dao.addLocatie(new_locatie);			 
			
			
			
		
		return  "redirect:/showLocatii?ProducatorId="+id_prodcuator;
	}
		
	
	@GetMapping("/LocatiiUpdate")
	public String updateLocatii(@RequestParam("Locatie_id") int id,Model model) {
		
		LocatieFabrica new_locatie=dao.getLocatieFabricabyID(id);
		model.addAttribute("new_locatie",new_locatie);
		
		
		
		
		return "add_locatie";
	}
	
	@GetMapping("/DeleteLocatii")
	public String deleteLocatii(@RequestParam("Locatie_id") int id) {
		int id_prodcuator=dao.getLocatieFabricabyID(id).getLocatie_id();
		dao.deleteLocatie(id);
		
		
		return "redirect:/showLocatii?ProducatorId="+id_prodcuator;
	}
	
	@RequestMapping("/showAddProducator")
	public String addProducator(Model model) {
		
		Producatori producator=new Producatori();
		model.addAttribute("new_producator",producator);
		
		return "add_producator";
	}
	
	@GetMapping("/saveProducator")
	public String saveProducator(@ModelAttribute("new_producator") Producatori producator) {
		 
		dao.addProducator(producator);
		
		
		return "redirect:/home";
	}
	
	@GetMapping("/UpdateProducatori")
	public String updateProducatori(@RequestParam("producator_id") int id,Model model) {
		
		Producatori new_producator=dao.getProducator(id);
		model.addAttribute("new_producator",new_producator);

		return "add_producator";
	}
	@GetMapping("/DeleteProducatori")
	public String deleteProducatori(@RequestParam("producator_id") int id) {
		
		dao.deleteProducator(id);
		
		return "redirect:/home";
	}
	@RequestMapping("/showMasini")
	public String showMasini(@RequestParam("producator_id") int producator_id,Model model) {
		
		List<Masini> masini=dao.getMasiniList(producator_id);
		Producatori producator=dao.getProducator(producator_id);
		
		
		model.addAttribute("masini",masini);
		model.addAttribute("producator",producator);
		
		
		return "masini_page";
	}
	@RequestMapping("/addMasina")
	public String addMasina(@RequestParam("ProducatorId") int producator_id,Model model) {
	
		Masini new_masina=new Masini();
		new_masina.setMasina_id(producator_id);
		model.addAttribute("new_masina",new_masina);
		
	return "add_masina";
	
	
}
	@GetMapping("/saveMasina")
	public String showMasina(@ModelAttribute("new_masina") Masini new_masina) {
		int id_prodcuator=new_masina.getMasina_id();
		dao.addMasina(new_masina);			 
		
		
		
	
	return "redirect:/showMasini?producator_id="+id_prodcuator;
	
	
	
}
	@GetMapping("/updateMasina")
	public String updateMasina(@RequestParam("Masina_id") int id,Model model) {
		
		Masini new_masina=dao.getMasinabyID(id);
		model.addAttribute("new_masina",new_masina);
		
		
		
		
		return "add_masina";
	}
	@GetMapping("/DeleteMasina")
	public String deleteMasina(@RequestParam("Masina_id") int id) {
		int id_prodcuator=dao.getMasinabyID(id).getMasina_id();
		dao.deleteMasina(id);
		
		return "redirect:/showMasini?producator_id="+id_prodcuator;
	}
	
	@RequestMapping("/back")
	public String back() {
	
		
		
	return "redirect:/home";
	
	
	
	}
	}