package com.example.laptopshop.service.user;

import java.util.List;

import org.springframework.stereotype.Service;

import com.example.laptopshop.domain.User;
import com.example.laptopshop.repository.user.UserRepository;

@Service
public class UserService {
    // DI repository
    private final UserRepository userRepository;

    // constructor di
    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    // Method find all user
    public List<User> getAllUsers() {
        return this.userRepository.findAll();
    }

    // Method find by id
    public User getUserById(long id) {
        return this.userRepository.findById(id);
    }

    // Method delete by id
    public void deleteUser(long id) {
        this.userRepository.deleteById(id);
    }

    // Method save data
    public User handleSaveUser(User user) {
        User newUser = this.userRepository.save(user);
        return newUser;
    }
}
