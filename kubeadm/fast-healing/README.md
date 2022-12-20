# Configure cluster to heal pods more faster for node-failure

Source: [kubespray docs](https://github.com/kubernetes-sigs/kubespray/blob/master/docs/kubernetes-reliability.md)

## Kubelet

- Set `--node-status-update-frequency` to 4s (10s is default).

## Kube-controller-manager

- Set `--node-monitor-period` to 2s (5s is default).
- Set `--node-monitor-grace-period` to 20s (40s is default).

## API Server

- Set `--default-not-ready-toleration-seconds` and `--default-unreachable-toleration-seconds` to 30 (300 seconds is default).
- Note these two values should be integers representing the number of seconds ("s" or "m" for seconds\minutes are not specified).
