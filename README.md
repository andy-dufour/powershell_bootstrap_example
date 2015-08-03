# powershell_bootstrap_example

This is a simple example showing how you could bootstrap your Windows nodes with a power shell login script or another executor method instead of through knife/WinRM.

There are really three simple things you need to have a successful node registration using Chef.

1. Chef-client installed.
2. An organizations validator key and name (or a users name/private key for validator-less registration) [C:\chef\validator.pem]
3. A client.rb that points to your chef-server [C:\chef\client.rb]

Once these things are in place then chef-client will run, realize there is no client private key located at [C:\chef\client.pem] and generate one for itself using the validator key and settings in your client.rb file.

This is merely an example script. By no means do I suggest its a good idea to publish your organizations validator key on a web server with no auth and download it. If you have another means to acquire your validator key and get it to your node you should use that.
