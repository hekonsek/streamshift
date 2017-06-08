# StreamShift

Simple OpenShift-based DevOps stack for developing data streaming applications.

## Playbooks 

All playbooks have been tested against Fedora 25, but should work on any Systemd-friendly Linux box.

- [OpenShift](https://github.com/hekonsek/streamshift/tree/master/openshift) - ensures that Docker and OpenShift Origin 1.5.1 services are
installed and running. Playbook also installs OpenShift `oc` client.
- [OpenShift uninstall](https://github.com/hekonsek/streamshift/tree/master/openshift-uninstall) - removes OpenShift (including state and configuration)
installed with the OpenShift playbook.

## Executing playbooks

In order to install OpenShift on target machines, execute the following command:

    git clone git@github.com:hekonsek/streamshift.git
    ansible-playbook streamshift/openshift/openshift.yml

Now try to log in into OpenShift using default admin credentials (username `admin` and password `admin`):

```
$ oc login
Authentication required for https://localhost:8443 (openshift)
Username: admin
Password: 
Login successful.
```

If you are not happy with your OpenShift installation (for example if you would like to re-provision it), execute uninstall playbook:

    ansible-playbook streamshift/openshift-uninstall/openshift-uninstall.yml
 