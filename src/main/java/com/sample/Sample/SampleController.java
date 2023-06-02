package com.sample.Sample;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/sample")
@Slf4j
@Component
public class SampleController
{
    @GetMapping("/welcome")
    public String HelloService()
    {
        return "Welcome to Sample Application!";
    }
}
