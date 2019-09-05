# Spring Music on Kubernetes with Digital Ocean PostgreSQL

This example shows how you can use `Porter` to create a CNAB bundle that will use `s3cmd` to first make a new Space on Digital Ocean, use `Terraform` to provision a PostgreSQL Database Cluster, and deploy [Spring Music]() to a Kubernetes cluster with `Helm`. When `Terraform` is run, it will use the Space created by `s3cmd` as a backend, in order to store the TF state file. When `Helm` is used to deploy Spring Music, it will use the database connection information generated by the `Terraform` apply! This example shows how multiple tools can be chained together to deploy a Cloud Native Application.

This repo also contains an example GitHub action configuration `.github/workflows/main.yml` that shows how you might use `Porter` to build and publish the CNAB bundle to a Docker Registry!

## Try it Out Yourself

### Prerequisites

In order to try this out yourself, you'll first need to install `Porter`. Please see the [installation](https://porter.sh/install/) instructions for the steps needed to do that. You'll need to have [Docker installed](https://docs.docker.com/install/) in order to use `Porter`, and you'll also need a Digital Ocean [account](https://cloud.digitalocean.com/registrations/new).

Once you have the account, you'll need to create an [access token](https://www.digitalocean.com/docs/api/create-personal-access-token/) and generate a [Spaces API Key](https://www.digitalocean.com/community/tutorials/how-to-create-a-digitalocean-space-and-api-key).

Next, you'll need a Kubernetes cluster and a `kubeconfig` file. You can use [AKS](https://docs.microsoft.com/en-us/azure/aks/kubernetes-walkthrough-portal), [Digital Ocean](https://www.digitalocean.com/products/kubernetes/), any other Kubernetes cluster, as long as it can successfully create a service of type LoadBalancer with an Ingress IP.

