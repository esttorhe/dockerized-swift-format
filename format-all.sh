#!/bin/bash

set -e

find /source -name "*.swift" -exec swift-format -in-place {} \;
