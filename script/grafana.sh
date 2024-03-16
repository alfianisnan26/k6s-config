DEFAULT_RELEASE="grafana"
DEFAULT_REPO="oci://registry-1.docker.io/bitnamicharts/grafana"
DEFAULT_VALUES="values/grafana-values.yaml"

helm upgrade --install ${RELEASE:-${DEFAULT_RELEASE}} ${REPO:-${DEFAULT_REPO}} \
    --values=${VALUES:-${DEFAULT_VALUES}}

