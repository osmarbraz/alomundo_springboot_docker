package com.alo;

import static org.assertj.core.api.Assertions.assertThat;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class TestAplicacaoPrincipal {

    @Autowired
    private AloMundoControle controle;

    @Test
    public void contextLoads() throws Exception {
        assertThat(controle).isNotNull();
    }
}
