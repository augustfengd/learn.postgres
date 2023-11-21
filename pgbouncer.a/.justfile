default:
    @just --list | grep --invert default

setup:
    kind create cluster

apply:
    kubectl --context kind-kind apply -f manifests/

clean:
  kind delete cluster
