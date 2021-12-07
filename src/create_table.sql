DROP TABLE IF EXISTS public.bien;
CREATE TABLE public.bien(
	Id text,
	id_lot text,
	nb_piece text,
	typologie text,
	prix_tva_reduite text,
	prix_tva_normale text,
	prix_HT text,
	prix_m2_HT text,
	prix_m2_TTC text,
	orientation text,
	exterieur text,
	balcony text,
	garden text,
	parking text,
	ville text,
	departement text,
	date_fin_programme text,
	adresse_entiere text,
	date_extraction text
);

ALTER TABLE public.bien
ADD surface text;

ALTER TABLE public.bien
ADD etage text;

ALTER TABLE public.bien
ADD nom_programme text;

ALTER TABLE public.bien
ADD promoteur text;