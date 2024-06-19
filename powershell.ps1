# Conectar a la cuenta de Azure
Connect-AzAccount

# Definir variables
$resourceGroupName = "example-resources"
$location = "East US"
$storageAccountName = "mystorageaccount$(Get-Random)"
$skuName = "Standard_LRS" # Standard Locally-Redundant Storage

# Crear un grupo de recursos
New-AzResourceGroup -Name $resourceGroupName -Location $location

# Crear la cuenta de almacenamiento
New-AzStorageAccount -ResourceGroupName $resourceGroupName `
                     -Name $storageAccountName `
                     -Location $location `
                     -SkuName $skuName `
                     -Kind "StorageV2" # General-purpose v2 accounts