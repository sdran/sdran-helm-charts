Welcome to the open source release version 1.1.1 of ONF's SD-RAN project. Please note that this is a read only release of the source code. We will not be accepting pull requests in these repos, and the source code that is contained here cannot be used to build functional binaries because it refers back to a number of private repositories. But executables - docker containers referencing the released code - are available on Docker Hub and referenced [here](https://wiki.opennetworking.org/display/COM/SD-RAN+1.1+Release).  SD-RAN is currently a member-only project, and ONF membership is required to access the most current release, the master branch, and to do development with SD-RAN.

# ONOS SDRAN Helm charts

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://github.com/gojp/goreportcard/blob/master/LICENSE)

This repository contains helm charts for the different µONOS services and
overarching helm charts for a set of microservices yielding a full control
plane deployment.

Each folder contains the helm chart of that specific project.
e.g. `onos-config` folder contains the `onos-config` helm chart.

The overarching helm chart to deploy `micro-onos` is in the `sd-ran` folder.

The `micro-onos` documentation project provides [step by step documentation](https://docs.onosproject.org/developers/deploy_with_helm/)
on how to deploy a whole `micro-onos` with Helm. You can also deploy each
service separately by following the the `How to deploy with Helm` documentation
contained in each service.
For example [this](https://docs.onosproject.org/onos-config/docs/deployment/) is the `onos-config` one.
