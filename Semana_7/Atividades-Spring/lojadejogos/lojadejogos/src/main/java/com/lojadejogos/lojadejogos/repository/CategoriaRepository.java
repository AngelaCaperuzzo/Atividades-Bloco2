package com.lojadejogos.lojadejogos.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.lojadejogos.lojadejogos.model.CategoriaModel;

public interface CategoriaRepository extends JpaRepository<CategoriaModel, Long>{
	
	public List<CategoriaModel>findAllByDescricaoContainingIgnoreCase(String descricao);

}
