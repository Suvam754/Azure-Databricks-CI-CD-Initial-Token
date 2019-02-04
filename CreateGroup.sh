#!/bin/sh
DatabricksToken=$1

curl -n \
-H "Content-Type: application/json" \
-H "Authorization: Bearer $DatabricksToken" \
-X POST -d @- https://westus.azuredatabricks.net/api/2.0/groups/create <<JSON
{
    "group_name": "VSTSGroup"
}
JSON

curl -X GET  https://westus.azuredatabricks.net/api/2.0/groups/list  \
-H "Content-Type: application/json" \
-H "Authorization: Bearer $DatabricksToken" 
