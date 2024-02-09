--StoreProcedure per eliminare verbale in base al suo ID(ho eliminato il verbale con ID =1
CREATE PROCEDURE dbo.DeleteVerbale
    @VerbaleID INT
AS
BEGIN
DELETE FROM Verbale2 WHERE IDVerbale = @VerbaleID;
END;