--StoredProcedure parametrica che, ricevendo in input una data, visualizzi il totale dei punti decurtati in quella determinata data
CREATE PROCEDURE CalcolaPuntiDecurtati2
    @DataInput DATE
AS
BEGIN
    SELECT SUM(DecurtamentoPunti) AS TotalePuntiDecurtati
    FROM Verbale2
    WHERE DataViolazione = @DataInput;
END;