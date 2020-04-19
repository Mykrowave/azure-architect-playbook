# Azure Cache for Redis

- ServiceStack.Redis C# Library
- Pricing Tiers: Basic(dev), Standard(prod), Premium(enterprise) - basic has no SLA, standard is 2 node for high SLA


## Create Transactions
- Multiple commands queued to guarantee no other command from another client is executed in between
- MULTI Command begins a transaction block
- EXEC command executes all commands

## Manage Memory

## Cache-Aside Pattern
