package edu.unimagdalena.sports.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import edu.unimagdalena.sports.entities.Partida;
@Repository
public interface PartidaRepository extends JpaRepository<Partida, Long> {

}
