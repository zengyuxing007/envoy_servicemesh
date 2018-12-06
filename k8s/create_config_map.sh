kubectl create configmap sidecar-config-b --from-file=envoy-config=../service_b/envoy-config.yaml -n sm
kubectl create configmap sidecar-config-c --from-file=envoy-config=../service_c/envoy-config.yaml -n sm
