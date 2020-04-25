# Scale Sets

- manage a large number easily
- All vms are identitcal - configured the same
- Uses a Load Balancer
- Limited to 1000 vms in a set


## Scaling

1) Scheduled: Proactively schedule scale to scale out or in N number of vms
2) Autoscaling: Metric-based thresholds to scale  
  -- Minimum cooldown for autoscale is 5 min

## Low Priority scale sets
- Useful when workloads can suffer interruptions or when you need larger VMs at a much reduced rate - burst processing
- Cost savings of up to 80%
- Default Scale Set has 2 instances and a Load Balancer
- Azure Global infrastructure basically Hotels.com. It has unused compute power ready to go with no one using it.  So, it distributes it out at a severely low cost.  The Trade Off is that you dont have any control over when it is available or not.  IT should be used in a "Low Priority" situation.
- Azure can and will remove them from you when it needs it back.
- You can gracefully exit code or do housekeeping cleanup after a notification from Azure.  YOu'll use schedule events to make that happen.
- Removal types:  
  1) Delete:  The entire VM is removed including disks.  
  2) Deallocate: VM is stopped but disk is kept.  Cost for disk is still incurred

## Install and update applications on Scale Sets
- Custom Script Extension tool is preferred.  It automates the process on all vms in the scale set
- VM scale sets have Upgrade Policies: Automatic (no definition - updates at will), Rolling (batches updates across vms and you might have different versions live for a short period, Manual (default)



