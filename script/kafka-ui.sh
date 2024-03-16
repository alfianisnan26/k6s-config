DEFAULT_RELEASE="kafka-ui"
DEFAULT_REPO="kafka-ui/kafka-ui"
DEFAULT_VALUES="values/kafka-ui-values.yaml"
DEFAULT_NAMESPACE="kafka"

helm upgrade --install ${RELEASE:-${DEFAULT_RELEASE}} ${REPO:-${DEFAULT_REPO}} \
    --values=${VALUES:-${DEFAULT_VALUES}} \
    --namespace=${NAMESPACE:-${DEFAULT_NAMESPACE}} \
    --create-namespace