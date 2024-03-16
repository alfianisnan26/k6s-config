DEFAULT_RELEASE="postgresql-ha"
DEFAULT_REPO="oci://registry-1.docker.io/bitnamicharts/postgresql-ha"
DEFAULT_VALUES="values/postgres-values.yaml"
DEFAULT_NAMESPACE="postgresql"

PASSWORD=$(kubectl get secret --namespace "default" postgresql-ha-postgresql -o jsonpath="{.data.password}" | base64 -d)
REPMGR_PASSWORD=$(kubectl get secret --namespace "default" postgresql-ha-postgresql -o jsonpath="{.data.repmgr-password}" | base64 -d)
ADMIN_PASSWORD=$(kubectl get secret --namespace "default" postgresql-ha-pgpool -o jsonpath="{.data.admin-password}" | base64 -d)

helm upgrade --install ${RELEASE:-${DEFAULT_RELEASE}} ${REPO:-${DEFAULT_REPO}} \
    --values=${VALUES:-${DEFAULT_VALUES}} \
    --set postgresql.password=$PASSWORD \
    --set postgresql.repmgrPassword=$REPMGR_PASSWORD \
    --set pgpool.adminPassword=$ADMIN_PASSWORD \
    --namespace=${NAMESPACE:-${DEFAULT_NAMESPACE}} \
    --create-namespace

# TO CREATE USER
# CREATE USER alfianisnan26 WITH SUPERUSER PASSWORD 'Amanasaya253426';