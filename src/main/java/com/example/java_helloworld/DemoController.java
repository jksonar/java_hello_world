package com.example.java_helloworld;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class DemoController {

    @GetMapping("/app")
    public String getMessage() {
        return "Hello World from dev update";
    }
}
