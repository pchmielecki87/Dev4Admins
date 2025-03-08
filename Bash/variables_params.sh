#!/bin/bash

# VARIABLES #########################################################################################

  VAR1="This is an internal variable"
  VAR2=42

  PACKAGES_2BINSTALLED=(
      apr-devel2
      apr-util
      apr-util-devel
      at
  )

  ## Internal variables
  echo "VAR1: $VAR1"
  echo "VAR2: $VAR2"

  ## List packages
  for package in "${PACKAGES_2BINSTALLED[@]}"; do
      echo "Create folder and download package $package with dependencies"
      mkdir "$package" && cd "$_"
      touch $package
      for package in *; do
          echo "Pushing downloaded package $package to Nexus"
          #curl -u $USER:$APIKEY -T $package $NEXUS_URL/$package
      done
      cd ..
  done

  ## List special variables
  echo ""
  echo "Special variables:"
  echo "Script name ( \$0 ): $0"
  echo "First parameter ( \$1 ): $1"
  echo "Second parameter ( \$2 ): $2"
  echo "All parameters ( \$@ ): $@"
  echo "All parameters as single string ( \$* ): $*"
  echo "Number of parameters ( \$# ): $#"

  ## Export environment variables if you want to see environment variables as well
  echo ""
  echo "Environment variables:"
  echo "HOME: $HOME"
  echo "USER: $USER"
  echo "PATH: $PATH"

# PARAMS ############################################################################################

  ## Print all parameters passed to the script
  echo "Parameters passed to the script:"
  for param in "$@"; do
    echo "$param"
  done

  ## Number of parameters
  echo "Total number of parameters: $#"
