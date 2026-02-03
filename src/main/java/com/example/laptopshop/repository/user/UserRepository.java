package com.example.laptopshop.repository.user;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.laptopshop.domain.User;

@Repository
public interface UserRepository extends JpaRepository<User, Long> // JpaRepository Là interface của Spring Data JPA cung
                                                                  // cấp sẵn hàm
{
    // Method save
    User save(User newUser);

    // Method find
    List<User> findAll();

    // Method find by id
    User findById(long id);

    // Method delete
    void deleteById(long id);
}
