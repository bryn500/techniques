# Azure logs query examples

## Custom events

```vbnet
customEvents
| where name == "###"
| count
```

## Convert Field

```vbnet
customEvents
| extend field_name = toint(customDimensions["field name"])
| where field_name > 1
| count
```

## WAF Blocks

```vbnet
AzureDiagnostics 
| where ResourceProvider == "MICROSOFT.NETWORK" and Category == "ApplicationGatewayFirewallLog"
and requestUri_s == "/path/"
```
