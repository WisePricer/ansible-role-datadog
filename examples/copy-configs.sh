#!/bin/bash

for d in $(ls -1 ../..); do
  if [ -f ../../${d}/tasks/monitoring.yml ]; then
    cp ../../${d}/tasks/monitoring.yml ${d}.yml
  fi
  if [ -f ../../${d}/vars/monitoring.yml ]; then
    cp ../../${d}/vars/monitoring.yml ${d}-vars.yml
  fi
done
