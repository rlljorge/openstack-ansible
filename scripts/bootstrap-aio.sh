#!/usr/bin/env bash
#
# Copyright 2014, Rackspace US, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

## Shell Opts ----------------------------------------------------------------
set -e -u -x

## Variables -----------------------------------------------------------------
# Extra options to pass to the AIO bootstrap process
export BOOTSTRAP_OPTS=${BOOTSTRAP_OPTS:-''}

## Main ----------------------------------------------------------------------

# Run AIO bootstrap playbook
pushd tests
  ansible-playbook -i test-inventory.ini \
                   -e "${BOOTSTRAP_OPTS}" \
                   bootstrap-aio.yml
popd

