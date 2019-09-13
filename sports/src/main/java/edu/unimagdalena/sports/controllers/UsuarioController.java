package edu.unimagdalena.sports.controllers;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import edu.unimagdalena.sports.entities.Partida;
import edu.unimagdalena.sports.entities.Usuario;
import edu.unimagdalena.sports.repositories.PartidaRepository;
import edu.unimagdalena.sports.repositories.UsuarioRespository;

@Controller
public class UsuarioController {
	
	@Autowired
	private UsuarioRespository usuarioRepositorio;
	@Autowired
	private PartidaRepository partidaRepositorio;
	
	@GetMapping("/home") 
	public String index(Model model) {
		
		return "home";
	}
	@GetMapping("/crear-partida")
	public String mostrarFormCrearPartida(Model model) {
		return "crearpartida";
	}
	@PostMapping("/crear-partida")
	public String crearPartida(@Valid Partida partida, Model model) {
		Usuario  us = usuarioRepositorio.getOne((long) 1);
		partida.setCreador(us.getNombre());
		
		partidaRepositorio.save(partida);
		return "listarpastidas";
		
		
	}
	
	
	@GetMapping("/registro")
	public String mostrarFormRegistro(Model model) {
		Usuario u = new Usuario(); 
		model.addAttribute("usuario", u);
		return "registro";
	}
	
	
	
	@PostMapping("/registro")
	public String registroUsuario(@Valid Usuario usuario, BindingResult result, Model model) {
		if(result.hasErrors()) {
			return "registro";
		}
		usuarioRepositorio.save(usuario);
		
		model.addAttribute("user",usuario);
		
		return "home";
	}
	
}
