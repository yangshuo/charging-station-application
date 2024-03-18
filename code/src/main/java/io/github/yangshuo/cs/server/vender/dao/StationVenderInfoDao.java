package io.github.yangshuo.cs.server.vender.dao;

import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface StationVenderInfoDao {
    List<StationVenderInfoPo> queryAll();
}
