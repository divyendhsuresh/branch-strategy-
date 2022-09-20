# az repos policy list --branch develop \
#                      --repository-id 9194ad2c-f79b-4f4c-8daf-8a7c6acd8930 \
#                      --output table 

# name="zara"
# echo $name
# reposlist=$(az repos list --output tsv)
# branch=main

    # echo $repoID   
# 

# # echo $reposlist                     
# # for i in {1..10}
# # do 
# #   echo "welcome $i times"
# # done  
# repos=az repos list -o table
# replist=az repos list -o table
# repoid=$(az repos list -o tsv --query "[?name=='bytestrone-apps-recruitment-ui'].[id]")                                                             
# echo "The repo ID is ${repoid}"
# for i in $replist
# do 
#     repID=$(replist --query [i].id)
#     echo $repID
# done
# branch=main
# for repo in repoid 
# do 

# for repo in $repositories

# do

#     repoId=$(az repos list --org $orgUrl --project $project --query "[?@.name == 'bytestrone-apps-framework'].id|[0]")

#     echo "$repo has id:$repoId"

#     az repos policy list --branch $branch --org $orgUrl --project $project --repository-id c189e75a-dbf5-4a2c-a1c6-2a8033105af3

#     echo $currentPolicies

# done


# az repos policy merge-strategy update --id 62 \
#                                       --blocking true \
#                                       --enabled true \
#                                       --repository-id $repoid \
#                                       --allow-no-fast-forward true \
#                                       --allow-rebase true    
                                                          
# az repos policy merge-strategy update --id 62 \
#                                       --repository-id $repoid \
#                                       --allow-no-fast-forward false \
#                                       --allow-rebase-merge false




# az account list --all # Returns the subscription id without quotation marks
# subscriptionId="$(az account list --query "[?isDefault].id" -o tsv)" # Captures the subscription id as a variable.
# echo $subscriptionId # Returns the contents of the variable.
# az account list --query "[? contains(name, 'Test')].id" -o tsv # Returns the subscription id of a non-default subscription containing the substring 'Test'
# subscriptionId="$(az account list --query "[? contains(name, 'Test')].id" -o tsv) # Captures the subscription id as a variable. 
# az account set -s $subscriptionId # Sets the current active subscription
# Repolist=az repos list --query "[].{Name:name,Id:id}" -o tsv
# repoID=$(az repos list \
#         --query "[].id" \
#         -o tsv )
# echo $repoID
# branch=develop
# policies=$(az repos policy list \
#             --branch $branch \
#             --repository-id $repoID \
#             -o tsv \
#             --query "[].id" )
# echo $policies

# for list in $policies 
# do
#     echo "\nPolicies in repo : $list\n"
# done

# for policyID in $policies 
# do 
#     echo "\nPolicy Id: $policyID\n"
#     az repos policy work-iteam-linking update --id $policyID 
# rep=$(az repos list -o tsv)
# echo $rep
# az repos policy work-item-linking update --id
#                                          --blocking {false, true}
#                                          --branch
#                                          --branch-match-type {exact, prefix}
#                                          --detect {false, true}
#                                          --enabled {false, true}
#                                          --org
#                                          --project
#                                          --repository-id    # echo "az repos policy list --repository-id 8690613a-a02a-42be-9b33-1a7da1a47b78 --branch main --query "[].[id]" -o tsv"
    # echo ""
    # echo "az repos policy list --repository-id $repoID --branch main --query "[].[id]" -o tsv"
    # echo ""
    # data=$(az repos policy list --repository-id $id --branch main --query "[].[id]" -o tsv) # echo $repoID | cat -A# echo $repoID   