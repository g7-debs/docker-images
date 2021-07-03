#!/bin/bash
#
# Quick and dirty signer
#

set -e

echo "${GPG_STAGINGPRODUCTION_SIGNING_KEY}" | gpg --import
exec debsign -kD1F293DC4B9A26D8F47165AC22BA9AC4E60A4A9C *.changes
