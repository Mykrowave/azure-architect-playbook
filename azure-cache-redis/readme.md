# Azure Cache for Redis

- ServiceStack.Redis C# Library
- Pricing Tiers: Basic(dev), Standard(prod), Premium(enterprise) - basic has no SLA, standard is 2 node for high SLA


## Create Transactions
- Multiple commands queued to guarantee no other command from another client is executed in between
- MULTI Command begins a transaction block
- EXEC command executes all commands

## Manage Memory
- Set Data Expirations for short-lived data
- Common expire command is EXPIRE X (number of seconds until expiration)
- Use Eviction Policies to determine how Redis Acts when it runs out of memory

### Eviction Policies
1) noeviction: will never remove - returns error if inserting new
2) allkeys-lru: removes least recently used
3) allkeys-random: removes random
4) volatile-lru: remove least recently used out of keys with expiration set
5) volaitle-ttl: removes key with shortest ttl out of keys with expiration set
6) volatile-random: removes a random key that has an expiration set

## Cache-Aside Pattern
- Check to see if data is in cache first and use that.  If data is not there, retrieve from data source and store in cache
- When making update transactions, need to invalidate the data in cache.  So, upon updating, delete data in cache

## Considerations for the Cache
- Lifetime:  too short of expiration policies and it ends up doing more work
- Evicting: Make sure to choose correct eviction for your app
- Priming: pre-populate cache with often accessed data
- Consistency: keep up with data in cache and in store. There's no guarantee they are in sync!

