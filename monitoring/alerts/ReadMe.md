# Azure Monitor Alerts


## Types
1) Metric
2) Log
3) Activity Log


## Alert Rules
- Composition { Resource, Condition, Actions, Alert Details }
- 3 Status Phases { New, Ack, Closed }
- dimensions allow you to create one alert rule and apply it to multiple resources


## Metric Alert
- Static Threshold metric alerts - define static values.  "Above 85% cpu", etc
- Dynamic Threshold use ML to review past trends and base alerts on a wave
