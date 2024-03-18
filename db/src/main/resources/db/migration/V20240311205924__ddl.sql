-- 用户基本信息 --
drop table if exists user_info;
create table user_info
(
    user_name       varchar(32) not null,
    user_name_cn       varchar(16) not null,
    user_mobile     varchar(32),
    user_email      varchar(32),
    user_enable     boolean     not null,
    constraint pk_user primary key (user_name)
);
comment on table user_info is '用户基本信息';
comment on column user_info.user_name is '用户ID，用户的唯一表示';
comment on column user_info.user_name_cn is '用户名称';
comment on column user_info.user_mobile is '用户手机';
comment on column user_info.user_email is '用户邮箱';
comment on column user_info.user_email is '用户是否启用, true - 启用, false - 禁用';

-- 充电桩品牌基本信息 --
drop table if exists charge_station_brand_info;
create table charge_station_brand_info
(
    brand_id     int        not null,
    brand_name   varchar(32) not null,
    brand_desc   varchar(256) not null,
    brand_order  int        not null,
    brand_enable boolean not null,
    constraint pk_charge_station_vendor primary key(brand_id)
);

comment on table charge_station_brand_info is '充电桩基本信息';
comment on column charge_station_brand_info.brand_id is '充电桩提供商ID';
comment on column charge_station_brand_info.brand_name is '充电桩提供商名称';
comment on column charge_station_brand_info.brand_order is '充电桩提供商显示顺序';
comment on column charge_station_brand_info.brand_desc is '充电桩描述';
comment on column charge_station_brand_info.brand_enable is '充电桩是否可用，true-可用,false-不可用';

insert into charge_station_brand_info(brand_id, brand_name, brand_desc, brand_order, brand_enable)
values
(1, '特斯拉', '特斯拉作为全球最著名的电动汽车品牌之一，其充电桩的品质和性能处于行业领先地位。特斯拉的充电桩具有高效、耐用等特点。', 1, true),
(2, '比亚迪', '比亚迪作为国内最早从事新能源汽车研发和生产的企业之一,其充电桩具备快速充电、安全、高效和可靠等优点。比亚迪的充电桩不仅具备基本功能，还支持多种接口，方便用户充电。因此，在充电桩品牌中，比亚迪是最好的选择之一。', 2, true);

drop table if exists charge_station_info;
create table charge_station_info
(
    station_id          int          not null,
    station_name        varchar(32)  not null,
    station_desc        varchar(512) not null,
    station_order       int          not null,
    station_owner_id       varchar(32)  not null,
    station_brand_id      int         not null,
    station_enable      boolean     not null,
    constraint pk_charge_station primary key(station_id)
);
comment on table charge_station_info is '充电桩信息';
comment on column charge_station_info.station_id is '充电桩编号';
comment on column charge_station_info.station_name is '充电桩名称';
comment on column charge_station_info.station_desc is '充电桩描述';
comment on column charge_station_info.station_order is '充电桩显示顺序';
comment on column charge_station_info.station_owner_id is '充电桩所有者编号';
comment on column charge_station_info.station_brand_id is '充电桩品牌编号';
comment on column charge_station_info.station_enable is '充电桩是否启用';

