#!/bin/bash

LENGTH=16
PASSWORD=$(< /dev/urandom tr -dc 'A-Za-z0-9@#$%&*?' | head -c $LENGTH)

echo "🔐 Generated password: $PASSWORD"
