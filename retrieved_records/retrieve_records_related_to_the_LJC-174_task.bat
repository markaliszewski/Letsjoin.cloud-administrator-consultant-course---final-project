:: call sfdx force:data:tree:export -q "SELECT Id, Name, DeveloperName, OwnerId, FolderId, BrandTemplateId, EnhancedLetterheadId, TemplateStyle, IsActive, TemplateType, Encoding, Description, Subject, HtmlValue, Body, ApiVersion, Markup, UiType, RelatedEntityType,  FolderName  FROM EmailTemplate WHERE Name LIKE 'To customer - Order__c.Status has changed'"

:: call sfdx force:data:tree:export -q "SELECT Id, Name, Description, LetterheadHeader, LetterheadFooter FROM EnhancedLetterhead WHERE Name LIKE 'Organisation wide Letterhead'"

:: call sfdx force:data:tree:export -q "SELECT Id, ParentId, Name, DeveloperName, AccessType, IsReadonly, Type FROM Folder WHERE Name LIKE 'Organisation Wide Email Templates'" --resultformat 'csv'

:: call sfdx force:data:record:get -s Folder -w "Name='Organisation Wide Email Templates'"  --json >> SomeFile.json


call sfdx force:data:soql:query -q "SELECT Id, ParentId, Name, DeveloperName, AccessType, IsReadonly, Type FROM Folder WHERE Name LIKE 'Organisation Wide Email Templates'" -r csv >> Folder-174.csv

call sfdx force:data:soql:query -q "SELECT Id, Name, DeveloperName, OwnerId, FolderId, BrandTemplateId, EnhancedLetterheadId, TemplateStyle, IsActive, TemplateType, Encoding, Description, Subject, HtmlValue, Body, ApiVersion, Markup, UiType, RelatedEntityType,  FolderName  FROM EmailTemplate WHERE Name LIKE 'To customer - Order__c.Status has changed'" -r csv >> Email_LJC-174.csv

call sfdx force:data:soql:query -q "SELECT Id, Name, Description, LetterheadHeader, LetterheadFooter FROM EnhancedLetterhead WHERE Name LIKE 'Organisation wide Letterhead'" -r csv >> Letterhead-174.csv

call pause