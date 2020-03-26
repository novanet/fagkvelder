# RESOURCE GROUP AND RESOURCE NAME AS VARIABLES
RESOURCE_GROUP=atlas-dev-rg
RESOURCE_NAME=atlas-dev-insights

# LIST RESOURCES
az resource list -g $RESOURCE_GROUP -n $RESOURCE_NAME 

# QUERY RESOURCE
az resource show -g $RESOURCE_GROUP -n $RESOURCE_NAME --resource-type microsoft.insights/components

# QUERY RESOURCE PROPERTIES
az resource show -g $RESOURCE_GROUP -n $RESOURCE_NAME --resource-type microsoft.insights/components --query "properties"

# EXTRACT VALUE
az resource show -g $RESOURCE_GROUP -n $RESOURCE_NAME --resource-type microsoft.insights/components --query "properties.InstrumentationKey"
