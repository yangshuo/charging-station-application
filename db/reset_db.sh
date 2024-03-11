#!/bin/bash
script_dir=$(cd "$(dirname "$0")"; pwd)
source "${script_dir}/base_env.sh"

pushd "$(pwd)"
cd "${script_dir}"


cmd="mvn ${cmd_opts} flyway:clean flyway:migrate"
echo "cmd=${cmd}"
$cmd

popd
