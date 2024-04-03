# Login to your Azure account
Connect-AzAccount

# Select the subscription to use
Select-AzSubscription -SubscriptionName "your-subscription-name"

# Create a resource group
New-AzResourceGroup -Name "myResourceGroup" -Location "East US"

# Create a storage account
New-AzStorageAccount -ResourceGroupName "myResourceGroup" -Name "mystorageaccount" -Location "East US" -SkuName "Standard_LRS" -Kind "StorageV2"