#!/bin/bash

rm -f index.rs2f
cat modules.txt | while read line || [[ -n $line ]]; do
  cat $line/module.rs2f >> index.rs2f
done
