## Terraform code is not a piece of code, it's actually bounds to resource|infra|service in backend  
## why map? not count having a example of security group creation.

### user data should always keep a map not count
### functions make your not to break.
### lookup for map ,  element for list
### merge for map, concat for list


### Never loop a resource, Always loop the module 




## TF-loop with count - list(map)
### splat operator instance.*.[0]id 
### splat operator instance.*.id[0]
```
instances = [
{

}
{

}
{

}
]
```

## TF-loop with for_each - map(map)
### each.key <=> each.value
```
instances = {
instance1 = {

}
instance2 = {

}
instance3 = {

}
}
```
