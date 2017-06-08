# StreamShift

Simple OpenShift-based DevOps stack for developing data streaming applications.

## Playbooks 

All playbooks have been tested against Fedora 25, but should work on any Systemd-friendly Linux box.

- [OpenShift](https://github.com/hekonsek/streamshift/tree/master/openshift) - ensures that Docker and OpenShift Origin 1.5.1 services are
installed and running.
- [OpenShift uninstall](https://github.com/hekonsek/streamshift/tree/master/openshift-uninstall) - removes OpenShift (including state and configuration)
installed with the OpenShift playbook.

## Executing playbooks

In order to execute given playbook download the project and use `ansible-playbook` command. For example to
install OpenShift:

    git clone git@github.com:hekonsek/streamshift.git
    ansible-playbook openshift/openshift.yml
