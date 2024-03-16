DEFAULT_RELEASE=""
DEFAULT_REPO=""
DEFAULT_VALUES=""
DEFAULT_NAMESPACE="default"

helm upgrade --install ${RELEASE:-${DEFAULT_RELEASE}} ${REPO:-${DEFAULT_REPO}} \
    --values=${VALUES:-${DEFAULT_VALUES}} \
    --namespace${NAMESPACE:-${DEFAULT_NAMESPACE}} \
    --create-namespace