-- Eliminazione di tutte le recensioni che contengono un insulto ("insulto")
DELETE FROM recensione WHERE testo LIKE '%insulto%';

-- Eliminazione degli utenti che non hanno visto nessuna puntata
DELETE FROM utente
WHERE cf NOT IN
    (SELECT cf
     FROM guarda);

-- Eliminazione di tutti i voti effettuati dell'utente con codice fiscale 'MATDES86B12I854K'
DELETE FROM vota WHERE cf = 'MATDES86B12I854K';


-- Eliminare il genere 'Drammatico' da quelli preferiti dell'utente con CF 'GIOGIB84H62C993O'
DELETE FROM utente_genere
WHERE CF='GIOGIB84H62C993O' AND genere='Drammatico';


-- Annulla la visione dell'episodio 3x1 della serie tv Tredici per l'utente con CF 'GIOGIB84H62C993O'
DELETE FROM guarda
WHERE CF='GIOGIB84H62C993O' AND n_episodio=3 AND n_stagione=1  AND titolo_serie='Tredici';
