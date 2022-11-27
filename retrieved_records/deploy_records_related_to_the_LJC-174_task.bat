:: call sfdx force:data:tree:import -f EmailTemplate.json
:: call sfdx force:data:tree:import -f EnhancedLetterhead.json

call sfdx force:data:bulk:upsert -s Folder -f Folder-174.csv -i Id 
call sfdx force:data:bulk:upsert -s EnhancedLetterhead -f Letterhead-174.csv -i Id  
call sfdx force:data:bulk:upsert -s EmailTemplate -f Email_LJC-174.csv -i Id 


call pause