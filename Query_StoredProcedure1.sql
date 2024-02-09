
--StoredProcedure parametrica che, ricevendo in input un anno, visualizzi l’elenco delle contravvenzioni effettuate in quel determinato anno
CREATE PROCEDURE ContravvenzioniPerAnno
    @Anno INT
AS
BEGIN
    SELECT A.Cognome, A.Nome, V.DataViolazione, V.Importo, V.DecurtamentoPunti
    FROM Anagrafica A
    JOIN Verbale2 V ON A.IDAnagrafica = V.IDAnagrafica
    WHERE YEAR(V.DataViolazione) = @Anno;
END;