DEFAULT_RELEASE="kube-prometheus"
DEFAULT_REPO="prometheus-community/kube-prometheus-stack"
DEFAULT_VALUES="values/kube-prometheus-values.yaml"

helm upgrade --install ${RELEASE:-${DEFAULT_RELEASE}} ${REPO:-${DEFAULT_REPO}} \
    --values=${VALUES:-${DEFAULT_VALUES}}
