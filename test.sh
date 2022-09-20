az devops configure --defaults project=bytestrone-apps
org=https://dev.azure.com/bytestrone/


project=bytestrone-apps
az repos ref list --detect true --org $org --project $project 
                  
                  