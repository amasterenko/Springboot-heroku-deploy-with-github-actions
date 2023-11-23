package org.example;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.UUID;

@RestController
public class Controller {

    private static final Logger LOGGER = LoggerFactory.getLogger("Controller");

    @GetMapping("/guids")
    public ResponseEntity<String> getData() {
        final var guid = UUID.randomUUID().toString();
        LOGGER.info("Sending response: {}", guid);
        return ResponseEntity.ok(guid);
    }
}
