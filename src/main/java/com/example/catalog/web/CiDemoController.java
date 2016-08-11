package com.example.catalog.web;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

@RestController
class CiDemoController {

    @RequestMapping(value = "/cidemo/{name}", method = GET)
    String getName(@PathVariable String name) {
        return "Hello " + name;
    }
}
