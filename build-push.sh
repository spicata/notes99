#!/bin/bash

green='\033[0;32m'
clear='\033[0m'

echo -e "${green}# Building...${clear}"
bundle exec jekyll build --destination docs/
echo -e "${green}# Adding...${clear}"
git add docs/
echo -e "${green}# Committing...${clear}"
git ss
read -p $'\e[31m> Commit name: \e[0m' name
git cm "${name}"
echo -e "${green}# Pushing...${clear}"
git push
