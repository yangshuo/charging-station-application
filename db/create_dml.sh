#!/bin/bash
script_dir=$(cd "$(dirname "$0")"; pwd)
script_path="${script_dir}/src/main/resources/db/migration/V$(date +"%Y%m%d%H%M%S")__dml.sql"
touch "${script_path}"

echo "ddl file ${script_path} created"