/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2008                    */
/* Created on:     4/3/2018 10:52:31 AM                         */
/*==============================================================*/


if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('BOMON') and o.name = 'FK_BOMON_GOM_KHOA')
alter table BOMON
   drop constraint FK_BOMON_GOM_KHOA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('GIAOVIEN') and o.name = 'FK_GIAOVIEN_DAY2_MONHOC')
alter table GIAOVIEN
   drop constraint FK_GIAOVIEN_DAY2_MONHOC
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('GIAOVIEN') and o.name = 'FK_GIAOVIEN_PHUTRACH_BOMON')
alter table GIAOVIEN
   drop constraint FK_GIAOVIEN_PHUTRACH_BOMON
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('HEDAOTAO') and o.name = 'FK_HEDAOTAO_COCAC_TRUONG')
alter table HEDAOTAO
   drop constraint FK_HEDAOTAO_COCAC_TRUONG
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('HOC') and o.name = 'FK_HOC_HOC_SINHVIEN')
alter table HOC
   drop constraint FK_HOC_HOC_SINHVIEN
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('HOC') and o.name = 'FK_HOC_HOC2_MONHOC')
alter table HOC
   drop constraint FK_HOC_HOC2_MONHOC
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('KHOA') and o.name = 'FK_KHOA_GOMCOCAC_TRUONG')
alter table KHOA
   drop constraint FK_KHOA_GOMCOCAC_TRUONG
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('LOP') and o.name = 'FK_LOP_BAOGOM_KHOA')
alter table LOP
   drop constraint FK_LOP_BAOGOM_KHOA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('MONHOC') and o.name = 'FK_MONHOC_DAY_GIAOVIEN')
alter table MONHOC
   drop constraint FK_MONHOC_DAY_GIAOVIEN
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SINHVIEN') and o.name = 'FK_SINHVIEN_CO_LOP')
alter table SINHVIEN
   drop constraint FK_SINHVIEN_CO_LOP
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DANHSACHSINHVIEN')
            and   type = 'V')
   drop view DANHSACHSINHVIEN
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('BOMON')
            and   name  = 'GOM_FK'
            and   indid > 0
            and   indid < 255)
   drop index BOMON.GOM_FK
go

alter table BOMON
   drop constraint PK_BOMON
go

if exists (select 1
            from  sysobjects
           where  id = object_id('BOMON')
            and   type = 'U')
   drop table BOMON
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('GIAOVIEN')
            and   name  = 'PHUTRACH_FK'
            and   indid > 0
            and   indid < 255)
   drop index GIAOVIEN.PHUTRACH_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('GIAOVIEN')
            and   name  = 'DAY2_FK'
            and   indid > 0
            and   indid < 255)
   drop index GIAOVIEN.DAY2_FK
go

alter table GIAOVIEN
   drop constraint PK_GIAOVIEN
go

if exists (select 1
            from  sysobjects
           where  id = object_id('GIAOVIEN')
            and   type = 'U')
   drop table GIAOVIEN
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('HEDAOTAO')
            and   name  = 'COCAC_FK'
            and   indid > 0
            and   indid < 255)
   drop index HEDAOTAO.COCAC_FK
go

alter table HEDAOTAO
   drop constraint PK_HEDAOTAO
go

if exists (select 1
            from  sysobjects
           where  id = object_id('HEDAOTAO')
            and   type = 'U')
   drop table HEDAOTAO
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('HOC')
            and   name  = 'HOC2_FK'
            and   indid > 0
            and   indid < 255)
   drop index HOC.HOC2_FK
go

alter table HOC
   drop constraint PK_HOC
go

if exists (select 1
            from  sysobjects
           where  id = object_id('HOC')
            and   type = 'U')
   drop table HOC
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('KHOA')
            and   name  = 'GOMCOCAC_FK'
            and   indid > 0
            and   indid < 255)
   drop index KHOA.GOMCOCAC_FK
go

alter table KHOA
   drop constraint PK_KHOA
go

if exists (select 1
            from  sysobjects
           where  id = object_id('KHOA')
            and   type = 'U')
   drop table KHOA
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('LOP')
            and   name  = 'BAOGOM_FK'
            and   indid > 0
            and   indid < 255)
   drop index LOP.BAOGOM_FK
go

alter table LOP
   drop constraint PK_LOP
go

if exists (select 1
            from  sysobjects
           where  id = object_id('LOP')
            and   type = 'U')
   drop table LOP
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('MONHOC')
            and   name  = 'DAY_FK'
            and   indid > 0
            and   indid < 255)
   drop index MONHOC.DAY_FK
go

alter table MONHOC
   drop constraint PK_MONHOC
go

if exists (select 1
            from  sysobjects
           where  id = object_id('MONHOC')
            and   type = 'U')
   drop table MONHOC
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('SINHVIEN')
            and   name  = 'CO_FK'
            and   indid > 0
            and   indid < 255)
   drop index SINHVIEN.CO_FK
go

alter table SINHVIEN
   drop constraint PK_SINHVIEN
go

if exists (select 1
            from  sysobjects
           where  id = object_id('SINHVIEN')
            and   type = 'U')
   drop table SINHVIEN
go

alter table TRUONG
   drop constraint PK_TRUONG
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TRUONG')
            and   type = 'U')
   drop table TRUONG
go

/*==============================================================*/
/* Table: BOMON                                                 */
/*==============================================================*/
create table BOMON (
   MABM                 char(10)             not null,
   MAKHOA               char(10)             not null,
   TENBM                text                 null
)
go

alter table BOMON
   add constraint PK_BOMON primary key nonclustered (MABM)
go

/*==============================================================*/
/* Index: GOM_FK                                                */
/*==============================================================*/
create index GOM_FK on BOMON (
MAKHOA ASC
)
go

/*==============================================================*/
/* Table: GIAOVIEN                                              */
/*==============================================================*/
create table GIAOVIEN (
   MAGV                 char(10)             not null,
   MAMH                 char(10)             not null,
   MABM                 char(10)             not null,
   HOGV                 text                 null,
   TENGV                text                 null,
   DIACHIGV             text                 null,
   SDTGV                char(11)             null,
   HOCHAMHOCVI          text                 null
)
go

alter table GIAOVIEN
   add constraint PK_GIAOVIEN primary key nonclustered (MAGV)
go

/*==============================================================*/
/* Index: DAY2_FK                                               */
/*==============================================================*/
create index DAY2_FK on GIAOVIEN (
MAMH ASC
)
go

/*==============================================================*/
/* Index: PHUTRACH_FK                                           */
/*==============================================================*/
create index PHUTRACH_FK on GIAOVIEN (
MABM ASC
)
go

/*==============================================================*/
/* Table: HEDAOTAO                                              */
/*==============================================================*/
create table HEDAOTAO (
   MAHDT                char(10)             not null,
   MATRUONG             char(10)             not null,
   TENHDT               text                 null
)
go

alter table HEDAOTAO
   add constraint PK_HEDAOTAO primary key nonclustered (MAHDT)
go

/*==============================================================*/
/* Index: COCAC_FK                                              */
/*==============================================================*/
create index COCAC_FK on HEDAOTAO (
MATRUONG ASC
)
go

/*==============================================================*/
/* Table: HOC                                                   */
/*==============================================================*/
create table HOC (
   MASV                 char(20)             not null,
   MAMH                 char(10)             not null
)
go

alter table HOC
   add constraint PK_HOC primary key (MASV, MAMH)
go

/*==============================================================*/
/* Index: HOC2_FK                                               */
/*==============================================================*/
create index HOC2_FK on HOC (
MAMH ASC
)
go

/*==============================================================*/
/* Table: KHOA                                                  */
/*==============================================================*/
create table KHOA (
   MAKHOA               char(10)             not null,
   MATRUONG             char(10)             not null,
   TENKHOA              text                 null
)
go

alter table KHOA
   add constraint PK_KHOA primary key nonclustered (MAKHOA)
go

/*==============================================================*/
/* Index: GOMCOCAC_FK                                           */
/*==============================================================*/
create index GOMCOCAC_FK on KHOA (
MATRUONG ASC
)
go

/*==============================================================*/
/* Table: LOP                                                   */
/*==============================================================*/
create table LOP (
   MALOP                char(10)             not null,
   MAKHOA               char(10)             not null,
   TENLOP               text                 null
)
go

alter table LOP
   add constraint PK_LOP primary key nonclustered (MALOP)
go

/*==============================================================*/
/* Index: BAOGOM_FK                                             */
/*==============================================================*/
create index BAOGOM_FK on LOP (
MAKHOA ASC
)
go

/*==============================================================*/
/* Table: MONHOC                                                */
/*==============================================================*/
create table MONHOC (
   MAMH                 char(10)             not null,
   MAGV                 char(10)             null,
   TENMH                text                 null,
   SOTIET               numeric              null,
   NGAYBD               datetime             null,
   NGAYKT               datetime             null
)
go

alter table MONHOC
   add constraint PK_MONHOC primary key nonclustered (MAMH)
go

/*==============================================================*/
/* Index: DAY_FK                                                */
/*==============================================================*/
create index DAY_FK on MONHOC (
MAGV ASC
)
go

/*==============================================================*/
/* Table: SINHVIEN                                              */
/*==============================================================*/
create table SINHVIEN (
   MASV                 char(20)             not null,
   MALOP                char(10)             not null,
   HOSV                 text                 null,
   TENSV                text                 null,
   DIACHISV             text                 null,
   SDTSV                char(11)             null,
   NGAYSINH             datetime             null,
   XEPLOAITN            text                 null,
   NAMTN                datetime             null
)
go

alter table SINHVIEN
   add constraint PK_SINHVIEN primary key nonclustered (MASV)
go

/*==============================================================*/
/* Index: CO_FK                                                 */
/*==============================================================*/
create index CO_FK on SINHVIEN (
MALOP ASC
)
go

/*==============================================================*/
/* Table: TRUONG                                                */
/*==============================================================*/
create table TRUONG (
   MATRUONG             char(10)             not null,
   TENTRUONG            text                 null
)
go

alter table TRUONG
   add constraint PK_TRUONG primary key nonclustered (MATRUONG)
go

/*==============================================================*/
/* View: DANHSACHSINHVIEN                                       */
/*==============================================================*/
create view DANHSACHSINHVIEN as
select MaSV, MaLop, HoSV, TenSV, DiaChiSV ,SDTSV, NgaySinh, XepLoaiTN, NamTN From SinhVien
go

alter table BOMON
   add constraint FK_BOMON_GOM_KHOA foreign key (MAKHOA)
      references KHOA (MAKHOA)
go

alter table GIAOVIEN
   add constraint FK_GIAOVIEN_DAY2_MONHOC foreign key (MAMH)
      references MONHOC (MAMH)
go

alter table GIAOVIEN
   add constraint FK_GIAOVIEN_PHUTRACH_BOMON foreign key (MABM)
      references BOMON (MABM)
go

alter table HEDAOTAO
   add constraint FK_HEDAOTAO_COCAC_TRUONG foreign key (MATRUONG)
      references TRUONG (MATRUONG)
go

alter table HOC
   add constraint FK_HOC_HOC_SINHVIEN foreign key (MASV)
      references SINHVIEN (MASV)
go

alter table HOC
   add constraint FK_HOC_HOC2_MONHOC foreign key (MAMH)
      references MONHOC (MAMH)
go

alter table KHOA
   add constraint FK_KHOA_GOMCOCAC_TRUONG foreign key (MATRUONG)
      references TRUONG (MATRUONG)
go

alter table LOP
   add constraint FK_LOP_BAOGOM_KHOA foreign key (MAKHOA)
      references KHOA (MAKHOA)
go

alter table MONHOC
   add constraint FK_MONHOC_DAY_GIAOVIEN foreign key (MAGV)
      references GIAOVIEN (MAGV)
go

alter table SINHVIEN
   add constraint FK_SINHVIEN_CO_LOP foreign key (MALOP)
      references LOP (MALOP)
go

