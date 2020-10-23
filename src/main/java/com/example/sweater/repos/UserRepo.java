package com.example.sweater.repos;

import com.example.sweater.domain.Role;
import com.example.sweater.domain.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;
import java.util.Optional;

public interface UserRepo extends JpaRepository<User, Long> {
    User findByUsername(String username);
    List<User> findByRoles(Role role);

}
