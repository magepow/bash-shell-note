#!/bin/bash
# https://shapeshed.com/unix-sort/

find . -type f -not -path '*/.*' -name "*.sql" | sort --version-sort --ignore-case | sed 's|^./||'