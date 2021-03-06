# Virtual Machines


## Sizing

- General Purpose D, A
- Compute Optimized F
- Memory Optimized E, M G, DS
- Storage Optimized Ls
- GPU Optimized NV, NC
- High Performance H, A

## Availability Sets
- Logical vm groupings that help keep your application(s) available during planned or unplanned maintenence (up to 3 fault domains)

## [Scale Sets](https://github.com/Mykrowave/azure-architect-playbook/tree/master/vm/scalesets)
- identical load-balanced VMs

## Azure Batch
- Super Large Workloads
- installs data, runs jobs, etc
- scale on its own

## Custom Scripts Extensions
- Installs software or run other task on vm
- Run on VM through powershell, bash, or even the ARM Template
- Custom Scripts will not continue on restart
- Easy, Hard to Scale with many scripts, good interoperability


## Desired State Configurations Extensions
- Helps with complex configurations

## Azure Automatic State Configuration


## ARM (Azure Resource Managment) Templates
- Super Scalable, 

## Virtual Hard Disk (VHD)
- Advantages over physical disk:
1) High Availaibility
2) Scalability

## Virtual MAchine Image
- Template which is the base of the VHD which you can use to run a VM

## Generalized Image
- Needs Resetting: Host Name, username and credentials, LogFiles, security identifiers
- For Windows - sysprep tool
- For Linux use waagent tool

## Specialized Image
- Copy of live vm after it has reached a certain state

## Capturing Image
- Makes VM unusable forever. This is destructive
- 

## Snapshot of VHD
- Create a snapshot of every VHD in VM.
- It is read only.
- Can restore a VHD to state of snapshot
- Need to make sure all disk activity is stopped - so stop VM
- This is a non-destructive process


# Popular Templates
https://azure.microsoft.com/en-us/resources/templates/?resourceType=Microsoft.Compute&pageNumber=1&sort=Popular
