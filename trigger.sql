-- Trigger auto incremento numero di stagioni. Quando una stagione viene inserita, viene incrementato il numero di stagioni di quella serie.
	CREATE FUNCTION new_stagione() RETURNS trigger AS $$
		BEGIN
		UPDATE serietv
		SET n_stagioni=n_stagioni+1 /* Alternativa: n_stagioni=new.n_stagioni */
		WHERE titolo_serie=new.titolo_serie AND anno_serie=new.anno_serie;

		RETURN NEW;
		END;
		$$ LANGUAGE 'plpgsql';

		CREATE TRIGGER NUOVA_STAGIONE
		AFTER INSERT ON stagione
		FOR EACH ROW EXECUTE PROCEDURE new_stagione();

-- Trigger auto incremento numero di episodi. Quando un episodio viene inserito, viene incrementato il numero di episodi di quella stagione.
		CREATE FUNCTION new_puntata() RETURNS trigger AS $$
	  BEGIN
		UPDATE stagione
		SET n_episodi=n_episodi+1
		WHERE titolo_serie=new.titolo_serie AND anno_serie=new.anno_serie AND n_stagione=new.n_stagione;

		RETURN NEW;
		END;
		$$ LANGUAGE 'plpgsql';

		CREATE TRIGGER NUOVA_PUNTATA
		AFTER INSERT ON puntata
		FOR EACH ROW EXECUTE PROCEDURE new_puntata();

-- Trigger: un utente può votare una puntata solo se l'ha vista. Il trigger controlla se nella tabella guarda è presente almeno una tupla relativa all'utente e serie in questione.
CREATE FUNCTION check_voto() RETURNS trigger AS $$
DECLARE
	contatore int;
BEGIN

	SELECT count(*) INTO contatore FROM guarda
	WHERE cf=new.cf AND n_episodio=new.n_episodio AND n_stagione=new.n_stagione AND titolo_serie=new.titolo_serie AND anno_serie=new.anno_serie;

	IF (contatore = 0) then
	RAISE EXCEPTION 'Non puoi votare una puntata che non hai visto!';
	END IF;

RETURN NEW;
END;
$$ LANGUAGE 'plpgsql';

CREATE TRIGGER CONTROLLO_VOTO
BEFORE INSERT ON vota
FOR EACH ROW EXECUTE PROCEDURE check_voto();

-- Trigger: per poter recensire una serie tv, l’utente deve aver visto più di un episodio di quella serie.
CREATE FUNCTION check_recensione() RETURNS trigger AS $$
DECLARE
	contatore int;
BEGIN

	SELECT count(*) INTO contatore FROM guarda
	WHERE cf=new.cf AND titolo_serie=new.titolo_serie AND anno_serie=new.anno_serie;

	IF (contatore <= 1) then
	RAISE EXCEPTION 'Per poter recensire devi aver visto più di un episodio di quella serie tv.';
	END IF;

RETURN NEW;
END;
$$ LANGUAGE 'plpgsql';

CREATE TRIGGER CONTROLLO_RECENSIONE
BEFORE INSERT ON recensione
FOR EACH ROW EXECUTE PROCEDURE check_recensione();

-- Trigger: controllo data di visione della puntata (deve essere maggiore dell'anno di uscita della stagione di quella puntata)
CREATE FUNCTION check_data_guarda() RETURNS trigger AS $$
BEGIN

	IF (date_part('year', new.data) < (SELECT anno_stagione FROM stagione WHERE n_stagione=new.n_stagione AND titolo_serie=new.titolo_serie AND anno_serie=new.anno_serie)) then
	RAISE EXCEPTION 'L''anno della data di visione della puntata è inferiore all''anno di uscita della stagione di quella puntata';
	END IF;

RETURN NEW;
END;
$$ LANGUAGE 'plpgsql';

CREATE TRIGGER Controllo_DataGuarda
BEFORE INSERT ON guarda
FOR EACH ROW EXECUTE PROCEDURE check_data_guarda();

-- Trigger: controllo data dell'emissione (deve essere maggiore dell'anno di uscita della stagione di quella puntata)
CREATE FUNCTION check_data_emissione() RETURNS trigger AS $$
BEGIN

	IF (date_part('year', new.data) < (SELECT anno_stagione FROM stagione WHERE n_stagione=new.n_stagione AND titolo_serie=new.titolo_serie AND anno_serie=new.anno_serie)) then
	RAISE EXCEPTION 'L''anno della data dell''emissione è inferiore all''anno di uscita della stagione di quella puntata';
	END IF;

RETURN NEW;
END;
$$ LANGUAGE 'plpgsql';

CREATE TRIGGER Controllo_DataGuarda
BEFORE INSERT ON emissione
FOR EACH ROW EXECUTE PROCEDURE check_data_emissione();
