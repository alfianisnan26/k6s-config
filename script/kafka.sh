DEFAULT_RELEASE="kafka"
DEFAULT_REPO="oci://registry-1.docker.io/bitnamicharts/kafka"
DEFAULT_VALUES="values/kafka-values.yaml"
DEFAULT_NAMESPACE="kafka"

helm upgrade --install ${RELEASE:-${DEFAULT_RELEASE}} ${REPO:-${DEFAULT_REPO}} \
    --values=${VALUES:-${DEFAULT_VALUES}} \
    --namespace=${NAMESPACE:-${DEFAULT_NAMESPACE}} \
    --create-namespace