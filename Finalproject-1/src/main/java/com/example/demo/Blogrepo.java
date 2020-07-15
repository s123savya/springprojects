package com.example.demo;

import org.springframework.data.repository.CrudRepository;
import com.example.demo.Blogdetails;
public interface Blogrepo extends CrudRepository<Blogdetails, Integer>{

}
