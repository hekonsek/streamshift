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

## Installation

In order to install StreamShift execute the following command:

    git clone git@github.com:hekonsek/streamshift.git
    AWS_ACCESS_KEY_ID='yourKeyId' AWS_SECRET_ACCESS_KEY='yourSecretKey' ansible-playbook aws.yml
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
 