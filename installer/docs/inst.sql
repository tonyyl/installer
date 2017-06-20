/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2017/6/21 6:35:42                            */
/*==============================================================*/


drop table if exists INST_CONFIG_BASE;

drop table if exists INST_CONFIG_FIELD;

drop table if exists INST_OPERATOR;

drop table if exists INST_PROJECT_BASE;

drop table if exists INST_PROJECT_BUILD;

/*==============================================================*/
/* Table: INST_CONFIG_BASE                                      */
/*==============================================================*/
create table INST_CONFIG_BASE
(
   id                   bigint not null,
   name                 varchar(32),
   type                 varchar(4),
   filename             varchar(128),
   encode               varchar(16),
   project_id           bigint,
   primary key (id)
);

alter table INST_CONFIG_BASE comment '项目配置基本信息';

/*==============================================================*/
/* Table: INST_CONFIG_FIELD                                     */
/*==============================================================*/
create table INST_CONFIG_FIELD
(
   id                   bigint not null,
   base_id              bigint,
   name                 varchar(64),
   value                varchar(512),
   primary key (id)
);

alter table INST_CONFIG_FIELD comment '配置项信息表';

/*==============================================================*/
/* Table: INST_OPERATOR                                         */
/*==============================================================*/
create table INST_OPERATOR
(
   id                   bigint not null,
   username             varchar(32),
   password             varchar(100),
   authkey              varchar(512),
   logintime            timestamp,
   primary key (id)
);

alter table INST_OPERATOR comment '安装平台用户表';

/*==============================================================*/
/* Table: INST_PROJECT_BASE                                     */
/*==============================================================*/
create table INST_PROJECT_BASE
(
   id                   bigint not null,
   name                 varchar(64),
   "desc"               varchar(256),
   code                 varchar(64),
   owner                varchar(32),
   status               int,
   primary key (id)
);

alter table INST_PROJECT_BASE comment '安装平台项目基本信息表';

/*==============================================================*/
/* Table: INST_PROJECT_BUILD                                    */
/*==============================================================*/
create table INST_PROJECT_BUILD
(
   id                   bigint not null,
   src_dir              varchar(128),
   lib_dir              varchar(128),
   config_dir           varchar(128),
   web_dir              varchar(128),
   java_home            varchar(128),
   dist_filename        varchar(128),
   project_id           bigint,
   primary key (id)
);

alter table INST_PROJECT_BUILD comment '项目构建表';

