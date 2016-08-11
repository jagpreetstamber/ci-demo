package com.example.catalog.web;

import org.junit.Test;

import static org.junit.Assert.assertEquals;

public class CiDemoControllerTest {

    private CiDemoController controller;

    @Test
    public void shouldReturnNameAppenedWithHello() throws Exception {
        String expected = "Welcome Tom";
        controller = new CiDemoController();

        String actual = controller.getName("Tom");

        assertEquals(expected, actual);
    }
}