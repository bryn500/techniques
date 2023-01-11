# ARM templates

Notes on ARM templates

- if you need to use an output avoid nested template
- things seem easier if resource groups already exist
- \[\] needed on line to use functions
- When using azure service tags such as Microsoft.Web/serverfarms, the number of slashes indicates the number of params/slashes needed in name
- api version seems a little hard to find information on but takes the form of a date e.g. 2021-08-01
- rest api docs can be helpful pointing in right location: <https://docs.microsoft.com/en-us/rest/api/storagerp/storage-accounts/list-keys>
- however api version dates don't seem to match up

## Functions

- variables('lookup-variable-by-name')
- parameters('lookup-parameter-by-name')
- concat('a', 'b', 'c')
- replace(resourceGroup().name,'-', '')
- resourceGroup()
- resourceId('optional-param-resource-group-name', 'azure service tag e.g. Microsoft.Web/serverfarms', 'name')
- reference(resourceId(), 'apiversion')
- listKeys(resourceId('groupName', 'azure service tag', 'resourceName'), 'api version'))

### variables

can't use resourceId/reference here?

### parameters

for things that need to change per env, where possible combine in variables section not inline to avoid repetition

### concat

combine strings safely

### replace

useful for storage accounts due to differing naming conventions

### ResourceId

- Used to lookup the id/name
- e.g. [resourceId(parameters('sharedGroupName'), 'Microsoft.Web/serverfarms', parameters('sharedPlanName'))]

### reference

- [resourceId(parameters('sharedGroupName'), 'Microsoft.Web/serverfarms', parameters('sharedPlanName'))]
