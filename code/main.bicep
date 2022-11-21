param storageAccountName string = 'sa18112022ct'
param location string = resourceGroup().location

resource stg 'Microsoft.Storage/storageAccounts@2022-05-01' = {
  name: storageAccountName
  location: location
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
}

module df 'datafactory.bicep' = {
  name: 'datafactory2'
  params:{
    location:location
    storageAccountName:storageAccountName
  }
}
