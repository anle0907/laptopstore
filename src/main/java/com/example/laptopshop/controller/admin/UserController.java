package com.example.laptopshop.controller.admin;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import com.example.laptopshop.domain.User;
import com.example.laptopshop.service.user.UserService;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class UserController {
    // DI service
    private final UserService userService;

    // DI constructor
    public UserController(UserService userService) {
        this.userService = userService;
    }

    /* CREATE */

    // Method get hien thi form
    @RequestMapping("/admin/user/create")
    public String getCreatePage(Model model) {
        model.addAttribute("newUser", new User());
        return "admin/user/create";
    }

    // Method post
    @RequestMapping(value = "/admin/user/create", method = RequestMethod.POST)
    public String createUserPage(Model model,
            @ModelAttribute("newUser") User newData) {
        this.userService.handleSaveUser(newData);
        return "redirect:/admin/user";
    }

    /* SHOW DATA */

    // Method show all user
    @RequestMapping("/admin/user")
    public String getAllUser(Model model) {
        List<User> users = this.userService.getAllUsers();
        model.addAttribute("users1", users);
        return "admin/user/user_table";
    }

    // Method show user detail
    @RequestMapping("/admin/user/{id}")
    public String getUserDetailPage(Model model, @PathVariable long id) {

        User user = userService.getUserById(id);

        if (user == null) {
            return "redirect:/admin/user";
        }

        model.addAttribute("user", user);
        return "admin/user/user_detail";
    }

    /* UPDATE */

    // Get user page by id
    @RequestMapping("/admin/user/update/{id}")
    public String getUpdatePage(Model model, @PathVariable long id) {
        User currentUser = userService.getUserById(id);
        model.addAttribute("newUser", currentUser);
        return "admin/user/user_update";
    }

    // Post update
    @PostMapping("/admin/user/update")
    public String postUpdateUser(Model model,
            @ModelAttribute("newUser") User newData) {
        User currentUser = userService.getUserById(newData.getId());
        if (currentUser != null) {
            currentUser.setAddress(newData.getAddress());
            currentUser.setFullName(newData.getFullName());
            currentUser.setPhone(newData.getPhone());

            this.userService.handleSaveUser(currentUser);
        }
        return "redirect:/admin/user";
    }

    /* DELETE */

    // Get delete page
    @GetMapping("/admin/user/delete/{id}")
    public String getDeleteUserPage(Model model, @PathVariable long id) {
        model.addAttribute("id", id);
        model.addAttribute("newUser", new User());
        return "admin/user/delete";
    }

    // Post delete
    @PostMapping("/admin/user/delete")
    public String postDeleteUserPage(Model model, @ModelAttribute("newUser") User deleteData) {
        this.userService.deleteUser(deleteData.getId());
        return "redirect:/admin/user";
    }

}
