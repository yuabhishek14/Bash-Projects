#!/bin/bash

echo "Enter the Package Name"
read package_name

echo "*************************"
echo "Searching for package:$package_name"

yum search $package_name