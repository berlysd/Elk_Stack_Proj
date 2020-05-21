## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

[network_diagram](https://github.com/berlysd/Elk_Stack_Proj/blob/master/Diagrams/Elk_Stack_Project_Diagram.png)

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the playbook file may be used to install only certain pieces of it, such as Filebeat.

  
  [Web VM Playbook](https://github.com/berlysd/Elk_Stack_Proj/blob/master/Ansible/Ansible_Config.yml)
  [Install Elk](https://github.com/berlysd/Elk_Stack_Proj/blob/master/Ansible/install-elk.yml)
  [Filebeat Playbook](https://github.com/berlysd/Elk_Stack_Proj/blob/master/Ansible/Filebeat_Configuration.yml)
  [Metricbeat Playbook](https://github.com/berlysd/Elk_Stack_Proj/blob/master/Ansible/pentest.yml)


This document contains the following details:
- Description of the Topology
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly will be highly persistent and available, in addition to restricting access to the network.

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the logs and system files.
- Filebeat monitors log files or locations that I specify, collects log events, and forwards them to elasticsearch.
- Metric beat records metrics from the operating system and from services running on the server.







The configuration details of each machine may be found below.

| Name     | Function | IP Address | Operating System |
|----------|----------|------------|------------------|
| Jump Box | Gateway  | 10.0.0.1   | Linux            |
| DVWA-VM1 | PenTest  | 10.0.0.5   | Linux            |
|Elk-Server| Monitor  | 10.0.0.7   | Linux            |

### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the ELK-Server machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:
- 73.150.244.72

Machines within the network can only be accessed by SSH.

A summary of the access policies in place can be found in the table below.

| Name     | Publicly Accessible | Allowed IP Addresses |
|----------|---------------------|----------------------|
| Jump Box | Yes                 | Any machine, SSH     |
| DVWA1    | No                  | 10.0.0.5             |
|Elk-Server| Yes                 | 73.150.244.72        |


### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because...
-ansible playbooks are used because they are can be repeated and they are reliable. It saves a lot of time because you donÕt have to continue to input commands but also is consistent with different Virtual Machines. 

The playbook implements the following tasks:
-Installs Docker
- Can install python tools using pip
-Downloads python docker interface using pip
- Docker-Elk container and specifies mappings on the port
-Increases the virtual machines memory

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

[Docker PS](https://github.com/berlysd/Elk_Stack_Proj/blob/master/Diagrams/Screen%20Shot%202020-05-20%20at%2011.53.49%20PM.png)

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
- 10.0.0.7

We have installed the following Beats on these machines:
- Filebeat
- Metricbeat

These Beats allow us to collect the following information from each machine:
- Filebeat monitors files and collects data of event logs and file system. Data forwarded to elacsticsearch and logstash.
- Metricbeat collects the metrics that could include usage and memory and sends all of that information and data to elasticsearch and logstash.

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the install-elk.yml file to /etc/ansible.
- Update the host file to include the IPÕs of the machines you are configuring.
- Run the playbook, and navigate to http://{Elk VM IP}.5601/ to check that the installation worked as expected.

- Playbooks are in filebeat.yml and metricbeat.yml
- Files copied to /etc/filebeat/filebeat/yml and /etc/metricbeat/metricbeat.yml

- Which file do you update to make Ansible run the playbook on a specific machine? How do I specify which machine to install the ELK server on versus which to install Filebeat on?_
- File that is updated to make Ansible run the playbook on a specific machine is /etc/ansible/hosts (add the machine IP) Config for filebeat files and metricbeat files updated with the specific IP address of the VM.

- Which URL do you navigate to in order to check that the ELK server is running?
- http://[elk-vm public up]:5601 if it works it should take you to the Kibana dashboard.
[Kibana Dashboard](https://github.com/berlysd/Elk_Stack_Proj/blob/master/Diagrams/Kibana%20Module%20Status.png)

