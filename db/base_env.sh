db_user="charging-station-application"
db_password="charging-station-application"
db_name="charging-station-application-dev"
db_host="127.0.0.1"
db_port="5432"
profile_name=""

mvn_cmd_opts=""


while [ $# -gt 0 ]; do
  name="$1"
  value="$2"

  case "$name" in
    --db-user)
      db_user="$value"
      ;;

    --db-password)
      db_password="$value"
      ;;

    --db-name)
      db_name="$value"
      ;;

    --db-host)
      db_host="${value}"
      ;;

    --db-port)
      db_port="$value"
      ;;

    --db-profile)
      profile_name="$value"
      ;;

  esac
  shift 2
done

if [ "X${profile_name}" == "X" ]; then
  export cmd_opts="-Dflyway.user=${db_user} -Dflyway.password=${db_password} -Dflyway.url=jdbc:postgresql://${db_host}:${db_port}/${db_name}"
else
  export cmd_opts="-P${profile_name}"
fi

echo "cmd_opts=${cmd_opts}"