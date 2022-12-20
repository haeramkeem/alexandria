# The Great Library of Alexandria for Cloud Native Documents

## Migration history

- The following repositories has been migrated since Dec 20, 2022.
1. haeramkeem/yammy
2. haeramkeem/terraform-iac
3. haeramkeem/multidockers

## Index

- **workload-examples/**: Example manifest for K8s workloads
- **app-installations/**: App installation manifests
- **helm-values/**: Pre-defined helm values

## Usage

For creating workloads or applications:

```bash
kubectl (create|apply) -f https://raw.githubusercontent.com/haeramkeem/yammy/main/path/to/manifest.yaml
```

To use a predefined helm values:

```bash
helm install ${RELEASE} ${CHART} -f https://raw.githubusercontent.com/haeramkeem/yammy/main/helm-values/path/to/values.yaml
```
