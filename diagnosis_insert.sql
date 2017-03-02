INSERT INTO symptom_category (symcat_name) VALUES ('tete');
INSERT INTO symptom_category (symcat_name) VALUES ('pointrine');
INSERT INTO symptom_category (symcat_name) VALUES ('abdomen');
INSERT INTO symptom_category (symcat_name) VALUES ('zone pelvienne');
INSERT INTO symptom_category (symcat_name) VALUES ('bras');
INSERT INTO symptom_category (symcat_name) VALUES ('jambe');

INSERT INTO symptom (symcat_id,symp_name) VALUES (5,'articulation chaude au toucher');
INSERT INTO symptom (symcat_id,symp_name) VALUES (5,'douleurs articulaires');
INSERT INTO symptom (symcat_id,symp_name) VALUES (5,'gonflement de l articulation');
INSERT INTO symptom (symcat_id,symp_name) VALUES (5,'gene articulaire');
INSERT INTO symptom (symcat_id,symp_name) VALUES (5,'hematome');
INSERT INTO symptom (symcat_id,symp_name) VALUES (5,'perception d un craquement lors d un mouvement');
INSERT INTO symptom (symcat_id,symp_name) VALUES (5,'sensation de dechirure');

INSERT INTO disease (dis_name,dis_desc) VALUES ('Arthrite', 'L arthrite est un trouble inflammatoire articulaire. On parle de monoarthrite lorsqu une seule articulation est concernee et de polyarthrite lorsque plusieurs articulations sont atteintes');

INSERT INTO disease (dis_id,symp_id) VALUES (1,1);
