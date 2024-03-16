DEFAULT_RELEASE="minio"
DEFAULT_REPO="oci://registry-1.docker.io/bitnamicharts/minio"
DEFAULT_VALUES="values/minio-values.yaml"

helm upgrade --install ${RELEASE:-${DEFAULT_RELEASE}} ${REPO:-${DEFAULT_REPO}} \
    --values=${VALUES:-${DEFAULT_VALUES}}