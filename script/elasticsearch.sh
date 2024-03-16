DEFAULT_RELEASE="elasticsearch"
DEFAULT_REPO="oci://registry-1.docker.io/bitnamicharts/elasticsearch"
DEFAULT_VALUES="values/elasticsearch-values.yaml"
DEFAULT_NAMESPACE="elasticsearch"

helm upgrade --install ${RELEASE:-${DEFAULT_RELEASE}} ${REPO:-${DEFAULT_REPO}} \
    --values=${VALUES:-${DEFAULT_VALUES}} \
    --namespace=${NAMESPACE:-${DEFAULT_NAMESPACE}} \
    --create-namespace
