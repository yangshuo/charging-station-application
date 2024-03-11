package org.yangshuosdu.chargingstation.server;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.yangshuosdu.chargingstation.api.DemoService;
import org.yangshuosdu.chargingstation.server.info.dao.DemoDao;
import org.yangshuosdu.chargingstation.server.info.dao.DemoPo;

import java.util.List;

@Service
public class DemoServiceImpl implements DemoService {
    private Logger logger = LoggerFactory.getLogger(DemoServiceImpl.class);
    private DemoDao demoDao;

    public DemoServiceImpl() {
    }

    @Autowired
    public void setDemoDao(DemoDao demoDao) {
        this.demoDao = demoDao;
    }

    @Override
    public List<DemoPo> queryAll() {
        logger.info("get all demo");
        return demoDao.queryAll();
    }
}
