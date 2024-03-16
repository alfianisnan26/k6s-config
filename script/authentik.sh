DEFAULT_RELEASE="authentik"
DEFAULT_REPO="authentik/authentik"
DEFAULT_VALUES="values/authentik-values.yaml"
DEFAULT_NAMESPACE="authentik"

helm upgrade --install ${RELEASE:-${DEFAULT_RELEASE}} ${REPO:-${DEFAULT_REPO}} \
    --values=${VALUES:-${DEFAULT_VALUES}} \
    --namespace=${NAMESPACE:-${DEFAULT_NAMESPACE}} \
    --create-namespace

