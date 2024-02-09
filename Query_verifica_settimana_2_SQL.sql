--query che conteggia i verbali trascritti
--SELECT COUNT(*) AS NumeroVerbaliTrascritti FROM Verbale2

--query che fa il conteggio dei verbali trascritti raggruppati per anagrafe
--SELECT IDAnagrafica,COUNT(*) AS NumeroVerbaliTrascritti FROM Verbale2 GROUP BY IDAnagrafica;

--query che fa il conteggio dei verbali trascritti raggruppati per tipo di violazione
--SELECT TipoViolazione.Descrizione, COUNT(*) AS NumeroVerbaliTrascritti
--FROM Verbale2
--JOIN TipoViolazione ON Verbale2.IDViolazione = TipoViolazione.IDViolazione
--GROUP BY TipoViolazione.Descrizione;

--query che fa il Totale dei punti decurtati per ogni anagrafe
--SELECT Anagrafica.IDAnagrafica, Anagrafica.Nome, Anagrafica.Cognome, SUM(Verbale2.DecurtamentoPunti) AS TotalePuntiDecurtati
--FROM Anagrafica
--JOIN Verbale2 ON Anagrafica.IDAnagrafica = Verbale2.IDAnagrafica
--GROUP BY Anagrafica.IDAnagrafica, Anagrafica.Nome, Anagrafica.Cognome;

--Query per determinare il cognome, Nome, Data violazione, Indirizzo violazione, importo e punti decurtati per tutti gli anagrafici residenti a Palermo.
--SELECT A.Cognome, A.Nome, A.Città, V.DataViolazione, V.IndirizzoViolazione, V.Importo, V.DecurtamentoPunti
--FROM Anagrafica A
--JOIN Verbale2 V ON A.IDAnagrafica = V.IDAnagrafica
--WHERE A.Città = 'Palermo';

--query per determinare il Cognome, Nome, Indirizzo, Data violazione, importo e punti decurtati per le violazioni fatte tra il febbraio 2009 e luglio 2009
--SELECT A.Cognome, A.Nome, V.IndirizzoViolazione, V.DataViolazione, V.Importo, V.DecurtamentoPunti
--FROM Anagrafica A
--JOIN Verbale2 V ON A.IDAnagrafica = V.IDAnagrafica
--WHERE V.DataViolazione BETWEEN '2009-02-01' AND '2009-07-31';

--query per determinare il Totale degli importi per ogni anagrafico
--SELECT Anagrafica.IDAnagrafica, SUM(Verbale2.Importo) AS TotaleImporti
--FROM Anagrafica
--JOIN Verbale2 ON Anagrafica.IDAnagrafica = Verbale2.IDAnagrafica
--GROUP BY Anagrafica.IDAnagrafica;

--query per visualizzare tutti gli anagrafici residenti a Palermo
--SELECT Cognome, Nome, Indirizzo, Città
--FROM Anagrafica
--WHERE Città = 'Palermo';

--Query parametrica che visualizzi Data violazione, Importo e decurta meno punti relativi ad una certa data
--DECLARE @DataDesiderata DATE = '2009-03-03';

--SELECT DataViolazione, Importo, DecurtamentoPunti
--FROM Verbale2
--WHERE DataViolazione = @DataDesiderata;

--SELECT NominativoAgente, COUNT(*) AS NumeroViolazioniContestate
--FROM Verbale2
--GROUP BY NominativoAgente;

--query che determina il Cognome, Nome, Indirizzo, Data violazione, Importo e punti decurtati per tutte le violazioni che superino il decurtamento di 5 punti
--SELECT A.Cognome, A.Nome, V.IndirizzoViolazione, V.DataViolazione, V.Importo, V.DecurtamentoPunti
--FROM Anagrafica A
--JOIN Verbale2 V ON A.IDAnagrafica = V.IDAnagrafica
--WHERE V.DecurtamentoPunti > 5;

--query che determina il Cognome, Nome, Indirizzo, Data violazione, Importo e punti decurtati per tutte le violazioni che superino l’importo di 100 euro
--SELECT A.Cognome, A.Nome, V.IndirizzoViolazione, V.DataViolazione, V.Importo, V.DecurtamentoPunti
--FROM Anagrafica A
--JOIN Verbale2 V ON A.IDAnagrafica = V.IDAnagrafica
--WHERE V.Importo > 100;