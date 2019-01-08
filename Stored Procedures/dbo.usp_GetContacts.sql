SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
--SET QUOTED_IDENTIFIER ON|OFF
--SET ANSI_NULLS ON|OFF
--GO
CREATE PROCEDURE [dbo].[usp_GetContacts]
    @parameter_name AS INT
-- WITH ENCRYPTION, RECOMPILE, EXECUTE AS CALLER|SELF|OWNER| 'user_name'
AS
     SELECT BusinessEntityID,
            PersonType,
            NameStyle,
            Title,
            FirstName,
            MiddleName,
            LastName,
            rowguid,
            ModifiedDate FROM Person.Person
GO
