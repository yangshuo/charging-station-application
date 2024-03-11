package org.yangshuosdu.chargingstation.server.info.dao;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface DemoDao {
    @Select("select * from demo")
    List<DemoPo> queryAll();
}
