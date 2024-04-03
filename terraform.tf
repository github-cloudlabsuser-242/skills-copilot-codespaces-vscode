# Create a virtual network
az network vnet create \
  --name myVNet \
  --resource-group myResourceGroup \
  --location eastus \
  --address-prefix 10.0.0.0/16 \
  --subnet-name mySubnet \
  --subnet-prefix 10.0.0.0/24

# Create a storage account
az storage account create \
  --name mystorageaccount \
  --resource-group myResourceGroup \
  --location eastus \
  --sku Standard_LRS \
  --kind StorageV2

# Enable service endpoint for 'Microsoft.Storage' on the subnet
az network vnet subnet update \
  --name mySubnet \
  --resource-group myResourceGroup \
  --vnet-name myVNet \
  --service-endpoints Microsoft.Storage