-- Vedere la durata totale in ore/minuti della seconda stagione della serie TV 'Tredici'
SELECT sum(durata)/60 AS Ore, sum(durata)%60 Minuti
FROM puntata
WHERE titolo_serie='Tredici' AND anno_serie=2017 AND n_stagione=2

-- Vedere l'elenco delle prossime puntata che saranno trasmesse nei prossimi giorni
SELECT data, canale, titolo_serie, n_stagione, n_episodio
FROM emissione
WHERE data >= current_timestamp
ORDER BY data

-- Vedere la durata totale complessiva in giorni/ore/minuti per ciascuna serie tv.
SELECT titolo_serie, sum(durata)/(60*24) AS giorni,
						  (sum(durata)/60)%24 AS ore,
						  sum(durata)%60 minuti,
						  sum(durata) AS totale_min
FROM puntata
GROUP BY titolo_serie
ORDER BY totale_min DESC

-- Visualizza i generi della serie TV "The Flash"
SELECT genere FROM serie_genere WHERE titolo='The Flash';

-- Coppie di utenti nate nella stessa città
SELECT x.nickname, y.nickname
FROM utente x, utente y
WHERE x.luogo_n = y.luogo_n
AND x.nickname < y.nickname

-- Vedere le puntate che sono senza trama
SELECT * FROM puntata
WHERE descrizione IS NULL

-- Ottenere il cast della serie tv 'Wayward Pines'.
SELECT DISTINCT attore.nome, attore.cognome
FROM attore, casts
WHERE casts.cf_attore=attore.cf
AND titolo_serie='Wayward Pines'

-- Vedere tutte le serie tv in cui c'è 'Millie Bobby Brown'
SELECT DISTINCT titolo_serie
FROM casts, attore
WHERE casts.cf_attore=attore.cf
AND nome='Millie Bobby' AND cognome='Brown'

-- Vedere le casi produttrici della serie TV 'Tredici'
SELECT nome
FROM casa_produttrice
WHERE titolo_serie='Tredici';

-- Calcolare la media dei voti per la serie TV 'Wayward Pines'
SELECT AVG(voto) FROM vota
WHERE titolo_serie='Wayward Pines' AND anno_serie='2015';

-- Ottenere una classifica di gradimento delle serie tv in base ai voti degli utenti
SELECT titolo_serie, AVG(voto)
FROM vota
GROUP BY titolo_serie
ORDER BY 2 DESC

-- Calcolare il numero totale di puntate viste per ciascun utente in ordine decrescente
SELECT nome,cognome, COUNT(*) AS EpisodiVisti
FROM guarda,utente
WHERE guarda.cf=utente.cf
GROUP BY nome,cognome
ORDER BY EpisodiVisti DESC

-- Vedere la lista di tutte le serie TV con genere thriller
SELECT titolo
FROM serie_genere
WHERE genere='Thriller'

-- Informazioni sui giorni/ore/minuti TOTALI di tutte le puntate viste da 'Mattia Desiderio'
SELECT sum(durata)/(60*24) AS giorni, (sum(durata)/60)%24 AS ore, sum(durata)%60 minuti
FROM puntata p,guarda g, utente u
WHERE g.cf = u.cf AND g.n_episodio=p.n_episodio
AND g.n_stagione=p.n_stagione AND g.titolo_serie=p.titolo_serie
AND g.anno_serie=p.anno_serie AND nome='Mattia' AND cognome='Desiderio'

-- Selezionare le serie TV che hanno più di 2 stagioni, ma che non hanno più di 10 episodi per stagione
SELECT titolo_serie,anno_serie
FROM serietv
WHERE n_stagioni > 2
EXCEPT
SELECT serietv.titolo_serie,serietv.anno_serie
FROM serietv,stagione
WHERE serietv.titolo_serie=stagione.titolo_serie AND serietv.anno_serie=stagione.anno_serie
AND n_episodi > 20
