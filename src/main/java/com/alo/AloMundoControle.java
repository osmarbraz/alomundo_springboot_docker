package com.alo;

import java.util.concurrent.atomic.AtomicLong;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class AloMundoControle {

    private final AtomicLong contador = new AtomicLong();
    
    @RequestMapping("/")
    public String index() {
        return contador.incrementAndGet() + " - Alô ,mundo Docker!";
    }
}