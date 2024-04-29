#!/bin/bash

package=notexits

sudo apt install $package

echo "The exit code for the package install is: $?"


