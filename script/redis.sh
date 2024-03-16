DEFAULT_RELEASE="redis-cluster"
DEFAULT_REPO="oci://registry-1.docker.io/bitnamicharts/redis-cluster"
DEFAULT_VALUES="values/redis-values.yaml"
DEFAULT_NAMESPACE="redis"
DEFAULT_VERSION="8.2.7"

helm upgrade --install ${RELEASE:-${DEFAULT_RELEASE}} ${REPO:-${DEFAULT_REPO}} \
    --values=${VALUES:-${DEFAULT_VALUES}} \
    --namespace=${NAMESPACE:-${DEFAULT_NAMESPACE}} \
    --version=${VERSION:-${DEFAULT_VERSION}}
    --create-namespace

