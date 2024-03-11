package org.yangshuosdu.chargingstation.api;

import org.yangshuosdu.chargingstation.server.info.dao.DemoPo;

import java.util.List;

public interface DemoService {
    List<DemoPo> queryAll();
}
