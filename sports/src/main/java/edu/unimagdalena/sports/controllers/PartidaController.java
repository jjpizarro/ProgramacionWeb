package edu.unimagdalena.sports.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import edu.unimagdalena.sports.entities.Partida;
import edu.unimagdalena.sports.entities.Usuario;
import edu.unimagdalena.sports.services.PartidaService;
import edu.unimagdalena.sports.services.UsuarioService;

@Controller
public class PartidaController {
	@Autowired
	private UsuarioService usuarioService;
	@Autowired
	private PartidaService partidaService;
	
	@GetMapping("/crear-partida")
	public String mostrarFormCrearPartida(Model model) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		Usuario  us = usuarioService.findUsuarioByUsername(auth.getName());
		
		Partida partida = new Partida();
		partida.setCreador(us.getUsername());
		
		model.addAttribute("partida",partida);
		return "crearpartida";
	}
	@PostMapping("/crear-partida")
	public String crearPartida(@Valid Partida partida, Model model) {
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        
		Usuario  us = usuarioService.findUsuarioByUsername(auth.getName());
		partida.setCreador(us.getNombre());
		
		partidaService.save(partida);
		
		List<Partida> partidas = partidaService.buscarPartidasPorUsuario(us);
		model.addAttribute("mispartidas", partidas);
		return "mispartidas";
		
		
	}
	
}
