CREATE TABLE THEMATIC_SURFACE 
(
  ID NUMBER NOT NULL 
, OBJECTCLASS_ID NUMBER 
, BUILDING_ID NUMBER 
, ROOM_ID NUMBER 
, BUILDINGINSTALLATION_ID NUMBER 
, LOD2_MULTI_SURFACE_ID NUMBER 
, LOD3_MULTI_SURFACE_ID NUMBER 
, LOD4_MULTI_SURFACE_ID NUMBER 
, CONSTRAINT THEMATIC_SURFACE_PK PRIMARY KEY 
  (
    ID 
  )
  USING INDEX 
  (
      CREATE UNIQUE INDEX THEMATIC_SURFACE_PK ON THEMATIC_SURFACE (ID ASC) 
      LOGGING 
      TABLESPACE "USERS" 
      PCTFREE 10 
      INITRANS 2 
      STORAGE 
      ( 
        BUFFER_POOL DEFAULT 
      ) 
  )
  ENABLE 
) 
LOGGING 
TABLESPACE "USERS" 
PCTFREE 10 
INITRANS 1 
STORAGE 
( 
  BUFFER_POOL DEFAULT 
);

CREATE INDEX THEMATIC_SURFACE_FKX ON THEMATIC_SURFACE (ROOM_ID ASC) 
LOGGING 
TABLESPACE "USERS" 
PCTFREE 10 
INITRANS 2 
STORAGE 
( 
  BUFFER_POOL DEFAULT 
);

CREATE INDEX THEMATIC_SURFACE_FKX1 ON THEMATIC_SURFACE (BUILDING_ID ASC) 
LOGGING 
TABLESPACE "USERS" 
PCTFREE 10 
INITRANS 2 
STORAGE 
( 
  BUFFER_POOL DEFAULT 
);

CREATE INDEX THEMATIC_SURFACE_FKX2 ON THEMATIC_SURFACE (LOD2_MULTI_SURFACE_ID ASC) 
LOGGING 
TABLESPACE "USERS" 
PCTFREE 10 
INITRANS 2 
STORAGE 
( 
  BUFFER_POOL DEFAULT 
);

CREATE INDEX THEMATIC_SURFACE_FKX3 ON THEMATIC_SURFACE (LOD3_MULTI_SURFACE_ID ASC) 
LOGGING 
TABLESPACE "USERS" 
PCTFREE 10 
INITRANS 2 
STORAGE 
( 
  BUFFER_POOL DEFAULT 
);

CREATE INDEX THEMATIC_SURFACE_FKX4 ON THEMATIC_SURFACE (LOD4_MULTI_SURFACE_ID ASC) 
LOGGING 
TABLESPACE "USERS" 
PCTFREE 10 
INITRANS 2 
STORAGE 
( 
  BUFFER_POOL DEFAULT 
);

CREATE INDEX THEMATIC_SURFACE_FKX5 ON THEMATIC_SURFACE (BUILDINGINSTALLATION_ID ASC);

CREATE INDEX THEMATIC_SURFACE_FKX6 ON THEMATIC_SURFACE (OBJECTCLASS_ID ASC);

ALTER TABLE THEMATIC_SURFACE
ADD CONSTRAINT THEMATIC_SURFACE_BUILDING_FK FOREIGN KEY
(
  BUILDING_ID 
)
REFERENCES BUILDING
(
  ID 
)
ENABLE;

ALTER TABLE THEMATIC_SURFACE
ADD CONSTRAINT THEMATIC_SURFACE_CITYOBJECT_FK FOREIGN KEY
(
  ID 
)
REFERENCES CITYOBJECT
(
  ID 
)
ENABLE;

ALTER TABLE THEMATIC_SURFACE
ADD CONSTRAINT THEMATIC_SURFACE_FK FOREIGN KEY
(
  LOD2_MULTI_SURFACE_ID 
)
REFERENCES SURFACE_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE THEMATIC_SURFACE
ADD CONSTRAINT THEMATIC_SURFACE_FK1 FOREIGN KEY
(
  LOD3_MULTI_SURFACE_ID 
)
REFERENCES SURFACE_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE THEMATIC_SURFACE
ADD CONSTRAINT THEMATIC_SURFACE_FK2 FOREIGN KEY
(
  LOD4_MULTI_SURFACE_ID 
)
REFERENCES SURFACE_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE THEMATIC_SURFACE
ADD CONSTRAINT THEMATIC_SURFACE_INSTALL_FK FOREIGN KEY
(
  BUILDINGINSTALLATION_ID 
)
REFERENCES BUILDING_INSTALLATION
(
  ID 
)
ENABLE;

ALTER TABLE THEMATIC_SURFACE
ADD CONSTRAINT THEMATIC_SURFACE_OBJCLASS_FK FOREIGN KEY
(
  OBJECTCLASS_ID 
)
REFERENCES OBJECTCLASS
(
  ID 
)
ENABLE;

ALTER TABLE THEMATIC_SURFACE
ADD CONSTRAINT THEMATIC_SURFACE_ROOM_FK FOREIGN KEY
(
  ROOM_ID 
)
REFERENCES ROOM
(
  ID 
)
ENABLE;