DEFAULT_RELEASE="pgadmin"
DEFAULT_REPO="runix/pgadmin4"
DEFAULT_VALUES="values/pgadmin-values.yaml"
DEFAULT_NAMESPACE="postgresql"

helm upgrade --install ${RELEASE:-${DEFAULT_RELEASE}} ${REPO:-${DEFAULT_REPO}} \
    --values=${VALUES:-${DEFAULT_VALUES}} \
    --namespace=${NAMESPACE:-${DEFAULT_NAMESPACE}} \
    --create-namespace