# StreamShift

Simple OpenShift-based DevOps stack for developing data streaming applications on AWS.

## Playbooks 

All playbooks are dedicated for Fedora 25.

- [Firewall](https://github.com/hekonsek/streamshift/tree/master/firewall) - ensures that firewall is installed, running and accepts only SSH traffic
- [Docker](https://github.com/hekonsek/streamshift/tree/master/docker) - ensures that Docker engine is installed, up and running 
- [OpenShift](https://github.com/hekonsek/streamshift/tree/master/openshift) - ensures that OpenShift Origin 1.5.1 services are
- [OpenShift login](https://github.com/hekonsek/streamshift/tree/master/openshift-login) - uses `oc` client to log into OpenShift. Also ensures that
`streamshift` project has been created.
- [OpenShift uninstall](https://github.com/hekonsek/streamshift/tree/master/openshift-uninstall) - removes OpenShift (including state and configuration)
installed with the OpenShift playbook.
- [ZooKeeper](https://github.com/hekonsek/streamshift/tree/master/zookeeper) - ensures that ZooKeeper service is provisioned in OpenShift
- [Kafka](https://github.com/hekonsek/streamshift/tree/master/kafka) - ensures that Kafka service is provisioned in OpenShift 
- [MongoDB](https://github.com/hekonsek/streamshift/tree/master/mongo) - ensures that MongoDB service is provisioned in OpenShift

### AWS EC2 playbook

StreamShift also provides playbook which can be used to provision Fedora 25 on AWS EC2. 
[AWS playbook](https://github.com/hekonsek/streamshift/tree/master/aws) ensures that Fedora 25 AWS EC2 node is provisioned and started.

Default instance size is T2 medium (i.e. 4 GB of RAM) - in order to change it, override `instance_type` Ansible variable (for example `instance_type=t2.large`).

Keep in mind that Ansible EC2 module requires you to have Boto installed: 

    sudo pip install -U boto

You can specify AWS credentials either in Boto file (for example `~/.boto`) or using environment variables:
    
AWS_ACCESS_KEY_ID='yourKeyId' AWS_SECRET_ACCESS_KEY='yourSecretKey' ansible-playbook aws.yml

## Installation

In order to install StreamShift execute the following command:

    git clone git@github.com:hekonsek/streamshift.git
    ansible-playbook aws/aws.yml
    ansible-playbook streamshift/streamshift.yml

Now ssh into provisioned EC2 Fedora instance and try to log in into OpenShift using default admin credentials
(username `admin` and password `admin`):

```
$ oc login
Authentication required for https://localhost:8443 (openshift)
Username: admin
Password: 
Login successful.
```

If you are not happy with your OpenShift installation (for example if you would like to re-provision it), execute uninstall playbook:

    ansible-playbook streamshift/openshift-uninstall/openshift-uninstall.yml
 