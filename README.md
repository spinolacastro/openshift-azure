Openshift Origin Azure
======================

This is a simple template that helps you start using Openshift Origin (https://github.com/openshift/origin).

The following Resources will be created:
* Virtual Network, Subnets and Network Security Groups
* Virtual Machines
* Storage Account
* Virtual NIC

Deploy:
----------------------
To deploy, create you Azure Subscription and install the CLI (https://azure.microsoft.com/en-us/documentation/articles/xplat-cli-install/)


$ azure group create <RESOURCE_GROUP> -i <LOCATION>

$ azure group deployment create -f origin.json -g <RESOURCE_GROUP>


Your will be asked to provide `dnsLabelPrefix` and `sshPassword` parameters.

Your ssh connection string will appear at the end of deployment!