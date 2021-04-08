package com.bancodedados.bancodedados.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.bancodedados.bancodedados.model.ContatoModel;

public interface ContatoRepository extends JpaRepository<ContatoModel, Long> {

}
