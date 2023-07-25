# kube-debug
Dockerfile for debugging networking in Kubernetes

`k run -i --tty --rm debug --image=permutation/kube-debug --restart=Never -- /bin/sh`

If istio is used and you want to start the container without sidecar injection

`kubectl run -i --tty --rm debug --image=permutation/kube-debug --restart=Never --overrides='{"spec":{"template":{"metadata":{"annotations":{"sidecar.istio.io/inject":"false"}}}}}' -- /bin/sh`
