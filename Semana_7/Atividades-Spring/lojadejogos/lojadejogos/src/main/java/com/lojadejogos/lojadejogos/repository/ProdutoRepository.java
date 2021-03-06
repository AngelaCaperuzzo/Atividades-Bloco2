package com.lojadejogos.lojadejogos.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.lojadejogos.lojadejogos.model.ProdutoModel;
@Repository
public interface ProdutoRepository extends JpaRepository<ProdutoModel, Long>{
	public List<ProdutoModel> findByNomeContainingIgnoreCase (String nome);

}
