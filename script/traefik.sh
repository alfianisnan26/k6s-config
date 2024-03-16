DEFAULT_RELEASE="traefik"
DEFAULT_REPO="https://traefik.github.io/charts"
DEFAULT_VALUES="values/traefik-values.yaml"
DEFAULT_NAMESPACE="network"

helm upgrade --install ${RELEASE:-${DEFAULT_RELEASE}} ${REPO:-${DEFAULT_REPO}} \
    --values=${VALUES:-${DEFAULT_VALUES}} \
    --namespace=${NAMESPACE:-${DEFAULT_NAMESPACE}} \
    --create-namespace
