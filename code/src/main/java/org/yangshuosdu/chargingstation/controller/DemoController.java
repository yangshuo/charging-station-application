package org.yangshuosdu.chargingstation.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.yangshuosdu.chargingstation.api.DemoService;
import org.yangshuosdu.chargingstation.server.info.dao.DemoPo;

import java.util.List;

@RestController
@RequestMapping("/api/demo/")
public class DemoController {
    @Autowired
    private DemoService demoService;


    @GetMapping("/all")
    public List<DemoPo> queryAll(){
        return demoService.queryAll();
    }
}
