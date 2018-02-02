package ru.dao;

import java.util.List;

public interface GenericDao<T> {
    List<T> findAll();
    T findById(Long id);
    List<T> findByAll(String name);
    Long create(T t);
    Long update(T t);
    void remove(T t);
}

