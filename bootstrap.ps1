$download_url = 'https://opscode-omnibus-packages.s3.amazonaws.com/windows/2008r2/x86_64/chef-client-12.4.1-1.msi'

(New-Object System.Net.WebClient).DownloadFile($download_url, 'C:\\Windows\\Temp\\chef-client.msi')
Start-Process 'msiexec' -ArgumentList '/qb /i C:\\Windows\\Temp\\chef-client.msi' -NoNewWindow -Wait

# Replace with your validator pem.
# Can it be echoed out via the script or somehow obscured so that its not transferred/available in plain text?

$validator_download_url = 'http://192.168.33.110:8080/test-validator.pem'

(New-Object System.Net.WebClient).DownloadFile($validator_download_url, 'C:\\chef\\validator.pem')

$client_rb = 'http://192.168.33.110:8080/client.rb'
(New-Object System.Net.WebClient).DownloadFile($client_rb, 'C:\\chef\\client.rb')

Start-Process 'C:\\opscode\\chef\\bin\\chef-client'
