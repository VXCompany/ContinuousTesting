targetScope = 'subscription'

param location string = 'westeurope'

resource symbolicname 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: 'ct1'
  location: location
  properties: {}
}
