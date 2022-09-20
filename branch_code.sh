org=https://dev.azure.com/bytestrone/
project=bytestrone-apps
branch=main
for repoID in $(az repos list --query "[].id" -o tsv)
do 
    id=$(echo $repoID |tr -d '\r')
    echo $id
    if branch=main
    then 
        for policy in $(az repos policy list --repository-id $id --branch $branch --query "[].id" -o tsv) 
        do
            policyID=$(echo $policy |tr -d '\r')
            echo $policyID
            for pi in $policyID 
            do   
                az repos policy work-item-linking update --id $pi --branch $branch --project $project --org $org --enabled true --repository-id $id 
                az repos policy comment-required update --id $pi --branch $branch --project $project --org $org --enabled false --repository-id $id 
                az repos policy merge-strategy update --id $pi --branch $branch --project $project --org $org --enabled false --repository-id $id --allow-no-fast-forward true --allow-rebase false --allow-rebase-merge false --allow-squash true 
                az repos policy approver-count update --id $pi --branch $branch --project $project --org $org --enabled false --repository-id $id --creator-vote-counts true --minimum-approver-count 2    
            done             
        done
    fi
    # if branch=develop
    # for policy in $(az repos policy list --repository-id $id --branch $branch --query "[].id" -o tsv) 
    # do
    #     policyID=$(echo $policy |tr -d '\r')
    #     echo $policyID
    #     for pi in $policyID 
    #     do   
    #         az repos policy work-item-linking update --id $pi --branch $branch --project $project --org $org --enabled false --repository-id $id 
    #         az repos policy comment-required update --id $pi --branch $branch --project $project --org $org --enabled false --repository-id $id 
    #         az repos policy merge-strategy update --id $pi --branch $branch --project $project --org $org --enabled false --repository-id $id --allow-no-fast-forward true --allow-rebase false --allow-rebase-merge false --allow-squash true 
    #         az repos policy approver-count update --id $pi --branch $branch --project $project --org $org --enabled false --repository-id $id --creator-vote-counts true --minimum-approver-count 2    
    #     done             
    # done 
done
