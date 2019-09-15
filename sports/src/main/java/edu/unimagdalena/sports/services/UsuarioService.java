package edu.unimagdalena.sports.services;

import org.springframework.stereotype.Service;

import edu.unimagdalena.sports.entities.Usuario;


public interface UsuarioService {
	public Usuario findUsuarioByUsername(String username);
	Usuario getUsuarioById(long id);
	public void save(Usuario usuario);
}
