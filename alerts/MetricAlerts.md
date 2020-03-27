# Dynamic Metric Alerts  

## Static Alerts
You pick a metric (or more), set the threshold(s) to specific values and alert will trigger based on operator checked.  

## Dynamic Alert  
You pick a metric (or more), set "lookback" periods, set number of violations and set operator. A ML algorithm will look back at the previoius periods and determine what the Threshold should be. The alert will trigger if the number of violations is met.  (Pretty Cool)  

## Multiple Dimensions
You can monitor multiple instances with same alert rule.  In this case you can define each instance individually OR you can define instance as *

