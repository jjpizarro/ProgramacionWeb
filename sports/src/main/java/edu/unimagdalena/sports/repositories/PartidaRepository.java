package edu.unimagdalena.sports.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import edu.unimagdalena.sports.entities.Partida;
@Repository
public interface PartidaRepository extends JpaRepository<Partida, Long> {
	List<Partida> findPartidasByCreador(String creador);
}
