/*==============================================================*/
/* DBMS name:      PostgreSQL 8                                 */
/* Created on:     14/11/2021 23:20:17                          */
/*==============================================================*/


/*==============================================================*/
/* Table: ADIMINISTRADOR                                        */
/*==============================================================*/
create table ADIMINISTRADOR (
   A_ID                 INT4                 not null,
   P_ID                 INT4                 not null,
   A_INGRESOLABORAL     MONEY                null,
   constraint PK_ADIMINISTRADOR primary key (A_ID)
);

/*==============================================================*/
/* Index: ADIMINISTRADOR_PK                                     */
/*==============================================================*/
create unique index ADIMINISTRADOR_PK on ADIMINISTRADOR (
A_ID
);

/*==============================================================*/
/* Index: RELATIONSHIP_1_FK                                     */
/*==============================================================*/
create  index RELATIONSHIP_1_FK on ADIMINISTRADOR (
P_ID
);

/*==============================================================*/
/* Table: CLIENTE                                               */
/*==============================================================*/
create table CLIENTE (
   C_ID                 INT4                 not null,
   P_ID                 INT4                 not null,
   C_METOPAGO           CHAR(20)             null,
   constraint PK_CLIENTE primary key (C_ID)
);

/*==============================================================*/
/* Index: CLIENTE_PK                                            */
/*==============================================================*/
create unique index CLIENTE_PK on CLIENTE (
C_ID
);

/*==============================================================*/
/* Index: RELATIONSHIP_4_FK                                     */
/*==============================================================*/
create  index RELATIONSHIP_4_FK on CLIENTE (
P_ID
);

/*==============================================================*/
/* Table: FACTURA                                               */
/*==============================================================*/
create table FACTURA (
   FA_ID                INT4                 not null,
   PA_ID                INT4                 not null,
   C_ID                 INT4                 not null,
   RE_ID                INT4                 not null,
   FA_FECHA             DATE                 null,
   FA_VALORFINAL        MONEY                null,
   constraint PK_FACTURA primary key (FA_ID)
);

/*==============================================================*/
/* Index: FACTURA_PK                                            */
/*==============================================================*/
create unique index FACTURA_PK on FACTURA (
FA_ID
);

/*==============================================================*/
/* Index: RELATIONSHIP_9_FK                                     */
/*==============================================================*/
create  index RELATIONSHIP_9_FK on FACTURA (
PA_ID
);

/*==============================================================*/
/* Index: RELATIONSHIP_10_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_10_FK on FACTURA (
C_ID
);

/*==============================================================*/
/* Index: RELATIONSHIP_11_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_11_FK on FACTURA (
RE_ID
);

/*==============================================================*/
/* Table: GUARDIA                                               */
/*==============================================================*/
create table GUARDIA (
   G_ID                 INT4                 not null,
   P_ID                 INT4                 not null,
   G_HORARIO            CHAR(20)             null,
   constraint PK_GUARDIA primary key (G_ID)
);

/*==============================================================*/
/* Index: GUARDIA_PK                                            */
/*==============================================================*/
create unique index GUARDIA_PK on GUARDIA (
G_ID
);

/*==============================================================*/
/* Index: RELATIONSHIP_3_FK                                     */
/*==============================================================*/
create  index RELATIONSHIP_3_FK on GUARDIA (
P_ID
);

/*==============================================================*/
/* Table: HABITACION                                            */
/*==============================================================*/
create table HABITACION (
   H_ID                 INT4                 not null,
   H_NOMBRE             CHAR(20)             null,
   H_NUMEROCAMAS        NUMERIC(10)          null,
   H_TIPO               CHAR(20)             null,
   constraint PK_HABITACION primary key (H_ID)
);

/*==============================================================*/
/* Index: HABITACION_PK                                         */
/*==============================================================*/
create unique index HABITACION_PK on HABITACION (
H_ID
);

/*==============================================================*/
/* Table: PAQUETE                                               */
/*==============================================================*/
create table PAQUETE (
   PA_ID                INT4                 not null,
   PRO_ID               INT4                 not null,
   SE_ID                INT4                 not null,
   constraint PK_PAQUETE primary key (PA_ID)
);

/*==============================================================*/
/* Index: PAQUETE_PK                                            */
/*==============================================================*/
create unique index PAQUETE_PK on PAQUETE (
PA_ID
);

/*==============================================================*/
/* Index: RELATIONSHIP_7_FK                                     */
/*==============================================================*/
create  index RELATIONSHIP_7_FK on PAQUETE (
PRO_ID
);

/*==============================================================*/
/* Index: RELATIONSHIP_8_FK                                     */
/*==============================================================*/
create  index RELATIONSHIP_8_FK on PAQUETE (
SE_ID
);

/*==============================================================*/
/* Table: PERSONA                                               */
/*==============================================================*/
create table PERSONA (
   P_ID                 INT4                 not null,
   P_NOMBRE             CHAR(30)             null,
   P_APELLIDO           CHAR(20)             null,
   P_TELEFONO           NUMERIC(10)          null,
   P_DIRECCION          CHAR(40)             null,
   P_CEDULA             NUMERIC(10)          null,
   constraint PK_PERSONA primary key (P_ID)
);

/*==============================================================*/
/* Index: PERSONA_PK                                            */
/*==============================================================*/
create unique index PERSONA_PK on PERSONA (
P_ID
);

/*==============================================================*/
/* Table: PROMOCION                                             */
/*==============================================================*/
create table PROMOCION (
   PRO_ID               INT4                 not null,
   PRO_NOMBRE           CHAR(20)             null,
   PRO_DESCUENTO        NUMERIC(10)          null,
   constraint PK_PROMOCION primary key (PRO_ID)
);

/*==============================================================*/
/* Index: PROMOCION_PK                                          */
/*==============================================================*/
create unique index PROMOCION_PK on PROMOCION (
PRO_ID
);

/*==============================================================*/
/* Table: RECEPCIONISTA                                         */
/*==============================================================*/
create table RECEPCIONISTA (
   R_ID                 INT4                 not null,
   P_ID                 INT4                 not null,
   R_HORARIO            CHAR(20)             null,
   constraint PK_RECEPCIONISTA primary key (R_ID)
);

/*==============================================================*/
/* Index: RECEPCIONISTA_PK                                      */
/*==============================================================*/
create unique index RECEPCIONISTA_PK on RECEPCIONISTA (
R_ID
);

/*==============================================================*/
/* Index: RELATIONSHIP_2_FK                                     */
/*==============================================================*/
create  index RELATIONSHIP_2_FK on RECEPCIONISTA (
P_ID
);

/*==============================================================*/
/* Table: RESERVASION                                           */
/*==============================================================*/
create table RESERVASION (
   RE_ID                INT4                 not null,
   C_ID                 INT4                 not null,
   H_ID                 INT4                 not null,
   RE_TIPO              CHAR(20)             null,
   RE_FECHAENTRADA      DATE                 null,
   RE_FECHASALIDA       DATE                 null,
   RE_OBSERVACION       CHAR(70)             null,
   constraint PK_RESERVASION primary key (RE_ID)
);

/*==============================================================*/
/* Index: RESERVASION_PK                                        */
/*==============================================================*/
create unique index RESERVASION_PK on RESERVASION (
RE_ID
);

/*==============================================================*/
/* Index: RELATIONSHIP_5_FK                                     */
/*==============================================================*/
create  index RELATIONSHIP_5_FK on RESERVASION (
C_ID
);

/*==============================================================*/
/* Index: RELATIONSHIP_6_FK                                     */
/*==============================================================*/
create  index RELATIONSHIP_6_FK on RESERVASION (
H_ID
);

/*==============================================================*/
/* Table: SERVICIO                                              */
/*==============================================================*/
create table SERVICIO (
   SE_ID                INT4                 not null,
   SE_NOMBRE            CHAR(25)             null,
   constraint PK_SERVICIO primary key (SE_ID)
);

/*==============================================================*/
/* Index: SERVICIO_PK                                           */
/*==============================================================*/
create unique index SERVICIO_PK on SERVICIO (
SE_ID
);

alter table ADIMINISTRADOR
   add constraint FK_ADIMINIS_RELATIONS_PERSONA foreign key (P_ID)
      references PERSONA (P_ID)
      on delete restrict on update restrict;

alter table CLIENTE
   add constraint FK_CLIENTE_RELATIONS_PERSONA foreign key (P_ID)
      references PERSONA (P_ID)
      on delete restrict on update restrict;

alter table FACTURA
   add constraint FK_FACTURA_RELATIONS_CLIENTE foreign key (C_ID)
      references CLIENTE (C_ID)
      on delete restrict on update restrict;

alter table FACTURA
   add constraint FK_FACTURA_RELATIONS_RESERVAS foreign key (RE_ID)
      references RESERVASION (RE_ID)
      on delete restrict on update restrict;

alter table FACTURA
   add constraint FK_FACTURA_RELATIONS_PAQUETE foreign key (PA_ID)
      references PAQUETE (PA_ID)
      on delete restrict on update restrict;

alter table GUARDIA
   add constraint FK_GUARDIA_RELATIONS_PERSONA foreign key (P_ID)
      references PERSONA (P_ID)
      on delete restrict on update restrict;

alter table PAQUETE
   add constraint FK_PAQUETE_RELATIONS_PROMOCIO foreign key (PRO_ID)
      references PROMOCION (PRO_ID)
      on delete restrict on update restrict;

alter table PAQUETE
   add constraint FK_PAQUETE_RELATIONS_SERVICIO foreign key (SE_ID)
      references SERVICIO (SE_ID)
      on delete restrict on update restrict;

alter table RECEPCIONISTA
   add constraint FK_RECEPCIO_RELATIONS_PERSONA foreign key (P_ID)
      references PERSONA (P_ID)
      on delete restrict on update restrict;

alter table RESERVASION
   add constraint FK_RESERVAS_RELATIONS_CLIENTE foreign key (C_ID)
      references CLIENTE (C_ID)
      on delete restrict on update restrict;

alter table RESERVASION
   add constraint FK_RESERVAS_RELATIONS_HABITACI foreign key (H_ID)
      references HABITACION (H_ID)
      on delete restrict on update restrict;

