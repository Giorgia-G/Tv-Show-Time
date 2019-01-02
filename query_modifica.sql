-- Modificare la password dell'utente con codice fiscale 'MATDES86B12I854K'
UPDATE utente
SET password = crypt('nuovapassword', gen_salt('md5'))
WHERE CF = 'MATDES86B12I854K';

-- Aggiornare la biografia dell'attore Matt Dillon
UPDATE attore
SET biografia = 'Nuova biografia'
WHERE nome='Matt' AND cognome='Dillon';

-- Aggiornare a 8 il voto dell'utente con codice fiscale 'GIOGIB84H62C993O' per la serie TV Tredici (3x1)
UPDATE votoa
SET voto = 8
WHERE cf='GIOGIB84H62C993O' AND n_episodio=3 AND n_stagione=1 AND titolo_serie='Tredici';

-- L'utente con CF 'MATDES86B12I854K' ha rivisto l'episodio 2x1 di 'The Flash' nella data odierna.
-- Aggiorna la data di visione alla data corrente.
UPDATE guarda
SET data = current_date
WHERE cf='MATDES86B12I854K' AND n_episodio=2 AND n_stagione=1 AND titolo_serie='The Flash';
