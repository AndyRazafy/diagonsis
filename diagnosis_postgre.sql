/*==============================================================*/
/* Nom de SGBD :  PostgreSQL 8                                  */
/* Date de création :  02/03/2017 08:21:05                      */
/*==============================================================*/

/*==============================================================*/
/* Table : DISEASE                                              */
/*==============================================================*/
create table DISEASE (
   DIS_ID               SERIAL               not null,
   DIS_NAME             VARCHAR(100)         not null,
   DIS_DESC             TEXT                 not null,
   constraint PK_DISEASE primary key (DIS_ID)
);

/*==============================================================*/
/* Index : DISEASE_PK                                           */
/*==============================================================*/
create unique index DISEASE_PK on DISEASE (
DIS_ID
);

/*==============================================================*/
/* Table : PATIENT                                              */
/*==============================================================*/
create table PATIENT (
   PAT_ID               SERIAL               not null,
   PAT_FIRSTNAME        VARCHAR(50)          not null,
   PAT_LASTNAME         VARCHAR(50)          not null,
   PAT_DOB              DATE                 not null,
   PAT_EMAIL            VARCHAR(100)         not null,
   constraint PK_PATIENT primary key (PAT_ID)
);

/*==============================================================*/
/* Index : PATIENT_PK                                           */
/*==============================================================*/
create unique index PATIENT_PK on PATIENT (
PAT_ID
);

/*==============================================================*/
/* Table : SYMPTOM                                              */
/*==============================================================*/
create table SYMPTOM (
   SYMP_ID              SERIAL               not null,
   SYMCAT_ID            INT4                 not null,
   SYMP_NAME            VARCHAR(100)         not null,
   constraint PK_SYMPTOM primary key (SYMP_ID)
);

/*==============================================================*/
/* Index : SYMPTOM_PK                                           */
/*==============================================================*/
create unique index SYMPTOM_PK on SYMPTOM (
SYMP_ID
);

/*==============================================================*/
/* Index : ASSOCIATION_1_FK                                     */
/*==============================================================*/
create  index ASSOCIATION_1_FK on SYMPTOM (
SYMCAT_ID
);

/*==============================================================*/
/* Table : SYMPTOM_CATEGORY                                     */
/*==============================================================*/
create table SYMPTOM_CATEGORY (
   SYMCAT_ID            SERIAL               not null,
   SYMCAT_NAME          VARCHAR(100)         not null,
   constraint PK_SYMPTOM_CATEGORY primary key (SYMCAT_ID)
);

/*==============================================================*/
/* Index : SYMPTOM_CATEGORY_PK                                  */
/*==============================================================*/
create unique index SYMPTOM_CATEGORY_PK on SYMPTOM_CATEGORY (
SYMCAT_ID
);

/*==============================================================*/
/* Table : SYMPTOM_DISEASE                                      */
/*==============================================================*/
create table SYMPTOM_DISEASE (
   SYMDIS_ID            SERIAL               not null,
   SYMP_ID              INT4                 not null,
   DIS_ID               INT4                 not null,
   constraint PK_SYMPTOM_DISEASE primary key (SYMDIS_ID)
);

/*==============================================================*/
/* Index : SYMPTOM_DISEASE_PK                                   */
/*==============================================================*/
create unique index SYMPTOM_DISEASE_PK on SYMPTOM_DISEASE (
SYMDIS_ID
);

/*==============================================================*/
/* Index : ASSOCIATION_2_FK                                     */
/*==============================================================*/
create  index ASSOCIATION_2_FK on SYMPTOM_DISEASE (
SYMP_ID
);

/*==============================================================*/
/* Index : ASSOCIATION_3_FK                                     */
/*==============================================================*/
create  index ASSOCIATION_3_FK on SYMPTOM_DISEASE (
DIS_ID
);

alter table SYMPTOM
   add constraint FK_SYMPTOM_ASSOCIATI_SYMPTOM_ foreign key (SYMCAT_ID)
      references SYMPTOM_CATEGORY (SYMCAT_ID)
      on delete restrict on update restrict;

alter table SYMPTOM_DISEASE
   add constraint FK_SYMPTOM__ASSOCIATI_SYMPTOM foreign key (SYMP_ID)
      references SYMPTOM (SYMP_ID)
      on delete restrict on update restrict;

alter table SYMPTOM_DISEASE
   add constraint FK_SYMPTOM__ASSOCIATI_DISEASE foreign key (DIS_ID)
      references DISEASE (DIS_ID)
      on delete restrict on update restrict;

