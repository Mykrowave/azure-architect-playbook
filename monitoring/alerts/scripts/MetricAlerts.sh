# Simple Metric Alert
az monitor metrics alert create -n {nameofthealert} \
  -g {ResourceGroup} --scopes {VirtualMachineResourceID} \
  --condition "avg Percentage CPU > 90" --description {descriptionofthealert}
  
# View Metrics
az monitor metrics alert list  -g {ResourceGroup}

# View Specific Metric
az monitor metrics alert show -g {ResourceGroup} -n {AlertRuleName}
az monitor metrics alert show --ids {RuleResourceId}

# Disable Metric
az monitor metrics alert update -g {ResourceGroup} -n {AlertRuleName} --enabled false

# Delete Metric
az monitor metrics alert delete -g {ResourceGroup} -n {AlertRuleName}
