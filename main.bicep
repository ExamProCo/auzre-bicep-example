param location string = resourceGroup().location
param storageAccountName string = 'bicep${uniqueString(resourceGroup().id)}'

resource storageAccountAB 'Microsoft.Storage/storageAccounts@2021-06-01' = {
  name: storageAccountName
  location: location
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
  properties: {
    accessTier: 'Hot'
  }
}
