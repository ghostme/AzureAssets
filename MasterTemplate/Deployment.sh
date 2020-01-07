sasToken=$(az storage container generate-sas --account-name dccshsrgdiag907 --https-only --expiry `date -d '60 minutes' '+%Y-%m-%dT%H:%MZ'` --name landingzone --permissions r -o tsv)
az deployment create --location CanadaCentral --template-uri https://dccshsrgdiag907.blob.core.windows.net/landingzone/MasterTemplate/MasterTemplate.json?$sasToken --parameters https://dccshsrgdiag907.blob.core.windows.net/landingzone/MasterTemplate/parameters.json?$sasToken
